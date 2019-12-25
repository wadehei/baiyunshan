<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
session.setAttribute("appPath", path);
%>



<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8" />
<title>票务预定</title>
<meta name="keywords" content="洛阳白云山|河南白云山|洛阳白云山景区|嵩县白云山|白云山国家森林公园|白云山" />
<meta name="description" content="洛阳白云山景区唯一官方网站，为广大游客提供最新最详实的出行信息：交通指南、景区景点、食实住宿等，白云山国家森林公园欢迎您的到来。旅游热线：0379—66590158 66590004 66590127" />
<link href="${appPath}/static/www/css/base.css" rel="stylesheet" />
<link href="${appPath}/static/www/css/slide.css" rel="stylesheet" />
<link href="${appPath}/static/www/css/login.css" rel="stylesheet" />
<link href="${appPath}/static/www/css/verticalslide.css" rel="stylesheet" />
<link href="${appPath}/static/www/css/ticket.css" rel="stylesheet" />
<link href="${appPath}/static/www/css/WdatePicker.css" rel="stylesheet" />
    <style>
       .rewritenav li a {
        padding: 0 10px;
    }
    </style>
</head>
<body>
<form name="form1" method="post" action="${appPath}/website/toOrderConfirmation.do" id="form1">
    <div>
    </div>
    <div>
    </div>
    <!-- 头部 -->
    <%@include file="bai-head.jsp" %>
    <!-- 头部end -->
