<%--
  Created by IntelliJ IDEA.
  User: Jason
  Date: 4/23/17
  Time: 14:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>BBS论坛</title>
    <style>
        .title span {
            padding-left: 300px;
        }

        .mainList {
            width: 1000px;
            margin: 0 auto;
            list-style: none;
        }

        .mainList li:nth-child(2n + 1) {
            width: 1000px;
            height: 50px;
            line-height: 50px;
            font-size: 25px;
            font-weight: bold;
            text-align: center;
            background-color: #f2f2f2;
            border: 1px solid #d5d5d5;
            box-sizing: border-box;
        }

        .mainList li:nth-child(2n) {
            width: 1000px;
            height: 50px;
            line-height: 50px;
            font-size: 25px;
            font-weight: bold;
            text-align: center;
            background-color: #eff0f1;
            border: 1px solid #d5d5d5;
            box-sizing: border-box;
        }

        .mainList li span {
            display: inline-block;
            width: 900px;
            height: 50px;
            text-align: center;
        }

        .mainList li span a {
            color: #f02136;
            text-decoration: none;
        }

        .mainList li span a:hover {
            color: #c2e7e8;
            text-decoration: none;
        }

        .inputArea {
            width: 1000px;
            height: 300px;
            margin: 20px auto;
            border: 1px solid white;
        }

        .inputArea .themeArea {
            width: 1000px;
            height: 60px;
            padding-top: 20px;
            box-sizing: border-box;
        }

        .inputArea .themeArea .themeLabelArea {
            display: inline-block;
            width: 100px;
            height: 30px;
            padding-left: 30px;
            font-weight: bold;
        }

        .inputArea .themeArea .themeInputArea {
            width: 900px;
            height: 30px;
        }

        .inputArea .themeArea .themeInputArea input[type="text"] {
            width: 800px;
            height: 30px;
        }

        .inputArea .contentArea {
            width: 1000px;
            height: 200px;
        }

        .inputArea .contentArea .contentLabelArea {
            display: inline-block;
            width: 100px;
            height: 200px;
            padding-left: 30px;
            font-weight: bold;
        }

        .inputArea .contentArea .contentInputArea {
            width: 800px;
            height: 200px;
            resize: none;
        }

        .submitArea {
            height: 40px;
            width: 1000px;
            padding-left: 133px;
            padding-top: 7px;
        }

        .submitArea input[type = "submit"] {
            height: 30px;
            width: 50px;
            border: 1px solid white;
            -webkit-box-sizing: border-box;
            -moz-box-sizing: border-box;
            box-sizing: border-box;
        }
    </style>
    <script type="text/JavaScript" charset="utf-8" src="/js/jquery-3.1.1.min.js"></script>
    <script>
        $(document).ready(function(){
            $("li[name='Navi6']").css("background-color","#abe3e5");
        });
    </script>
</head>
<body>
<%@include file="../common-page/page-header.jsp" %>
<div class="content">
    <ul class="mainList">
        <li>
            <span>
                <%--<a href="/SendForumController?type=n&page=0&themeID=<%=forumTheme.getID()%>"><%=forumTheme.getForumTheme()%></a>--%>
                <a href="#">test 1</a>
                <a href="#">test 1</a>
                <a href="#">test 1</a>
                <a href="#">test 1</a>
            </span>
        </li>
    </ul>
</div>
<form action="/SendForumController?action=postForum" method="post">
    <div class="inputArea">
        <div class="themeArea">
                <span class="themeLabelArea">
                    <label for="theme">主题:</label>
                </span>
                <span class="themeInputArea">
                    <input type="text" name="theme" id="theme">
                </span>
        </div>
        <div class="contentArea">
            <span class="contentLabelArea"></span>
            <textarea name="contentArea" id="contentArea" class="contentInputArea"></textarea>
        </div>
        <div class="submitArea">
            <input type="submit" class="inputBottom" value="发表帖子">
        </div>
    </div>
    <%@include file="../common-page/page-footer.jsp" %>
</form>
</body>
</html>

