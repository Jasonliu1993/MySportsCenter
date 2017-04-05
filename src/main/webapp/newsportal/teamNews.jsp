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
        <li class="mainNewsContent">
            <div class="teamNameFirst">
                <span class="teamName">拜仁</span>
                <span class="moreTeamNews"><a href="#">+更多</a></span>
            </div>
            <div class="teamNewsTitle"><a href="#">This is dummy news</a></div>
            <div class="teamNewsTitle"><a href="#">This is dummy news</a></div>
            <div class="teamNewsTitle"><a href="#">This is dummy news</a></div>
            <div class="teamNewsTitle"><a href="#">This is dummy news</a></div>
            <div class="teamNewsTitle"><a href="#">This is dummy news</a></div>
        </li>
        <li class="mainNewsContent">
            <div class="teamNameFirst">
                <span class="teamName">勒沃库森</span>
                <span class="moreTeamName"><a href="#">+更多</a></span>
            </div>
            <div class="teamNewsTitle"><a href="#">This is dummy news</a></div>
            <div class="teamNewsTitle"><a href="#">This is dummy news</a></div>
            <div class="teamNewsTitle"><a href="#">This is dummy news</a></div>
            <div class="teamNewsTitle"><a href="#">This is dummy news</a></div>
            <div class="teamNewsTitle"><a href="#">This is dummy news</a></div>
        </li>
        <li class="mainNewsContent">
            <div class="teamNameFirst">
                <span class="teamName">不莱梅</span>
                <span class="moreTeamName"><a href="#">+更多</a></span>
            </div>
            <div class="teamNewsTitle"><a href="#">This is dummy news</a></div>
            <div class="teamNewsTitle"><a href="#">This is dummy news</a></div>
            <div class="teamNewsTitle"><a href="#">This is dummy news</a></div>
            <div class="teamNewsTitle"><a href="#">This is dummy news</a></div>
            <div class="teamNewsTitle"><a href="#">This is dummy news</a></div>
        </li>
        <li class="mainNewsContent">
            <div class="teamNameFirst">
                <span class="teamName">柏林赫塔</span>
                <span class="moreTeamName"><a href="#">+更多</a></span>
            </div>
            <div class="teamNewsTitle"><a href="#">This is dummy news</a></div>
            <div class="teamNewsTitle"><a href="#">This is dummy news</a></div>
            <div class="teamNewsTitle"><a href="#">This is dummy news</a></div>
            <div class="teamNewsTitle"><a href="#">This is dummy news</a></div>
            <div class="teamNewsTitle"><a href="#">This is dummy news</a></div>
        </li>
        <li class="mainNewsContent">
            <div class="teamNameFirst">
                <span class="teamName">门兴</span>
                <span class="moreTeamName"><a href="#">+更多</a></span>
            </div>
            <div class="teamNewsTitle"><a href="#">This is dummy news</a></div>
            <div class="teamNewsTitle"><a href="#">This is dummy news</a></div>
            <div class="teamNewsTitle"><a href="#">This is dummy news</a></div>
            <div class="teamNewsTitle"><a href="#">This is dummy news</a></div>
            <div class="teamNewsTitle"><a href="#">This is dummy news</a></div>
        </li>
    </ul>
</div>
<%@include file="../common-page/page-footer.jsp" %>
</body>
</html>