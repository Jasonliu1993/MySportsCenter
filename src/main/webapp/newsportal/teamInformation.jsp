<%--
  Created by IntelliJ IDEA.
  User: Jason
  Date: 4/12/17
  Time: 22:13
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>My Sprots Center</title>
    <link rel="stylesheet" href="/css/common-core.css">
    <link rel="stylesheet" href="/css/mainpage/teamInformation.css">
    <script src="/js/jquery-3.1.1.min.js"></script>
    <script>
        $(document).ready(function () {
            $("li[name='Navi5']").css("background-color", "#abe3e5");
            $("li[class='list1']").css("background-color", "#abe3e5");
            $("div[class='teamPlayer']").css("display", "block");
            $("div[class='teamVersus']").css("display", "none");

            $("div[class='goalkeeper']").css("height", "${locationCount['Goalkeeper']}px");
            $("div[class='goalkeeperTitle']").css("height", "${locationCount['Goalkeeper']}px");
            $("div[class='goalkeeperContent']").css("height", "${locationCount['Goalkeeper']}px");

            $("div[class='back']").css("height", "${locationCount['Back']}px");
            $("div[class='backTitle']").css("height", "${locationCount['Back']}px");
            $("div[class='backContent']").css("height", "${locationCount['Back']}px");

            $("div[class='midfielder']").css("height", "${locationCount['Midfielder']}px");
            $("div[class='midfielderTitle']").css("height", "${locationCount['Midfielder']}px");
            $("div[class='midfielderContent']").css("height", "${locationCount['Midfielder']}px");

            $("div[class='forward']").css("height", "${locationCount['Forward']}px");
            $("div[class='forwardTitle']").css("height", "${locationCount['Forward']}px");
            $("div[class='forwardContent']").css("height", "${locationCount['Forward']}px");
        });

        $(document).ready(function () {
            $(".buttonList li").bind("click", function () {
                var index = $(this).index();
                var divs = $(".coreContent > div");
                $(this).parent().children("li").css("background-color", "#d5d5d5");//将所有选项置为未选中
                $(this).css("background-color", "#abe3e5"); //设置当前选中项为选中样式
                divs.hide();//隐藏所有选中项内容
                divs.eq(index).show(); //显示选中项对应内容
            });

        });
    </script>
</head>
<body>
<%@include file="../common-page/page-header.jsp" %>
<div class="content">
    <div class="teamTitle">
        <span class="teamIcon"><img src="${teamInformation.teamLogoPath}" alt="br"></span>
        <span class="teamInfo">
            <h2>${teamInformation.teamName}</h2>
            <p>排名:${teamInformation.ranking}</p>
        </span>
    </div>
    <div class="listButton">
        <ul class="buttonList">
            <li class="list1">阵容</li>
            <li class="list2">近期交锋</li>
        </ul>
    </div>
    <div class="coreContent">
        <div class="teamPlayer">
            <div class="forward">
                <div class="forwardTitle">
                    <span>前锋</span>
                </div>
                <div class="forwardContent">
                    <ul class="forwardPlayerList">
                        <c:forEach items="${teamPlayer}" varStatus="i" var="items">
                            <c:if test="${items.playerLocationInTeam == 'Forward'}">
                                <li class="playerList">
                                    <div class="playerNumber">${items.playerNumber}</div>
                                    <div class="playerName">${items.playerName}</div>
                                </li>
                            </c:if>
                        </c:forEach>
                    </ul>
                </div>
            </div>
            <div class="midfielder">
                <div class="midfielderTitle">
                    <span>中场</span>
                </div>
                <div class="midfielderContent">
                    <ul class="midfielderPlayerList">
                        <c:forEach items="${teamPlayer}" varStatus="i" var="items">
                            <c:if test="${items.playerLocationInTeam == 'Midfielder'}">
                                <li class="playerList">
                                    <div class="playerNumber">${items.playerNumber}</div>
                                    <div class="playerName">${items.playerName}</div>
                                </li>
                            </c:if>
                        </c:forEach>
                    </ul>
                </div>
            </div>
            <div class="back">
                <div class="backTitle">
                    <span>后卫</span>
                </div>
                <div class="backContent">
                    <ul class="backPlayerList">
                        <c:forEach items="${teamPlayer}" varStatus="i" var="items">
                            <c:if test="${items.playerLocationInTeam == 'Back'}">
                                <li class="playerList">
                                    <div class="playerNumber">${items.playerNumber}</div>
                                    <div class="playerName">${items.playerName}</div>
                                </li>
                            </c:if>
                        </c:forEach>
                    </ul>
                </div>
            </div>
            <div class="goalkeeper">
                <div class="goalkeeperTitle">
                    <span>守门员</span>
                </div>
                <div class="goalkeeperContent">
                    <ul class="goalkeeperPlayerList">
                        <c:forEach items="${teamPlayer}" varStatus="i" var="items">
                            <c:if test="${items.playerLocationInTeam == 'Goalkeeper'}">
                                <li class="playerList">
                                    <div class="playerNumber">${items.playerNumber}</div>
                                    <div class="playerName">${items.playerName}</div>
                                </li>
                            </c:if>
                        </c:forEach>
                    </ul>
                </div>
            </div>
        </div>
        <div class="teamVersus">
            <div class="versusTitle"><span>近期比赛</span></div>
            <div class="versusContent">
                <table>
                    <tr>
                        <th>比赛时间</th>
                        <th>主场球队</th>
                        <th>比分</th>
                        <th>客场球队</th>
                    </tr>
                    <c:forEach items="${teamVersus}" varStatus="i" var="Items" >
                    <tr>
                        <td>${Items.matchDay}</td>
                        <td>${teamVersusName[Items.homeTeamId]}</td>
                        <td>${Items.score}</td>
                        <td>${teamVersusName[Items.visitingTeamId]}</td>
                    </tr>
                    </c:forEach>
                </table>
            </div>
        </div>
    </div>
</div>
<%@include file="../common-page/page-footer.jsp" %>
</body>
</html>
