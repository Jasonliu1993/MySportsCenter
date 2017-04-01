<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8"/>
    <title>My Sports Center</title>
    <link rel="stylesheet" href="../css/common-core.css">
    <script src="../js/jquery-3.1.1.min.js"></script>
    <script>
        $(document).ready(function(){
            $("li:contains('球队')").css("background-color","#abe3e5");
        });
    </script>
</head>
<body>
<div class="fixedmenu"></div>
<div class="fixed"></div>
<div class="header">
    <ul>
        <li><a href="/index.do">首页</a></li>
        <li><a href="#">新闻</a></li>
        <li><a href="#">图片</a></li>
        <li><a href="#">视频</a></li>
        <li><a href="/teamRanking.do">球队</a></li>
        <li><a href="#">论坛</a></li>
    </ul>
</div>
<div class="content">

</div>
<div class="footer">Copyright Powered By Jason</div>
</body>
</html>
