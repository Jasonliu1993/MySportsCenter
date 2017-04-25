<%--
  Created by IntelliJ IDEA.
  User: Jason
  Date: 3/26/17
  Time: 18:17
  To change this template use File | Settings | File Templates.
--%>
<!DOCTYPE html>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link rel="stylesheet" type="text/css" href="../css/login/loginpage.css"/>
    <link rel="stylesheet" type="text/css" href="../css/common-core.css">
    <title>登录页面</title>
    <script type="text/javascript">
        function addNewWidows() {
            window.open("/login/register.html");
            return false;
        }
    </script>
</head>
<body>
<div class="mainContent">
    <div class="leftContent">
        <img src="/images/programpic/login.png" alt="mainPic">
    </div>
    <div class="rightContent">
        <form action="/LoginController" method="post">
            <div class="inputArea">
                <label for="name">用户名:</label>
                <input type="text" id="name" name="name" >
            </div>
            <div class="inputArea">
                <label for="password">密&nbsp&nbsp&nbsp&nbsp码:</label>
                <input type="password" id="password" name="password">
            </div>
            <div class="buttomArea">
                <input type="submit" value="提交">
                <%--<button onclick="addNewWidows()">注册</button>--%>
                <input type="button" value="注册" onclick='window.open("/login/register.html")'>
            </div>
        </form>
    </div>
</div>
</body>
</html>
