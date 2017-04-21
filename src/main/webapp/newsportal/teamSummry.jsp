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
            if ("${flag}" == "News")
            {
                $("li[name='Navi2']").css("background-color", "#abe3e5");
            }
            if ("${flag}" == "Video")
            {
                $("li[name='Navi4']").css("background-color", "#abe3e5");
            }


        });
    </script>
</head>
<body>
<%@include file="../common-page/page-header.jsp" %>
<div class="content">
    <ul class="mainNewsList">
        <c:forEach items="${ListByTeamName}" varStatus="i" var="List">
            <li class="mainNewsContent">
                <div class="teamNameFirst">
                    <span class="teamName">${List.key}</span>
                    <span class="moreTeamNews"><a
                            href="/teamMore.do?id=${List.value[1].refKeyForTeam}&flag=${flag}">+更多</a></span>
                </div>
                <c:forEach items="${List.value}" varStatus="k" var="Detail">
                    <c:if test="${flag == 'Video'}" >
                    <div class="teamNewsTitle"><a
                            href="/teamDetail.do?id=${Detail.id}&flag=${flag}">${Detail.videoTheme}</a></div>
                    </c:if>
                    <c:if test="${flag == 'News'}" >
                        <div class="teamNewsTitle"><a
                                href="/teamDetail.do?id=${Detail.id}&flag=${flag}">${Detail.newsTitle}</a></div>
                    </c:if>
                </c:forEach>
            </li>
        </c:forEach>
    </ul>
</div>
<%@include file="../common-page/page-footer.jsp" %>
</body>
</html>