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
    <script>
        $(document).ready(function () {
            $("li[name='Navi6']").css("background-color", "#abe3e5");
        });
    </script>
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
            <input type="submit" class="inputBottom" value="发表帖子">
        </div>
    </div>
    <%@include file="../common-page/page-footer.jsp" %>
</form>
</body>
</html>

