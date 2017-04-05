<%--
  Created by IntelliJ IDEA.
  User: Jason
  Date: 4/5/17
  Time: 16:09
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>My Sprots Center</title>
    <link rel="stylesheet" href="/css/common-core.css">
    <style>

    </style>
    <script src="/js/jquery-3.1.1.min.js"></script>
    <script>
        $(document).ready(function () {
            $("li:contains('新闻')").css("background-color", "#abe3e5");
            <%--$(".content").css("height", "(${teamCount} *50) px;");--%>
        });
    </script>
</head>
<body>
<%@include file="../common-page/page-header.jsp"%>
<%@include file="../common-page/page-footer.jsp"%>
</body>
</html>
