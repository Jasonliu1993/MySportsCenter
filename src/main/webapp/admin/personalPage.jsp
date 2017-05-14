<%--
  Created by IntelliJ IDEA.
  User: Jason
  Date: 5/13/17
  Time: 22:36
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="../css/common-core.css">
    <link rel="stylesheet" href="../css/admin/personalPage.css">
    <script type="text/javascript" src="../js/jquery-3.1.1.min.js"></script>
    <script>

    </script>
    <style>

    </style>
</head>
<body>
<%@include file="../common-page/page-header.jsp" %>
<div class="content">
    <div class="left">
        <div class="leftTitle">
            <h2>空间管理</h2>
        </div>
        <div class="leftContent">
            <ul class="leftContentThemeUl">
                <li class="leftContentThemeLi">
                    <div class="leftContentThemeLiTitle">个人信息管理</div>
                    <ul class="leftContentUl">
                        <li class="leftContentLi"><a href="#">头像上传</a></li>
                        <li class="leftContentLi"><a href="#">个人信息</a></li>
                        <li class="leftContentLi"><a href="#">密码修改</a></li>
                    </ul>
                </li>
                <li class="leftContentThemeLi">
                    <div class="leftContentThemeLiTitle">个人信息管理</div>
                    <ul class="leftContentUl">
                        <li class="leftContentLi"><a href="#">头像上传</a></li>
                    </ul>
                </li>
            </ul>
        </div>
    </div>
    <div class="right">
        <div class="rightContent">
            <form action="/admin/saveAvatar.do" method="post" enctype="multipart/form-data">
                <h1>头像上传</h1>
                <div class="rightContentDetail">
                    <div class="preView"><img src="" alt=""></div>
                    <div class="fileSelect"><input type="file" id="avatar" name="avatar"/></div>
                    <div class="fileButton"><input type="submit" value="上传"/></div>
                </div>
            </form>
        </div>
    </div>
</div>
<%@include file="../common-page/page-footer.jsp" %>
</body>
</html>
