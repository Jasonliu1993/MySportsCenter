<%--
  Created by IntelliJ IDEA.
  User: Jason
  Date: 4/21/17
  Time: 23:27
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>My Sprots Center</title>
    <link rel="stylesheet" href="/css/common-core.css">
    <link rel="stylesheet" href="/css/mainpage/teamVideoDetail.css">
    <script src="/js/jquery-3.1.1.min.js"></script>
    <script>
        $(document).ready(function () {
            $("li[name='Navi4']").css("background-color", "#abe3e5");
        });
    </script>
</head>
<body>
<%@include file="../common-page/page-header.jsp" %>
<div class="content">
    <div class="contentTitle">
        <h2>${video.videoTheme}</h2>
    </div>
    <div class="upArea">
        <div class="mainArea">
            <video src="${video.teamVideoPath}" controls preload="auto"></video>
        </div>
        <div class="rollArea">
            <ul class="recommendArea">
                <c:forEach items="${recommededVideo}" varStatus="i" var="items" >
                <li class="recommendList">
                    <span class="link"><a href="/teamVideoDetail.do?TNid=${items.id}&flag=Video"><img src="${items.videoThumbnailsPath}" alt="preview"></a></span>
                    <span class="theme">${items.videoTheme}</span>
                </li>
                </c:forEach>
            </ul>
        </div>
    </div>
</div>
<%@include file="../common-page/page-footer.jsp" %>
</body>
</html>
