<%--
  Created by IntelliJ IDEA.
  User: Jason
  Date: 4/23/17
  Time: 14:38
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>My Sports Center 论坛</title>
    <link rel="stylesheet" href="../css/common-core.css">
    <link rel="stylesheet" href="../css/bbs/bbsMainPage.css">
    <script src="../js/jquery-3.1.1.min.js"></script>
    <script src="../js/core-js.js"></script>
    <script>
        /*页面初始化*/
        $(document).ready(function () {
            $("li[name='Navi6']").css("background-color", "#abe3e5");
        });

        /*获取是否有新帖子*/
        function remindNewForum() {
            $.ajax({
                url: '/remindNewForum.do',
                type: "POST",//请求方式：get或post
                scriptCharset: 'utf-8',
                dataType: "json",//数据返回类型：xml、json、script
                cache: false,
                data: {
                    'currentDateTime': $("input[name=visitTime]").val()
                },//自定义提交的数据
                success: function (json) {
                    if (json !== null || json !== undefined || json !== '') {
                        if (json[0].flag == 'Y' ) {
                            if ( $(".remindNewForum").length <= 0 ) {
                                $(".content")[0].innerHTML = '<div class="remindNewForum" onclick="getNewForum();">有新回复的主题,点击查看</div>' + $(".content")[0].innerHTML
                            }
                        }
                    }
                },
                error: function (json) {
                    alert("This is Error!")
                }
            })
        }
        /*定时5秒执行一次*/
        setInterval('remindNewForum();', 5000);

        /*获取新帖子*/
        function getNewForum() {
            $.ajax({
                url: '/getNewForum.do',
                type: "POST",//请求方式：get或post
                scriptCharset: 'utf-8',
                dataType: "json",//数据返回类型：xml、json、script
                cache: false,
                data: {
                    'currentDateTime': $("input[name=visitTime]").val()
                },//自定义提交的数据
                success: function (json) {
                    if (json !== null || json !== undefined || json !== '') {
                        $("div[class=remindNewForum]").remove();
                        for (var i = 0; i < json.length; i++) {
                            var varCode = json[i].id;
                            var obj = $(".mainList a[href$='" + varCode + "']");
                            var varHref = obj.attr("href");
                            obj.parent().parent().remove();
                            $(".mainList")[0].innerHTML = '<li style="background-Color: #f2eee4;">' +
                                '<span class="forumTheme">' +
                                    '<a href="' + varHref.substring(0,varHref.length - 11) + varCode + '">' + json[i].forumTheme + '</a>' +
                                '</span>' +
                                '<span class="postArea">' +
                                '<span class="poster">' + json[i].forumCreaterRefId + '</span>' +
                                '<span class="postTime">' + json[i].postDatetime + '</span>' +
                                '</span>' +
                                '<span class="replyArea">' +
                                '<span class="replier">' + json[i].custom1 + '</span>' +
                                '<span class="replyTime">' + json[i].custom2 + '</span>' +
                                '</span>' +
                                '</li>' + $(".mainList")[0].innerHTML;

                            if (i == 0) {
                                $("input[name=visitTime]").val(json[i].custom2) ;
                            }
                        }
                    }
                },
                error: function (json) {
                    alert("This is Error!")
                }
            })
        }

    </script>
    <style>

    </style>
</head>
<body>
<%@include file="../common-page/page-header.jsp" %>
<div class="content">
    <ul class="mainList">
        <c:forEach items="${ForumTheme}" varStatus="i" var="items">
            <li>
                <span class="forumTheme">
                    <%--<a href="/SendForumController?type=n&page=0&themeID=<%=forumTheme.getID()%>"><%=forumTheme.getForumTheme()%></a>--%>
                    <a href="/forumDetail.do?Id=${items.id}">${items.forumTheme}</a>
                </span>
                <span class="postArea">
                    <span class="poster">${items.forumCreaterRefId}</span>
                    <span class="postTime">${items.postDatetime}</span>
                </span>
                <span class="replyArea">
                    <span class="replier">${items.custom1}</span>
                    <span class="replyTime">${items.custom2}</span>
                </span>
            </li>
        </c:forEach>
    </ul>
</div>
<form action="/sendNewForum.do?action=postForum" method="post">
    <div class="inputArea">
        <div class="themeArea">
                <span class="themeLabelArea">
                    <label for="theme" style="color:white">主题:</label>
                </span>
                <span class="themeInputArea">
                    <input type="text" name="theme" id="theme">
                </span>
        </div>
        <div class="contentArea">
            <span class="contentLabelArea"></span>
            <%--<textarea name="contentArea" id="contentArea" class="contentInputArea"></textarea>--%>
            <div class="contentInputArea">
                <c:if test="${!empty sessionScope.userName}">
                    <div class="contentNotNoneInputArea">
                        <textarea name="contentArea" id="contentArea" ></textarea>
                    </div>
                </c:if>
                <c:if test="${empty sessionScope.userName}">
                    <div class="contentNoneInputArea">
                        请先登录:
                        <a href="/login/login.jsp">登录</a>
                        <a href="/login/register.html">注册</a>
                    </div>
                </c:if>
            </div>
        </div>
        <div class="submitArea">
            <input type="hidden" value="${visitTime}" id="visitTime" name="visitTime" />
            <input type="submit" class="inputBottom" value="发表帖子">
        </div>
    </div>
    <%@include file="../common-page/page-footer.jsp" %>
</form>
</body>
</html>

