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
    <script type="text/JavaScript" charset="utf-8" src="/js/jquery-3.1.1.min.js"></script>
    <script charset="utf-8">
        $(document).ready(function () {
            $("li[name='Navi6']").css("background-color", "#abe3e5");
        });
    </script>
    <style>


    </style>
</head>
<body style="background-color: #d5d5d5">
<%@include file="../common-page/page-header.jsp" %>
<div class="content">
    <ul class="mainList">
        <c:forEach items="${ForumContent}" varStatus="i" var="items" >
            <li>
                <%--<input type="hidden" id="forumContentID" value="123">--%>
                <span class="info">${items.createUser}</span>
                <span class="forumContent">
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
    </ul>
</div>
<div class="inputArea">
    <div class="contentArea">
        <span class="contentLabelArea"></span>
        <textarea name="contentArea" id="contentArea" class="contentInputArea"></textarea>
        <input type="hidden" id="forumThemeID" value="#">
    </div>
    <div class="submitArea">
        <input type="submit" class="inputBottom" value="回复"/>
        <%--<button class="inputBottom" onclick="ajax2SendForum()">回复</button>--%>
    </div>
</div>
<%@include file="../common-page/page-footer.jsp" %>
</body>
</html>