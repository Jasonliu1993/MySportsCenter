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
            $("li[name='Navi1']").css("background-color","#abe3e5");
        });
    </script>
</head>
<body>
<%@include file="../common-page/page-header.jsp"%>
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
                                        <c:if test="${(i.index + 1) >= (k * 10 - 9) && (i.index + 1) <= (k * 10) && (i.index + 1) % 2 == 0}">
                                            <li><a href="/teamNewsDetail.do?TNid=${mainNewsItem.id}">${mainNewsItem.getNewsTitle()}</a></li>
                                        </c:if>
                                    </c:forEach>
                                </ul>
                            </span>

                            <span>
                                <ul>
                                    <c:forEach items="${mainNews}" varStatus="i" var="mainNewsItem">
                                        <c:if test="${(i.index + 1) >= (k * 10 - 9) && (i.index + 1) <= (k * 10) && (i.index + 1) % 2 == 1}">
                                            <li><a href="/teamNewsDetail.do?TNid=${mainNewsItem.id}">${mainNewsItem.getNewsTitle()}</a></li>
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
<%@include file="../common-page/page-footer.jsp"%>
</body>
</html>
