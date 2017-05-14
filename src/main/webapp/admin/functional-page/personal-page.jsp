<%--
  Created by IntelliJ IDEA.
  User: Jason
  Date: 5/14/17
  Time: 22:48
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<form action="/admin/saveAvatar.do" method="post" enctype="multipart/form-data">
    <h1>头像上传</h1>
    <div class="rightContentDetail">
        <div class="preView"><img src="${avatarSrc.getAvatarPath()}" alt="avatar"></div>
        <div class="fileSelect"><input type="file" id="avatar" name="avatar"/></div>
        <div class="fileButton"><input type="submit" value="上传"/></div>
    </div>
</form>