<%--
  Created by IntelliJ IDEA.
  User: Jason
  Date: 4/8/17
  Time: 23:14
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>My Sprots Center</title>
    <link rel="stylesheet" href="/css/common-core.css">
    <link rel="stylesheet" href="/css/mainpage/teamNewsMore.css">
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
    <div class="teamTitle">
        <c:if test="${flag == 'Video'}" >
            <h2>${teamName}视频</h2>
        </c:if>
        <c:if test="${flag == 'News'}" >
            <h2>${teamName}新闻</h2>
        </c:if>
    </div>
    <div class="teamNewsFullList">
        <ul class="teamNewsList">
            <li class="newsTitle">
                <c:if test="${flag == 'Video'}" >
                    <span class="newsTitleName">视频列表</span>
                </c:if>
                <c:if test="${flag == 'News'}" >
                    <span class="newsTitleName">新闻列表</span>
                </c:if>
                <span class="newsUpdateTime">更新日期</span>
            </li>
            <c:forEach items="${List}" varStatus="i" var="ListItem">
            <li class="newsContentList">
                <c:if test="${flag == 'Video'}" >
                    <span class="newsTitleName">•&nbsp;&nbsp;<a href="/teamDetail.do?id=${ListItem.id}&flag=${flag}">${ListItem.videoTheme}</a></span>
                </c:if>
                <c:if test="${flag == 'News'}" >
                    <span class="newsTitleName">•&nbsp;&nbsp;<a href="/teamDetail.do?id=${ListItem.id}&flag=${flag}">${ListItem.newsTitle}</a></span>
                </c:if>
                <span class="newsUpdateTime">${ListItem.updateTime}</span>
            </li>
            </c:forEach>
        </ul>
    </div>
</div>
<%@include file="../common-page/page-footer.jsp" %>
</body>
</html>
