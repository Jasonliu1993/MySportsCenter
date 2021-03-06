<%--
  Created by IntelliJ IDEA.
  User: Jason
  Date: 4/30/17
  Time: 22:47
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>My Sports Center 论坛</title>
    <link rel="stylesheet" href="../css/common-core.css">
    <link rel="stylesheet" href="../css/bbs/bbsForumDetailPage.css">
    <link rel="stylesheet" href="../css/bbs/pop-reply.css">
    <script type="text/JavaScript" charset="utf-8" src="/js/jquery-3.1.1.min.js"></script>
    <script type="text/javascript" charset="utf-8" src="/js/core-js.js"></script>
    <script charset="utf-8">
        $(document).ready(function () {
            $("li[name='Navi6']").css("background-color", "#abe3e5");
            $.setPagePilot(${currentPageNumber}, ${totalPageNumber});
        });
    </script>
    <style>

    </style>
</head>
<body style="background-color: #d5d5d5">
<%@include file="../common-page/page-header.jsp" %>
<div class="content">
    <ul class="mainList">
        <c:forEach items="${ForumContent}" varStatus="i" var="items">
            <li>
                    <%--<input type="hidden" id="forumContentID" value="123">--%>
                <span class="info">
                    <img src="${items.custom1}" alt="${items.createUser}">
                    <span class="infoName">${items.createUser}</span>
                </span>
                <span class="forumContent">
                    <div class="ForumContentComments">${items.orderId}楼</div>
                    <div class="mainForumContent">
                            ${items.forumContent}
                    </div>
                    <div class="replyForum">
                        <span class="datetime">${items.createDatetime}</span>
                        <a href="#" class="reply">回复</a>
                    </div>
                </span>
            </li>
        </c:forEach>
        <script>
            $("a[class='reply']").on("click", function () {
                $(this).parent().append('<div class="popReply">' +
                        '<form action="/sendNewForumContenrByReply.do" method="post" id="ReplyInputForm">' +
                        '<div class="replyTitle">' +
                        '<h3>回复主题</h3>' +
                        '<span class="shutButton"></span>' +
                        '</div>' +
                        '<div class="replyTheme"></div>' +
                        '<div class="replyContentArea">' +
                        '<textarea name="replyContent" id="replyContent"></textarea>' +
                        '</div>' +
                        '<div class="replySubmit">' +
                        '<input type="hidden" id = "forumThemeByReply" name = "forumThemeByReply" value="" />' +
                        '<input type="hidden" id = "currentPageByReply" name = "currentPageByReply" value="" />' +
                        '<button class="submitButton">回复</button>' +
                        '</div></form>' +
                        '</div>');

                var content = $(this).parent().prev(".mainForumContent").text().trim();
                if (content.length > 20) {
                    content = content.substr(0, 20) + "...";
                }
                $(".replyTheme").text("RE:" + content);
            });
            $(".forumContent").delegate(".popReply .replyTitle .shutButton", "click", function () {
                $(this).parent().parent().parent().remove(".popReply")
            });
            $(".forumContent").delegate(".popReply .replySubmit .submitButton", "click", function () {
                var content = "{[" + $(".replyTheme").text().trim() + "]}" + "{br}" + $("textarea[name='replyContent']").val();
                $("textarea[name='replyContent']").val(content);
                $("input[name='forumThemeByReply']").val($("input[name='forumTheme']").val());
                $("input[name='currentPageByReply']").val($("input[name='currentPage']").val());
                conLog(content);
                conLog($("input[name='forumTheme']").val());
                conLog($("input[name='currentPage']").val());
                $("#ReplyInputForm").submit();
            });
        </script>
    </ul>
</div>
<%--插入分页导航条 开始--%>
<%@include file="../common-page/pagePilot.jsp" %>
<%--插入分页导航条 结束--%>
<div class="inputArea">
    <form action="/sendNewForumContenr.do" method="post">
        <div class="contentArea">
            <span class="contentLabelArea">回复内容:</span>
            <div class="contentInputArea">
                <c:if test="${!empty sessionScope.userName}">
                    <div class="contentNotNoneInputArea">
                        <textarea name="contentArea" id="contentArea"></textarea>
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
            <input type="hidden" id="forumThemeID" name="forumThemeID" value="#">
        </div>
        <div class="submitArea">
            <input type="hidden" id="forumTheme" name="forumTheme" value="${ForumContent[0].forumThemeId}">
            <input type="hidden" id="currentPage" name="currentPage" value="${currentPageNumber}">
            <input type="submit" class="inputBottom" value="回复"/>
        </div>
    </form>
</div>
<%@include file="../common-page/page-footer.jsp" %>
</body>
</html>