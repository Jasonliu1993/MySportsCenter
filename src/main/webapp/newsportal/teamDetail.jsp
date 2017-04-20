<%--
  Created by IntelliJ IDEA.
  User: Jason
  Date: 4/8/17
  Time: 22:51
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>My Sprots Center</title>
    <link rel="stylesheet" href="/css/common-core.css">
    <link rel="stylesheet" href="/css/mainpage/teamNewsDetail.css">
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
    <div class="newsTitle">
        <h2>${newsEntity.newsTitle}</h2>
    </div>
    <div class="newsContent">
        ${newsEntity.newsContent}
    </div>
</div>
<%@include file="../common-page/page-footer.jsp" %>
</body>
</html>