<div class="wrap">
            <div class="header red-rtname">
                <span>您所在的页面 :&nbsp;&nbsp;<a href="${appPath}">首页</a> &gt; <a href="${appPath}/website/piaowuyudingView.do">票务预订</a> &gt; <a href="javascript:;">
                        ${model.ticket.ticketName }</a></span>
            </div>
            <div class="tickettop">
                <div class="ticketform clearfix">
                    <div class="ticketform-pic">
                        <div class="foucebox">
                                                     <div class="bd">
                                <ul id="divimginfog_imgPlayer" style="position: relative; width: 482px; height: 300px;">
                                    <li style="position: absolute; width: 482px; left: 0px; top: 0px; display: none;">
                                        <img id="Image1" src="<c:if test='${empty model.ticket.p1}'>http://img.17bys.com/ts/20170626/105045_9990.jpeg</c:if><c:if test='${not empty model.ticket.p1}'>${image_base_path}${model.ticket.p1 }</c:if>" style="border-width:0px;">
                                    </li>
                                    <li style="position: absolute; width: 482px; left: 0px; top: 0px; display: none;">
                                        <img id="Image2" src="<c:if test='${empty model.ticket.p2}'>http://img.17bys.com/ts/20170626/105045_9990.jpeg</c:if><c:if test='${not empty model.ticket.p2}'>${image_base_path}${model.ticket.p2 }</c:if>" style="border-width:0px;">
                                    </li>
                                    <li style="position: absolute; width: 482px; left: 0px; top: 0px; display: list-item;">
                                        <img id="Image3" src="<c:if test='${empty model.ticket.p3}'>http://img.17bys.com/ts/20170626/105045_9990.jpeg</c:if><c:if test='${not empty model.ticket.p3}'>${image_base_path}${model.ticket.p3 }</c:if>" style="border-width:0px;">
                                    </li>
                                    <li style="position: absolute; width: 482px; left: 0px; top: 0px; display: none;">
                                        <img id="Image4" src="<c:if test='${empty model.ticket.p4}'>http://img.17bys.com/ts/20170626/105045_9990.jpeg</c:if><c:if test='${not empty model.ticket.p4}'>${image_base_path}${model.ticket.p4 }</c:if>" style="border-width:0px;">
                                    </li>
                                    <li style="position: absolute; width: 482px; left: 0px; top: 0px; display: none;">
                                        <img id="Image5" src="<c:if test='${empty model.ticket.p5}'>http://img.17bys.com/ts/20170626/105045_9990.jpeg</c:if><c:if test='${not empty model.ticket.p5}'>${image_base_path}${model.ticket.p5 }</c:if>" style="border-width:0px;">
                                    </li>
                                </ul>
                            </div>
                            <div class="hd">
                                <div class="hoverBg" style="margin-top: 120px;">
                                </div>
                                <ul id="divpageinfog_imgPlayer">
                                    <li class="">
                                        <img id="Image11" src="<c:if test='${empty model.ticket.p1}'>http://img.17bys.com/ts/20170626/105045_9990.jpeg</c:if><c:if test='${not empty model.ticket.p1}'>${image_base_path}${model.ticket.p1 }</c:if>" style="border-width:0px;">
                                    </li>
                                    <li class="">
                                        <img id="Image22" src="<c:if test='${empty model.ticket.p2}'>http://img.17bys.com/ts/20170626/105045_9990.jpeg</c:if><c:if test='${not empty model.ticket.p2}'>${image_base_path}${model.ticket.p2 }</c:if>" style="border-width:0px;">
                                    </li>
                                    <li class="on">
                                        <img id="Image33" src="<c:if test='${empty model.ticket.p3}'>http://img.17bys.com/ts/20170626/105045_9990.jpeg</c:if><c:if test='${not empty model.ticket.p3}'>${image_base_path}${model.ticket.p3 }</c:if>" style="border-width:0px;">
                                    </li>
                                    <li class="">
                                        <img id="Image44" src="<c:if test='${empty model.ticket.p4}'>http://img.17bys.com/ts/20170626/105045_9990.jpeg</c:if><c:if test='${not empty model.ticket.p4}'>${image_base_path}${model.ticket.p4 }</c:if>" style="border-width:0px;">
                                    </li>
                                    <li class="">
                                        <img id="Image55" src="<c:if test='${empty model.ticket.p5}'>http://img.17bys.com/ts/20170626/105045_9990.jpeg</c:if><c:if test='${not empty model.ticket.p5}'>${image_base_path}${model.ticket.p5 }</c:if>" style="border-width:0px;">
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <div class="ticketform-text">
                    <input hidden="hidden" name="tID" id="tID" value="${model.ticket.tID }">
                        <ul class="ticket-form">
                            <li>
                                <div class="ticket-left">票型名称</div>
                                <div class="ticket-right">
                                    <input name="txtTicketName" type="text" id="txtTicketName" disabled="disabled" value="${model.ticket.ticketName }">
                                </div>
                            </li>
                            <li>
                                <div class="ticket-left">温馨提示</div>
                                <div class="ticket-right">
                                    <span id="remark">
                                      ${model.ticket.tips }</span>
                                </div>
                            </li>
                            <li>
                                <div class="ticket-left">总　　价</div>
                                <div class="ticket-right">
                                    ￥<span id="price"> ${model.ticket.salePrice }</span>
                                </div>
                            </li>
                            <li>
                                <div class="ticket-left">游玩日期</div>
                                <div class="ticket-right">
                                    <input name="txtTravelDate" type="text" id="txtTravelDate" class="dateico" onclick="WdatePicker({ readOnly: true, minDate: '%y-%M-%d', maxDate: '%y-%M-{%d+90}', onpicked: function () { sumPrice(this); } })" value="${model.pd.days }">
                                </div>
                            </li>
                            <li>
                                <div class="ticket-left">姓　　名</div>
                                <div class="ticket-right">
                                    <input name="txtReceiveName" type="text" id="txtReceiveName" onkeyup="value=value.replace(/[^\a-zA-Z\u4E00-\u9FA5]/g,'')">
                                </div>
                            </li>
                            <li>
                                <div class="ticket-left">手机号码</div>
                                <div class="ticket-right">
                                    <input name="txtReceiveMobile" type="text" id="txtReceiveMobile">（门票兑换码发送到此号码）
                                </div>
                            </li>
                            <li>
                                <div class="ticket-left">数　　量</div>
                                <div class="ticket-right">
                                    <div class="spinner">
                                        <a href="javascript:;" onclick="reduce_add_num('-1')">－</a>
                                        <input name="txtNum" type="text" id="txtNum" minv="${model.ticket.minQuantity}" totv='${model.ticket.stock}' maxv='${model.ticket.maxQuantity}' value="${model.ticket.minQuantity}" readonly="">
                                        <a href="javascript:;" onclick="reduce_add_num('1')">＋</a>
                                    </div>
                                </div>
                            </li>
                            <div style="margin-bottom: 0" class="ticket-right">
                                <span style="color: #e76451;">请您在预订前仔细阅读预订须知及温馨提示等信息</span>
                            </div>
                            <li>
                                <div class="ticket-rightlast">
                                    <button id="btnOrder" class="redBtn" type="button" onclick="ticketOrder()">确认订单</button>
                                    <button id="btnNoOrder" class="grayBtn" disabled="" type="button" style="display:none;">不可购买</button>
                                </div>
                            </li>
                        </ul>
                    </div>
                </div>
                <div class="ticketdetail packTab" id="mpxq" deep="3">
                    <ul class="menuTop" style="position: static; z-index: 3; top: 0px;">
                        <li class="on"><a href="#mpxq">门票详情</a></li>
                        <li class=""><a href="#ydxz">预订须知</a></li>
                        <li class=""><a href="#wxts">温馨提示</a></li>
                    </ul>
                    <div class="ticketdetail-head">
                        门票详情
                    </div>
                    <div class="ticketdetail-instruction" id="instruction">
                        <span style="font-family: 'Microsoft YaHei', sans-serif; font-size: 14px; line-height: normal; background-color: #FFFFFF;" data-filtered="filtered">
                            <p class="MsoNormal">
                                【费用包含】：
                            </p>
                            <p class="MsoNormal">
                                <span>
                                     ${model.ticket.costDes }</span>
                            </p>
                            <p class="MsoNormal">
                                &nbsp;
                            </p>
                            <p class="MsoNormal">
                                &nbsp;
                            </p>
                            <p class="MsoNormal">
                                【兑换方式】：
                            </p>
                            <p class="MsoNormal">
                                <span>
                                    ${model.ticket.exchangeDes }</span>
                            </p>
                            <p class="MsoNormal">
                                &nbsp;
                            </p>
                            <p class="MsoNormal">
                                &nbsp;
                            </p>
                             <p class="MsoNormal">
                            【发票说明】：
                        </p>
                        <p class="MsoNormal">
                            <span>
                                ${model.ticket.invoiceDes }</span>
                        </p>
                        <p class="MsoNormal">
                            &nbsp;
                        </p>
                        <p class="MsoNormal">
                            &nbsp;
                        </p>
                        <p class="MsoNormal">
                            【退改说明】：
                        </p>
                        <p class="MsoNormal">
                        ${model.ticket.mealDes }
                        </p>
                        </span>
                    </div>
                </div>
            </div>
            <div style="width: 100%; height: 25px;" id="ydxz" class="packTab"></div>
            <div class="tickettop">
                <div class="pubdiv">
                    <div class="pubheader">
                        预订须知
                    </div>
                    <div id="tips">
                    ${model.ticket.ticketDes }
