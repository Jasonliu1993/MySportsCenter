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
    <%--<link rel="stylesheet" href="/css/mainpage/teamNewsDetail.css">--%>
    <style>
        .content .teamTitle {
            width: 1000px;
            height: 130px;
            text-align: center;
            font-weight: bold;
            margin: 10px auto;
        }

        .content .teamTitle .teamIcon {
            width: 300px;
            height: 130px;
            text-align: center;
            float: left;
            display: inline-block;
            -webkit-box-sizing: border-box;
            -moz-box-sizing: border-box;
            box-sizing: border-box;
        }

        .content .teamTitle .teamIcon img {
            width: 130px;
            height: 130px;
            text-align: center;
            -webkit-box-sizing: border-box;
            -moz-box-sizing: border-box;
            box-sizing: border-box;
        }

        .content .teamTitle .teamInfo {
            width: 700px;
            height: 130px;
            display: inline-block;
            float: right;
            text-align: left;
            font-weight: bold;
            margin: 10px auto;
            -webkit-box-sizing: border-box;
            -moz-box-sizing: border-box;
            box-sizing: border-box;
        }

        .content .listButton {
            width: 1000px;
            height: 40px;
            margin: 10px auto;
        }

        .content .listButton .buttonList {
            width: 1000px;
            height: 40px;
        }

        .content .listButton .buttonList li {
            float: left;
            border: 1px solid #49494a;
            -webkit-box-sizing: border-box;
            -moz-box-sizing: border-box;
            box-sizing: border-box;
            cursor: pointer;
        }

        .content .listButton .buttonList .list1 {
            width: 500px;
            height: 40px;
            line-height: 40px;
            text-align: center;
        }

        .content .listButton .buttonList .list2 {
            width: 500px;
            height: 40px;
            line-height: 40px;
            text-align: center;
        }

        .content .coreContent .teamPlayer {
            width: 1000px;
            text-align: center;
            margin: 10px auto;
        }

        .content .coreContent .teamPlayer div ul .playerList {
            width: 100px;
            height: 100px;
            margin-left: 84px;
            float: left;
            -webkit-box-sizing: border-box;
            -moz-box-sizing: border-box;
            box-sizing: border-box;
        }

        .content .coreContent .teamPlayer div ul .playerList .playerNumber {
            width: 61px;
            height: 61px;
            line-height: 60px;
            background: url("/images/programpic/tubiao.png");
            background-position: -230px, -8px;
            text-align: center;
            -webkit-box-sizing: border-box;
            -moz-box-sizing: border-box;
            box-sizing: border-box;
        }

        .content .coreContent .teamPlayer div ul .playerList .playerName {
            width: 61px;
            height: 39px;
            line-height: 40px;
            text-align: left;
            -webkit-box-sizing: border-box;
            -moz-box-sizing: border-box;
            box-sizing: border-box;
        }

        .content .coreContent .teamPlayer .forward {
            width: 1000px;
            height: 200px; /*每个球员h100px,w100px,此处是动态值,是100的倍数*/
            margin: 10px auto;
            padding-top: 40px;
        }

        .content .coreContent .teamPlayer .forwardTitle {
            width: 198px;
            height: 200px; /*每个球员h100px,w100px,此处是动态值,是100的倍数*/
            float: left;
            border-right: 1px solid #4f4f4f;
            -webkit-box-sizing: border-box;
            -moz-box-sizing: border-box;
            box-sizing: border-box;
        }

        .content .coreContent .teamPlayer .forwardContent {
            width: 800px;
            height: 200px; /*每个球员h100px,w100px,此处是动态值,是100的倍数*/
            float: right;
            -webkit-box-sizing: border-box;
            -moz-box-sizing: border-box;
            box-sizing: border-box;
        }

        .content .coreContent .teamPlayer .midfielder {
            width: 1000px;
            height: 200px; /*每个球员h100px,w100px,此处是动态值,是100的倍数*/
            margin: 10px auto;
        }

        .content .coreContent .teamPlayer .midfielderTitle {
            width: 198px;
            height: 200px; /*每个球员h100px,w100px,此处是动态值,是100的倍数*/
            float: left;
            border-right: 1px solid #4f4f4f;
            -webkit-box-sizing: border-box;
            -moz-box-sizing: border-box;
            box-sizing: border-box;
        }

        .content .coreContent .teamPlayer .midfielderContent {
            width: 800px;
            height: 200px; /*每个球员h100px,w100px,此处是动态值,是100的倍数*/
            float: right;
            -webkit-box-sizing: border-box;
            -moz-box-sizing: border-box;
            box-sizing: border-box;
        }

        .content .coreContent .teamPlayer .back {
            width: 1000px;
            height: 200px; /*每个球员h100px,w100px,此处是动态值,是100的倍数*/
            margin: 10px auto;
        }

        .content .coreContent .teamPlayer .backTitle {
            width: 198px;
            height: 200px; /*每个球员h100px,w100px,此处是动态值,是100的倍数*/
            float: left;
            border-right: 1px solid #4f4f4f;
            -webkit-box-sizing: border-box;
            -moz-box-sizing: border-box;
            box-sizing: border-box;
        }

        .content .coreContent .teamPlayer .backContent {
            width: 800px;
            height: 200px; /*每个球员h100px,w100px,此处是动态值,是100的倍数*/
            float: right;
            -webkit-box-sizing: border-box;
            -moz-box-sizing: border-box;
            box-sizing: border-box;
        }

        .content .coreContent .teamPlayer .goalkeeper {
            width: 1000px;
            height: 100px; /*每个球员h100px,w100px,此处是动态值,是100的倍数*/
            margin: 10px auto;
        }

        .content .coreContent .teamPlayer .goalkeeperTitle {
            width: 198px;
            height: 100px; /*每个球员h100px,w100px,此处是动态值,是100的倍数*/
            float: left;
            border-right: 1px solid #4f4f4f;
            -webkit-box-sizing: border-box;
            -moz-box-sizing: border-box;
            box-sizing: border-box;
        }

        .content .coreContent .teamPlayer .goalkeeperContent {
            width: 800px;
            height: 100px; /*每个球员h100px,w100px,此处是动态值,是100的倍数*/
            float: right;
            -webkit-box-sizing: border-box;
            -moz-box-sizing: border-box;
            box-sizing: border-box;
        }

        .content .coreContent .teamVersus {
            width: 1000px;
            text-align: center;
            margin: 10px auto;
        }

        .content .coreContent .teamVersus .versusTitle {
            width: 1000px;
            text-align: left;
            margin-top: 50px;
            margin-left: 50px;
            -webkit-box-sizing: border-box;
            -moz-box-sizing: border-box;
            box-sizing: border-box;
        }

        .content .coreContent .teamVersus .versusContent {
            width: 1000px;
            margin: 30px auto;
        }

        .content .coreContent .teamVersus .versusContent table {
            width: 1000px;
            text-align: center;
        }

        .content .coreContent .teamVersus .versusContent table tr td {
            width: 250px;
            height: 50px;
            line-height: 50px;
            text-align: center;
        }
    </style>
    <script src="/js/jquery-3.1.1.min.js"></script>
    <script>
        $(document).ready(function () {
            $("li[name='Navi5']").css("background-color", "#abe3e5");
            $("li[class='list1']").css("background-color", "#abe3e5");
            $("div[class='teamPlayer']").css("display", "block");
            $("div[class='teamVersus']").css("display", "none");
            $("div[class='goalkeeper']").css("height", "100px");
            $("div[class='goalkeeperTitle']").css("height", "100px");
            $("div[class='goalkeeperContent']").css("height", "100px");

            $("div[class='back']").css("height", "200px");
            $("div[class='backTitle']").css("height", "200px");
            $("div[class='backContent']").css("height", "200px");

            $("div[class='midfielder']").css("height", "200px");
            $("div[class='midfielderTitle']").css("height", "200px");
            $("div[class='midfielderContent']").css("height", "200px");

            $("div[class='forward']").css("height", "200px");
            $("div[class='forwardTitle']").css("height", "200px");
            $("div[class='forwardContent']").css("height", "200px");
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
        <span class="teamIcon"><img src="/images/teamicon/br.png" alt="br"></span>
        <span class="teamInfo">
            <h2>拜仁慕尼黑</h2>
            <p>排名:1</p>
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
                        <li class="playerList">
                            <div class="playerNumber">2</div>
                            <div class="playerName">forward1</div>
                        </li>
                        <li class="playerList">
                            <div class="playerNumber">2</div>
                            <div class="playerName">forward1</div>
                        </li>
                        <li class="playerList">
                            <div class="playerNumber">2</div>
                            <div class="playerName">forward1</div>
                        </li>
                        <li class="playerList">
                            <div class="playerNumber">2</div>
                            <div class="playerName">forward1</div>
                        </li>
                        <li class="playerList">
                            <div class="playerNumber">2</div>
                            <div class="playerName">forward1</div>
                        </li>
                        <li class="playerList">
                            <div class="playerNumber">2</div>
                            <div class="playerName">forward1</div>
                        </li>
                    </ul>
                </div>
            </div>
            <div class="midfielder">
                <div class="midfielderTitle">
                    <span>中场</span>
                </div>
                <div class="midfielderContent">
                    <ul class="midfielderPlayerList">
                        <li class="playerList">
                            <div class="playerNumber">2</div>
                            <div class="playerName">forward1</div>
                        </li>
                        <li class="playerList">
                            <div class="playerNumber">2</div>
                            <div class="playerName">forward1</div>
                        </li>
                        <li class="playerList">
                            <div class="playerNumber">2</div>
                            <div class="playerName">forward1</div>
                        </li>
                        <li class="playerList">
                            <div class="playerNumber">2</div>
                            <div class="playerName">forward1</div>
                        </li>
                        <li class="playerList">
                            <div class="playerNumber">2</div>
                            <div class="playerName">forward1</div>
                        </li>
                        <li class="playerList">
                            <div class="playerNumber">2</div>
                            <div class="playerName">forward1</div>
                        </li>
                    </ul>
                </div>
            </div>
            <div class="back">
                <div class="backTitle">
                    <span>后卫</span>
                </div>
                <div class="backContent">
                    <ul class="backPlayerList">
                        <li class="playerList">
                            <div class="playerNumber">2</div>
                            <div class="playerName">forward1</div>
                        </li>
                        <li class="playerList">
                            <div class="playerNumber">2</div>
                            <div class="playerName">forward1</div>
                        </li>
                        <li class="playerList">
                            <div class="playerNumber">2</div>
                            <div class="playerName">forward1</div>
                        </li>
                        <li class="playerList">
                            <div class="playerNumber">2</div>
                            <div class="playerName">forward1</div>
                        </li>
                        <li class="playerList">
                            <div class="playerNumber">2</div>
                            <div class="playerName">forward1</div>
                        </li>
                        <li class="playerList">
                            <div class="playerNumber">2</div>
                            <div class="playerName">forward1</div>
                        </li>
                    </ul>
                </div>
            </div>
            <div class="goalkeeper">
                <div class="goalkeeperTitle">
                    <span>守门员</span>
                </div>
                <div class="goalkeeperContent">
                    <ul class="goalkeeperPlayerList">
                        <li class="playerList">
                            <div class="playerNumber">2</div>
                            <div class="playerName">forward1</div>
                        </li>
                        <li class="playerList">
                            <div class="playerNumber">2</div>
                            <div class="playerName">forward1</div>
                        </li>
                        <li class="playerList">
                            <div class="playerNumber">2</div>
                            <div class="playerName">forward1</div>
                        </li>
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
                        <th>主场球队</th>
                        <th>主场球队</th>
                    </tr>
                    <tr>
                        <td>2017-01-01</td>
                        <td>拜仁</td>
                        <td>1:1</td>
                        <td>多特</td>
                    </tr>
                    <tr>
                        <td>2017-01-07</td>
                        <td>不莱梅</td>
                        <td>1:1</td>
                        <td>拜仁</td>
                    </tr>
                </table>
            </div>
        </div>
    </div>
</div>
<%@include file="../common-page/page-footer.jsp" %>
</body>
</html>
