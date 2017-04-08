<%--
  Created by IntelliJ IDEA.
  User: Jason
  Date: 4/5/17
  Time: 16:09
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>My Sprots Center</title>
    <link rel="stylesheet" href="/css/common-core.css">
    <style>
        .content {
            width: 1000px;
            margin: 0 auto;
            border: 1px solid #49494a;
            box-sizing: border-box;
            background-color: #d5d5d5;
            overflow: hidden;
        }

        .content .mainNewsList {
            width: 1000px;
            height: 480px;
            margin-top: 20px;
        }

        .content .mainNewsList .mainNewsContent {
            width: 500px;
            height: 180px;
            float: left;
            list-style: none;
            margin: 0 auto;
        }

        .content .mainNewsList .mainNewsContent .teamNameFirst{
            width: 450px;
            height: 30px;
            margin: 0 auto;
            border-bottom: 1px solid #4d4d4d;
            border-left: 3px solid #4d4d4d;
            -webkit-box-sizing: border-box;
            -moz-box-sizing: border-box;
            box-sizing: border-box;
        }
        .content .mainNewsList .mainNewsContent .teamNameFirst .teamName {
            width: 400px;
            height: 30px;
            line-height: 30px;
            float: left;
            display: inline-block;
            padding-left: 10px;
            -webkit-box-sizing: border-box;
            -moz-box-sizing: border-box;
            box-sizing: border-box;
        }

        .content .mainNewsList .mainNewsContent .teamNameFirst .moreTeamNews {
            width: 45px;
            height: 30px;
            line-height: 30px;
            float: right;
            display: inline-block;
            -webkit-box-sizing: border-box;
            -moz-box-sizing: border-box;
            box-sizing: border-box;
        }
        .content .mainNewsList .mainNewsContent .teamNewsTitle {
            width: 450px;
            height: 30px;
            line-height: 30px;
            text-align: center;
        }
    </style>
    <script src="/js/jquery-3.1.1.min.js"></script>
    <script>
        $(document).ready(function () {
            $("li:contains('新闻')").css("background-color", "#abe3e5");
        });
    </script>
</head>
<body>
<%@include file="../common-page/page-header.jsp" %>
<div class="content">
    <ul class="mainNewsList">
        <c:forEach items="${newsListByTeamName}" varStatus="i" var="newsList" >
            <li class="mainNewsContent">
                <div class="teamNameFirst">
                    <span class="teamName">${newsList.key}</span>
                    <span class="moreTeamNews"><a href="/teamNewsMore.do?Tid=${newsList.value[1].refKeyForTeam}">+更多</a></span>
                </div>
                <c:forEach items="${newsList.value}" varStatus="k" var="newsDetail">
                <div class="teamNewsTitle"><a href="/teamNewsDetail.do?TNid=${newsDetail.id}">${newsDetail.newsTitle}</a></div>
                </c:forEach>
            </li>
        </c:forEach>
    </ul>
</div>
<%@include file="../common-page/page-footer.jsp" %>
</body>
</html>