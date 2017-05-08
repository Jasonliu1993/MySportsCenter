/**
 * Created by Jason on 5/2/17.
 */

/**
 *
 * 时间转换
 */
function p(s) {
    return s < 10 ? '0' + s: s;
}

function currentDateTime() {
    var myDate = new Date();
    //获取当前年
    var year=myDate.getFullYear();
    //获取当前月
    var month=myDate.getMonth()+1;
    //获取当前日
    var date=myDate.getDate();
    var h=myDate.getHours();       //获取当前小时数(0-23)
    var m=myDate.getMinutes();     //获取当前分钟数(0-59)
    var s=myDate.getSeconds();

    var now =year+'-'+p(month)+"-"+p(date)+" "+p(h)+':'+p(m)+":"+p(s);
    return now;
}

$.setPagePilot = function (currentPageNumber, totalPageNumber) {
    $(".pagePilotDetial").find("a:contains(" + currentPageNumber + ")").addClass("display-page");
    $(".pagePilotDetial").find("a:contains(" + totalPageNumber + ")").nextUntil("input").attr('href', 'JavaScript:');
}

function conLog (content) {
    console.log(content);
}