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
            $("li[name='Navi2']").css("background-color", "#abe3e5");
        });
    </script>
</head>
<body>
<%@include file="../common-page/page-header.jsp" %>
<div class="content">
    <div class="teamTitle">
        <h2>${teamName}新闻</h2>
    </div>
    <div class="teamNewsFullList">
        <ul class="teamNewsList">
            <li class="newsTitle">
                <span class="newsTitleName">新闻列表</span>
                <span class="newsUpdateTime">更新日期</span>
            </li>
            <c:forEach items="${newsList}" varStatus="i" var="newListItem">
            <li class="newsContentList">
                <span class="newsTitleName">•&nbsp;&nbsp;<a href="/teamNewsDetail.do?TNid=${newListItem.id}">${newListItem.newsTitle}</a></span>
                <span class="newsUpdateTime">${newListItem.updateTime}</span>
            </li>
            </c:forEach>
        </ul>
    </div>
</div>
<%@include file="../common-page/page-footer.jsp" %>
</body>
</html>
