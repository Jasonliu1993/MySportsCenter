<!DOCTYPE html>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8"/>
    <title>My Sports Center</title>
    <link rel="stylesheet" href="css/common-core.css">
    <style>
        .content .contentrootul {
            width: 1000px;
            height: 1823px;
            margin: 0 auto;
            border: 1px solid #49494a;
            box-sizing: border-box;
            background-color: #d5d5d5;
        }

        .content .contentrootul li {
            list-style: none;
        }

        .content .contentrootul .picgallery {
            padding-top: 10px;
            width: 1000px;
            height: 300px;
            margin: 0 auto;
            list-style: none;
            margin-bottom: 10px;
        }

        .content .contentrootul .picgallery .picdetailul {
            width: 1000px;
            height: 300px;
            margin: 0 auto;
            list-style: none;
            overflow: hidden;
        }

        .content .contentrootul .picgallery .picdetailul li {
            width: 200px;
            height: 300px;
            display: inline-block;
            float: left;
            transition-property: width;
            transition-duration: 1s;
        }

        .content .contentrootul .picgallery .picdetailul:hover li {
            width: 150px;
        }

        .content .contentrootul .picgallery .picdetailul li:hover {
            width: 400px;
        }

        .content .contentrootul .picgallery .picdetailul img {
            width: 400px;
            height: 300px;
        }

        .content .contentrootul .teamdetaillist {
            width: 1000px;
            height: 250px;
            margin: 0 auto;
        }
        .content .contentrootul:hover .teamdetaillist {
            opacity: 0.5;
        }
        .content .contentrootul .teamdetaillist:hover {
            opacity: 1;
        }
        .content .contentrootul .teamdetaillist .teamdetail{
            width: 1000px;
            height: 250px;
            border: 1px solid #4e4e4e;
            margin: 0 auto;
        }
        .content .contentrootul .teamdetaillist .teamdetail .teamlogo{
            width: 300px;
            height: 250px;
            float: left;
            display: inline-block;
            text-align: center;
            box-sizing: border-box;
        }
        .content .contentrootul .teamdetaillist .teamdetail .teamlogo img{
            height: 100px;
            width: 100px;
            padding-top: 50px;
        }
        .content .contentrootul .teamdetaillist .teamdetail .teamnews{
            width: 680px;
            height: 250px;
            float: right;
            display: inline-block;
        }
    </style>
    <script src="js/jquery-3.1.1.min.js"></script>
    <script>

    </script>
</head>
<body>
<div class="fixedmenu"></div>
<div class="fixed"></div>
<div class="header">
    <ul>
        <li>首页</li>
        <li>新闻</li>
        <li>图片</li>
        <li>视频</li>
        <li>球队</li>
        <li>论坛</li>
    </ul>
</div>
<div class="content">
    <ul class="contentrootul">
        <li class="picgallery">
            <ul class="picdetailul">
                <li><img src="images/mapstorage/TestWallpaper02.jpg" alt="pic1"></li>
                <li><img src="images/mapstorage/TestWallpaper05.jpg" alt="pic2"></li>
                <li><img src="images/mapstorage/TestWallpaper06.jpg" alt="pic3"></li>
                <li><img src="images/mapstorage/TestWallpaper08.jpg" alt="pic4"></li>
                <li><img src="images/mapstorage/TestWallpaper09.jpg" alt="pic5"></li>
            </ul>
        </li>
        <li class="teamdetaillist">
            <div class="teamdetail">
                <span class="teamlogo">
                    <img src="images/teamicon/br.png" alt="拜仁">
                </span>
                <span class="teamnews"></span>
            </div>
        </li>
        <li class="teamdetaillist">
            <div class="teamdetail">
                <span class="teamlogo">
                    <img src="images/teamicon/lwks.png" alt="勒沃库森">
                </span>
                <span class="teamnews"></span>
            </div>
        </li>
        <li class="teamdetaillist">
            <div class="teamdetail">
                <span class="teamlogo">
                    <img src="images/teamicon/dtmd.png" alt="多特">
                </span>
                <span class="teamnews"></span>
            </div>
        </li>
        <li class="teamdetaillist">
            <div class="teamdetail">
                <span class="teamlogo">
                    <img src="images/teamicon/ydblm.png" alt="不莱梅">
                </span>
                <span class="teamnews"></span>
            </div>
        </li>
        <li class="teamdetaillist">
            <div class="teamdetail">
                <span class="teamlogo">
                    <img src="images/teamicon/sek04.png" alt="沙尔克04">
                </span>
                <span class="teamnews"></span>
            </div>
        </li>
        <li class="teamdetaillist">
            <div class="teamdetail">
                <span class="teamlogo">
                    <img src="images/teamicon/mx.png" alt="门兴">
                </span>
                <span class="teamnews"></span>
            </div>
        </li>
    </ul>
</div>
<div class="footer">Copyright Powered By Jason</div>
</body>
</html>