<%--                         <p class="MsoNormal">
                            <span></span>
                        </p>
                        <p class="MsoNormal">
                            <span>${model.ticket.tips }</span>
                        </p>
                        <p class="MsoNormal">
                            <span>
                                ①门票两日有效，出入园务必录入指纹，第二日入园需凭借指纹+昨日门票（景区开放时间内正门检票口）注意：1.只限于连续两天的游玩（隔天游玩不可使用）。2.指纹录入地址：景区入口检票处；<br>
②为保证取票、入园顺利，预订时请务必填写真实姓名、手机号码等信息。</span>
                        </p> --%>
                    </div>
                </div>
            </div>
            <div style="width: 100%; height: 25px;" id="wxts" class="packTab"></div>
            <div class="tickettop">
                <div class="pubdiv">
                    <div class="pubheader">
                        温馨提示
                    </div>
                    <div id="ticketdetail">
                    	<p class="MsoNormal">
                                【温馨提示】：
                        </p>
                        <p class="MsoNormal">
                            <span>
                              ${model.ticket.tips }</span>
                        </p>
                       
<!--                             <span>
                                如需退款，可至订单详情页申请。<br>
(1)随时可申请退款，不支持部分退款。退款无需支付手续费。<br>
(2)本产品一经预订，不支持改期。</span> -->
                    </div>
                </div>
            </div>
            <div style="width: 100%; height: 25px;" id="ykpj" class="packTab"></div>
            <div style="width: 100%; height: 25px;" id="cjjl" class="packTab"></div>
            <div class="blank"></div>
        </div>
     <%@ include file="footer.jsp" %>
    <!---->
    <%-- <script type="text/javascript" src="${appPath}/static/www/js/jquery-1.7.2.min.js"></script> --%>
    <script type="text/javascript" src="${appPath}/static/www/js/common.js"></script>
    <script type="text/javascript" src="${appPath}/static/www/js/jquery.SuperSlide.js"></script>
    <script type="text/javascript" src="${appPath}/static/www/js/tabLocation.js"></script>
    <script type="text/javascript" src="${appPath}/static/www/js/WdatePicker.js"></script>
    <script type="text/javascript">
        function sumPrice() {
        	var tID = $("#tID").val();
        	//var days = $(obj).val();
        	var txtNum = $("#txtNum").val();
        	var days = $("#txtTravelDate").val();
        	console.log(days);
        	var url = "${appPath}/website/toDangePiaopinJson.do";
        	$.post(url,{days:days,tID:tID,txtNum:txtNum},function(result){
        		var salePrice = result.ticket.salePrice;
        		var totalPrice = result.ticket.totalPrice;
        		if (salePrice == null || salePrice == "") {
					//没有为该日定义价格
        			$("#price").text("0.00");
					alert("没有为"+days+"定义价格");
					nPrice();
				}else {
					$("#price").text(totalPrice);
					yPrice();
				}
        	});
        }
        function nPrice() {
			$("#btnNoOrder").attr("style","display:");
			$("#btnOrder").attr("style","display:none");
        }
        function yPrice() {
			$("#btnOrder").attr("style","display:");
			$("#btnNoOrder").attr("style","display:none");
        }
        function ticketOrder() {
        	
        }
        function reduce_add_num(num) {
        	var txtNum = $("#txtNum").val();
        	var minv = new Number($("#txtNum").attr("minv"));
        	var maxv = new Number($("#txtNum").attr("maxv"));
        	var totv = new Number($("#txtNum").attr("totv"));
        	var cNum = new Number(txtNum) + new Number(num);
        	if(cNum < minv) {
        	}else if(cNum > maxv){
        	}else if(cNum > totv){
        	}else {
        		$("#txtNum").val(cNum);
        		sumPrice();
        	}
        }
        
        
      //票品购买
        function ticketOrder() {
            //姓名校验
            if (!checkName('txtReceiveName')) {
                return;
            }
            //手机号校验
            if (!checkMobile('txtReceiveMobile')) {
                return;
            }

            var tID = $("#tID").val();
            var tdate = $("#txtTravelDate").val();
            var num = $("#txtNum").val();
            var name = $("#txtReceiveName").val();
            name = encodeURI(name);
            var mobile = $("#txtReceiveMobile").val();
            location.href = "${appPath}/website/toOrderConfirmation.do?tID="+tID+"&days=" + tdate + "&txtNum=" + num + "&name=" + name + "&mobile=" + mobile;
        }

        // 姓名校验
        function checkName(nameId) {
            var checkResult = true;
            var emptyReg = /^\s*(\S+\s*)+$/;
            if (emptyReg.test($("#" + nameId).val()) == false) {
                checkResult = false;
                alert("请输入姓名");
                return;
            }
            return checkResult;
        }

        // 手机号校验
        function checkMobile(phoneNumberId) {
            var checkResult = true;
            var emptyReg = /^\s*(\S+\s*)+$/;
            var reg = /^(1)\d{10}$/;
            if (emptyReg.test($("#" + phoneNumberId).val()) == false) {
                alert("请输入手机号码");
                checkResult = false;
                return;
            } else {
                if (reg.test($("#" + phoneNumberId).val()) == false) {
                    alert("手机号码格式不正确");
                    checkResult = false;
                    return;
                }
            }
            return checkResult;
        }
    
    </script>
</form>
</body>
</html>