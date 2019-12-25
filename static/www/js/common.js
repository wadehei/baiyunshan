 function search_pre(name) {
     $(".li-" + name).addClass('red-bgcolor').siblings().removeClass('red-bgcolor');
     $("." + name).show().siblings().hide();
 }
 $(document).ready(function() {
     $(".list_sort1").click(function() {
         $(".list_sort1 ul").toggle();
     })
     $(".list_sort2").click(function() {
         $(".list_sort2 ul").toggle();
     })
     $(".list_sort3").click(function() {
         $(".list_sort3 ul").toggle();
     })
     $(".list_sort4").click(function() {
         $(".list_sort4 ul").toggle();
     })
     $(".list_sort1 ul li").click(function(event) {
         $(".list_sort1 ul").hide();
         var val = $(this).text();
         $(".list_sort1 .list_sort_text").html(val);
         event.stopPropagation();
     })
     $(".list_sort2 ul li").click(function(event) {
         $(".list_sort2 ul").hide();
         var val = $(this).text();
         $(".list_sort2 .list_sort_text").html(val);
         event.stopPropagation();
     })
     $(".list_sort3 ul li").click(function(event) {
         $(".list_sort3 ul").hide();
         var val = $(this).text();
         $(".list_sort3 .list_sort_text").html(val);
         event.stopPropagation();
     })
     $(".list_sort4 ul li").click(function(event) {
         $(".list_sort4 ul").hide();
         var val = $(this).text();
         $(".list_sort4 .list_sort_text").html(val);
         event.stopPropagation();
     })
     $(".login-photo").hover(function() {
         $(".login-photo ul").stop().show(200);
     }, function() {
         $(".login-photo ul").stop().hide(200);
     });
     $(".floor3-img li").mousemove(function() {
         $(this).addClass('hover').siblings().removeClass('hover');
     });
 });

 function date2str(x, y) {
     var z = { M: x.getMonth() + 1, d: x.getDate(), h: x.getHours(), m: x.getMinutes(), s: x.getSeconds() };
     y = y.replace(/(M+|d+|h+|m+|s+)/g, function(v) { return ((v.length > 1 ? "0" : "") + eval('z.' + v.slice(-1))).slice(-2) });
     return y.replace(/(y+)/g, function(v) { return x.getFullYear().toString().slice(-v.length) });
 }
 $("#startdate").val(date2str(new Date(), "yyyy-MM-dd"));
 $("#enddate").val(date2str(new Date(), "yyyy-MM-dd"));


 //离店日期自动加一天
 function set_enddate(startdateID, enddateID) {
     var startdate = $("#" + startdateID).val();
     var enddate = getNextDay(startdate);
     $("#" + enddateID).val(enddate);
 }

 function getNextDay(date) {
     date = date.substr(0, 4) + '/' + date.substr(5, 2) + '/' + date.substr(8, 2);
     date = new Date(date);
     date.setTime(date.getTime() + 1000 * 60 * 60 * 24);
     var mon = (date.getMonth() + 1);
     var d = date.getDate();
     if ((date.getMonth() + 1) < 10) {
         mon = "0" + mon;
     }
     if ((date.getDate()) < 10) {
         var d = "0" + d;
     }
     return date.getFullYear() + "-" + mon + "-" + d;
 }