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
    <title>My Sports Center</title>
    <link rel="stylesheet" href="../css/common-core.css">
    <link rel="stylesheet" href="../css/admin/personalPage.css">
    <script type="text/javascript" src="../js/jquery-3.1.1.min.js"></script>
    <script>
        $(document).ready(function(){

            if ("${pageFlag}" == "avatar") {
                $("a:contains('头像上传')").css("color","aqua");

            }

            $("#avatar").change(function () {
                var $file = $(this);
                var fileObj = $file[0];
                var windowURL = window.URL || window.webkitURL;
                var dataURL;
                var $img = $("img[alt='avatar']");

                if (fileObj && fileObj.files && fileObj.files[0]) {
                    dataURL = windowURL.createObjectURL(fileObj.files[0]);
                    $img.attr('src', dataURL);
                } else {
                    dataURL = $file.val();
                    var imgObj = document.getElementById("preview");
                    // 两个坑:
                    // 1、在设置filter属性时，元素必须已经存在在DOM树中，动态创建的Node，也需要在设置属性前加入到DOM中，先设置属性在加入，无效；
                    // 2、src属性需要像下面的方式添加，上面的两种方式添加，无效；
                    imgObj.style.filter = "progid:DXImageTransform.Microsoft.AlphaImageLoader(sizingMethod=scale)";
                    imgObj.filters.item("DXImageTransform.Microsoft.AlphaImageLoader").src = dataURL;

                }
            });
        })
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
                <c:forEach items="${adminConf}" varStatus="i" var="items" >
                    <li class="leftContentThemeLi">
                        <div class="leftContentThemeLiTitle">${items.key}</div>
                        <ul class="leftContentUl">
                            <c:forEach items="${items.value}" varStatus="k" var="items_s" >
                                <li class="leftContentLi"><a href="${items_s.getPath()}">${items_s.getSecondTitle()}</a></li>
                            </c:forEach>
                        </ul>
                    </li>
                </c:forEach>
            </ul>
        </div>
    </div>
    <div class="right">
        <div class="rightContent">
            <c:if test="${pageFlag == 'avatar'}" >
                <jsp:include page="functional-page/personal-page.jsp" />
            </c:if>
        </div>
    </div>
</div>
<%@include file="../common-page/page-footer.jsp" %>
</body>
</html>
