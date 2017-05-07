<%--
  Created by IntelliJ IDEA.
  User: Jason
  Date: 4/5/17
  Time: 16:32
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<div class="fixedmenu">
    <div class="fixedmenuArea">
        <c:if test="${empty sessionScope.userName}">
            <span class="static">欢迎来到 My Sports Center</span>
            <span class="LoginButton"><a href="/login/login.jsp">登录</a></span>
            <span class="registerButton"><a href="/login/register.html">注册</a></span>
        </c:if>
        <c:if test="${!empty sessionScope.userName}">
            <span class="static">${sessionScope.userName},欢迎回来!</span>
            <%--<span class="LoginButton"><a href="/login/login.jsp">登录</a></span>
            <span class="registerButton"><a href="/login/register.html">注册</a></span>--%>
        </c:if>
    </div>
</div>
<div class="fixed"></div>
<div class="header">
    <ul>
        <li name="Navi1"><a href="/index.do">首页</a></li>
        <li name="Navi2"><a href="/teamSummry.do?flag=News">新闻</a></li>
        <%--<li name="Navi3"><a href="#">图片</a></li>--%>
        <li name="Navi4"><a href="/teamSummry.do?flag=Video">视频</a></li>
        <li name="Navi5"><a href="/teamRanking.do">球队</a></li>
        <li name="Navi6"><a href="/forumMain.do?page=1">论坛</a></li>
    </ul>
</div>
