<%--
  Created by IntelliJ IDEA.
  User: Jason
  Date: 5/6/17
  Time: 21:27
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<div class="pagePilot">
    <div class="pagePilotDetial">
        <c:forEach items="${pagePilotUrl}" varStatus="i" var="items">
            <a href="${items.key}" class="display-page-number">${items.value}</a>
        </c:forEach>
        <%--<a href="#" id="pilot4" class="display-page-number display-page">4</a>--%>
        <input type="text" name="pageNumber" id="pageNumber"/>
        <span> / ${totalPageNumber} 页 </span>
        <input type="hidden" name="control" id="control" value="${control}" />
    </div>
    <script>
        $("#pageNumber").on("keypress",function (event) {
            if(event.keyCode==13) {
                if (this.value <= ${totalPageNumber}) {
                    var ctrl = $("input[name='control']").val()
                    if (ctrl == "forumDetail") {
                        window.location='/forumDetail.do?Id=${ForumContent[0].forumThemeId}&page='+this.value;
                    }
                    if (ctrl == "forumMain") {
                        window.location='/forumMain.do?page='+this.value;
                    }
                } else {
                    alert("不能大于总页数");
                }
            }
        })
    </script>
</div>
