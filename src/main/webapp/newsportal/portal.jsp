<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8"/>
    <title>My Sports Center</title>
    <link rel="stylesheet" href="../css/common-core.css">
    <link rel="stylesheet" href="../css/mainpage/index.css">
    <script src="../js/jquery-3.1.1.min.js"></script>
    <script>
        $(document).ready(function(){
            $("li:contains('首页')").css("background-color","#abe3e5");
        });
    </script>
</head>
<body>
<div class="fixedmenu"></div>
<div class="fixed"></div>
<div class="header">
    <ul>
        <li><a href="#">首页</a></li>
        <li><a href="#">新闻</a></li>
        <li><a href="#">图片</a></li>
        <li><a href="#">视频</a></li>
        <li><a href="/teamRanking.do">球队</a></li>
        <li><a href="#">论坛</a></li>
    </ul>
</div>
<div class="content">
    <ul class="contentrootul">
        <li class="picgallery">
            <ul class="picdetailul">
                <c:forEach items="${mainPic}" varStatus="i" var="picItem">
                    <li><img src="${picItem.getPicPath()}" alt="${picItem.getId()}"></li>
                </c:forEach>
            </ul>
        </li>

        <c:forEach var="k" begin="1" end="6">
            <li class="teamdetaillist">
                <div class="teamdetail">
                    <span class="teamlogo">
                    <c:forEach items="${mainNews}" varStatus="i" var="mainNewsItem">
                        <c:if test="${(i.index + 1) == (k * 10)}">
                            <img src="${mainNewsItem.getTeamLogoPath()}" alt="${mainNewsItem.getId()}">
                        </c:if>
                    </c:forEach>
                    </span>
                    <span class="teamnews">
                            <span>
                                <ul>
                                    <c:forEach items="${mainNews}" varStatus="i" var="mainNewsItem">
                                        <c:if test="${(i.index + 1) >= (k * 10 - 9) || (i.index + 1) <= (k * 10) || (i.index + 1) % 2 == 0}">
                                            <li><a href="#">${mainNewsItem.getNewsTitle()}</a></li>
                                        </c:if>
                                    </c:forEach>
                                </ul>
                            </span>

                            <span>
                                <ul>
                                    <c:forEach items="${mainNews}" varStatus="i" var="mainNewsItem">
                                        <c:if test="${(i.index + 1) >= (k * 10 - 9) || (i.index + 1) <= (k * 10) || (i.index + 1) % 2 == 1}">
                                            <li><a href="#">${mainNewsItem.getNewsTitle()}</a></li>
                                        </c:if>
                                    </c:forEach>
                                </ul>
                            </span>
                    </span>
                </div>
            </li>
        </c:forEach>
    </ul>
</div>
<div class="footer">Copyright Powered By Jason</div>
</body>
</html>
