<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8"/>
    <title>My Sports Center</title>
    <link rel="stylesheet" href="../css/common-core.css">
    <link rel="stylesheet" href="../css/mainpage/teamRanking.css">
    <script src="../js/jquery-3.1.1.min.js"></script>
    <script>
        $(document).ready(function () {
            $("li[name='Navi5']").css("background-color", "#abe3e5");
            <%--$(".content").css("height", "(${teamCount} *50) px;");--%>
        });
    </script>
</head>
<body>
<%@include file="../common-page/page-header.jsp"%>
<div class="content">
    <table>
        <caption>德甲排行</caption>
        <tr>
            <th>序号</th>
            <th>队徽</th>
            <th>队名</th>
            <th>场次</th>
            <th>胜场</th>
            <th>平场</th>
            <th>负场</th>
            <th>积分</th>
        </tr>
        <tbody>
        <c:forEach items="${teamRankingInfo}" varStatus="i" var="teamItem">
            <tr>
                <td>${teamItem.ranking}</td>
                <td><img src="${teamItem.teamLogoPath}" /></td>
                <td><a href="/teamInformation.do?id=${teamItem.id}">${teamItem.teamName}</a></td>
                <td>${teamItem.round}</td>
                <td>${teamItem.winsCount}</td>
                <td>${teamItem.drawCount}</td>
                <td>${teamItem.loseCount}</td>
                <td>${teamItem.points}</td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
</div>
<%@include file="../common-page/page-footer.jsp"%>
</body>
</html>
