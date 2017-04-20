<%--
  Created by IntelliJ IDEA.
  User: Jason
  Date: 4/5/17
  Time: 16:09
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>My Sprots Center</title>
    <link rel="stylesheet" href="/css/common-core.css">
    <link rel="stylesheet" href="/css/mainpage/teamNews.css">
    <script src="/js/jquery-3.1.1.min.js"></script>
    <script>
        $(document).ready(function () {
            $("li[name='Navi2']").css("background-color", "#abe3e5");
        });
    </script>
</head>
<body>
<%@include file="../common-page/page-header.jsp" %>
<div class="content">
    <ul class="mainNewsList">
        <c:forEach items="${newsListByTeamName}" varStatus="i" var="newsList" >
            <li class="mainNewsContent">
                <div class="teamNameFirst">
                    <span class="teamName">${newsList.key}</span>
                    <span class="moreTeamNews"><a href="/teamMore.do?id=${newsList.value[1].refKeyForTeam}&flag=${flag}">+更多</a></span>
                </div>
                <c:forEach items="${newsList.value}" varStatus="k" var="newsDetail">
                <div class="teamNewsTitle"><a href="/teamDetail.do?id=${newsDetail.id}&flag=${flag}">${newsDetail.newsTitle}</a></div>
                </c:forEach>
            </li>
        </c:forEach>
    </ul>
</div>
<%@include file="../common-page/page-footer.jsp" %>
</body>
</html>