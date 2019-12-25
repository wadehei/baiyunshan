<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> 
<%@ taglib prefix="s" uri="/struts-tags" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
session.setAttribute("appPath", path);
%>

<s:i18n name="i18n.index">
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8" />
<title><s:text name="title"></s:text></title>
<base href="<%=basePath%>">
<meta name="keywords" content="<s:text name="keyword"></s:text>" />
<meta name="description" content="<s:text name="description"></s:text>" />
<link rel="stylesheet" href="${appPath}/static/www/css/portal.css" />
<style type="text/css">
.content{padding-bottom: 135px;}
#banner_tabs a{cursor:default;}
</style>
</head>


<body>
    <!-- 官网头部 -->
    <%@ include file="head.jsp" %>
    <!--头部 end-->
    <!-- 登录注册 -->
    <%@ include file="login.jsp" %>
    <!-- 登录注册end -->
    <div id="banner_tabs" class="flexslider banner">
    	<ul class="slides">
        	<c:forEach items="${model.data}" var="gl">
        		${gl}
        	</c:forEach>
        </ul>
        <ol id="bannerCtrl" class="flex-control-nav flex-control-paging">
        	<c:forEach items="${model.data}" var="gl" varStatus="vs">
        		<c:if test="${vs.index+1==1 }">
        			<li class="active">
		                <a style="cursor:default;">1</a>
		            </li>
		         </c:if>
        		<c:if test="${vs.index+1 gt 1}">
        			<li class="">
		                <a style="cursor:default;">${vs.index+1 }</a>
		            </li>
		        </c:if>
        	</c:forEach>
        </ol>
    </div>
    <!--轮播图 end-->
    <!--内容-->
    <div class="content">
        <div class="center">
            <div class="tab_info">
                <ul>
                    <li>
                        <a href="${appPath}/website/piaowuyudingView.do">
                            <div class="tab_item">
                                <div class="tab_icon icon1"></div>
                                <div class="tab_txt">
                                   <s:text name="piao_wu_yu_ding"></s:text><span>TICKET</span>
                                </div>
                                <div class="nav_divider"></div>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="${appPath}/website/jiudianyudingView.do">
                            <div class="tab_item">
                                <div class="tab_icon icon2"></div>
                                <div class="tab_txt">
                                  	<s:text name="jiu_dian_yu_ding"></s:text><span>HOTEL</span>
                                </div>
                                <div class="nav_divider"></div>
                            </div>
                        </a>

                    </li>
                    <li onclick="window.location.href='${appPath}/website/zhutihuodonglView.do?type=1&daima=coffee'">
<%--                        <a href="window.location.href='${appPath}/website/zhutihuodonglView.do?type=1&daima=coffee'">--%>
                            <div class="tab_item">
                                <div class="tab_icon icon3"></div>
                                <div class="tab_txt">
                                	<s:text name="xiu_xian_yu_le"></s:text><span>COFFEE</span>
                                </div>
                                <div class="nav_divider"></div>
                            </div>
<%--                        </a>--%>
                    </li>
                    <li onclick="window.location.href='${appPath}/website/zhutihuodonglView.do?type=1&daima=estate'">
<%--                        <a href="window.location.href='${appPath}/website/zhutihuodonglView.do?type=1&daima=estate'">--%>
                            <div class="tab_item">
                                <div class="tab_icon icon4"></div>
                                <div class="tab_txt">
                                		<s:text name="lv_you_di_chan"></s:text><span>ESTATE</span>
                                </div>
                                <div class="nav_divider"></div>
                            </div>
<%--                        </a>--%>
                    </li>
                </ul>
            </div>
            <!--end-->
            <!--新闻部分-->
            <div class="new_box">
                <div class="pic_new">
                    <ul>
                        <li>
                            <img src="${appPath}/static/www/images/cont_1.png" />
                            <div class="pic_new_cont">
                                <img src="${appPath}/static/www/images/down_mb.png" />
                                <div class="txt">
                                    <h1>
                                        <img src="${appPath}<s:text name="img1" />" alt="景区资讯" onclick="window.location.href='${appPath}/website/zhutihuodonglView.do?type=1&daima=news'">
                                    </h1>
                                    <p>
                                        <a href="${appPath}/website/toActiveContentView.do?id=${model.jqzx.ID}" target="_blank">${model.jqzx.contentTitle }</a>
                                    </p>
                                </div>
                            </div>
                            <div class="mask" onclick="window.location.href='${appPath}/website/zhutihuodonglView.do?type=1&daima=news'"></div>
                        </li>
                        <li class="list_center">
                            <img src="${appPath}/static/www/images/cont_2.png" />
                            <div class="pic_new_cont">
                                <img src="${appPath}/static/www/images/down_mb2.png" />
                                <div class="txt">
                                    <h1>
                                        <img src="${appPath}<s:text name="img2" />" alt="在线公告" onclick="window.location.href='${appPath}/website/zhutihuodonglView.do?type=1&daima=notice'"></h1>

                                    <p><a href="${appPath}/website/toActiveContentView.do?id=${model.zxgg.ID}" target="_blank">${model.zxgg.contentTitle }</a></p>

                                </div>
                            </div>
                            <div class="mask" onclick="window.location.href='${appPath}/website/zhutihuodonglView.do?type=1&daima=notice'"></div>
                        </li>
                        <li>
                            <img src="${appPath}/static/www/images/cont_3.png" />
                            <div class="pic_new_cont">
                                <img src="${appPath}/static/www/images/down_mb.png" />
                                <div class="txt">
                                    <h1>
                                        <img src="${appPath}<s:text name="img3" />" alt="活动专题" onclick="window.location.href='${appPath}/website/zhutihuodonglView.do?type=1&daima=activity'"></h1>

                                    <p><a href="${appPath}/website/toActiveContentView.do?id=${model.hdzt.ID}" target="_blank">${model.hdzt.contentTitle }</a></p>

                                </div>
                            </div>
                            <div class="mask" onclick="window.location.href='${appPath}/website/zhutihuodonglView.do?type=1&daima=activity'"></div>
                        </li>
                    </ul>
                </div>
                <!--新闻列表-->
                <div class="new_panel">
                    <div class="txtScroll-top">
                        <div class="bd">
                            <ul>
									<c:forEach items="${model.listData}" var="ml">
			                                <li><a href="${appPath}/website/toActiveContentView.do?id=${ml.ID}" target="_blank">${ml.contentTitle }</a></li>
        							</c:forEach>
                            </ul>
                        </div>
                    </div>
                    <div class="contact">
                        <ul>
                            <li class="active">
                                <div class="contact_item">
                                    <div class="contact_icon iconAll contact_icon1"></div>
                                    	<s:text name="wei_xin"></s:text>	 
                                </div>
                            </li>
                            <li>
                                <div class="contact_item">
                                    <div class="contact_icon iconAll contact_icon2"></div>
                                   		<s:text name="wei_bo"></s:text>	 
                                </div>
                            </li>
                            <li>
                                <div class="contact_item" style="text-align: right;">
                                    <div class="contact_icon iconAll contact_icon3"></div>
                                    <img src="${appPath}/static/www/images/tell2.png" style="vertical-align: middle; position: relative; top: -3px;" />
                                </div>
                            </li>
                            <li>
                                <div class="contact_item">
                                    <div class="contact_icon iconAll contact_icon4"></div>
                                 		<s:text name="ke_fu"></s:text>   
                                </div>
                            </li>
                        </ul>
                    </div>
                </div>
                <!--新闻列表 end-->
            </div>
            <!--end！-->
            <!---->
            <div class="cont_mag">
                <ul>
                    <li class="item1" onclick="window.location.href='${appPath}/website/zhutihuodonglView.do?type=1&daima=scenic'">
                        <div class="cont_item">
                            <div class="cont_icon contact_icon"></div>
                            <div class="cont_txt">
                              		<s:text name="scenic_spot"></s:text><span>SCENIC SPOT</span>
                            </div>
                            <img src="${appPath}/static/www/images/cont_foot.png" class="bg_img" />
                        </div>
                    </li>
                    <li class="item2 active" onclick="window.location.href='${appPath}/website/zhutihuodonglView.do?type=1&daima=culture'">
                        <div class="cont_item">
                            <div class="cont_icon contact_icon"></div>
                            <div class="cont_txt">
                            	   <s:text name="culture"></s:text> <span>CULTURE</span>
                            </div>
                            <img src="${appPath}/static/www/images/cont_foot.png" class="bg_img" />
                        </div>

                    </li>
                    <li class="item3" onclick="window.location.href='${appPath}/website/zhutihuodonglView.do?type=1&daima=guide'">
                        <div class="cont_item">
                            <div class="cont_icon contact_icon"></div>
                            <div class="cont_txt">
                            	   <s:text name="guide"></s:text>  <span>GUIDE</span>
                            </div>
                            <img src="${appPath}/static/www/images/cont_foot.png" class="bg_img" />
                        </div>
                    </li>
                    <li class="item4" onclick="window.location.href='${appPath}/website/zhutihuodonglView.do?type=1&daima=raiders'">
                        <div class="cont_item">
                            <div class="cont_icon contact_icon"></div>
                            <div class="cont_txt">
                          		     <s:text name="raiders"></s:text>   <span>RAIDERS</span>
                            </div>
                            <img src="${appPath}/static/www/images/cont_foot.png" class="bg_img" />
                        </div>
                    </li>
                    <li class="item5" onclick="window.location.href='${appPath}/website/aboutUsView.do?type=2&daima=about'">
                        <div class="cont_item">
                            <div class="cont_icon contact_icon"></div>
                            <div class="cont_txt">
                            	    <s:text name="about_us"></s:text>  <span>ABOUT US</span>
                            </div>
                            <img src="${appPath}/static/www/images/cont_foot.png" class="bg_img" />
                        </div>
                    </li>
                    
                    <li class="item6" onclick="window.location.href='${appPath}/website/zhutihuodonglView.do?type=1&daima=service'">
                        <div class="cont_item">
                            <div class="cont_icon contact_icon"></div>
                            <div class="cont_txt">
                             	 <s:text name="services"></s:text><span>SERVICES</span>
                            </div>
                            <img src="${appPath}/static/www/images/cont_foot.png" class="bg_img" />
                        </div>
                    </li>
                    
                    <li class="item7" onclick="window.location.href='${appPath}/website/zhutihuodonglView.do?type=1&daima=helpcenter'">
                        <div class="cont_item">
                            <div class="cont_icon contact_icon"></div>
                            <div class="cont_txt">
                             	 <s:text name="help"></s:text><span>HELP</span>
                            </div>
                            <img src="${appPath}/static/www/images/cont_foot.png" class="bg_img" />
                        </div>
                    </li>
                </ul>
            </div>
            <!---->
        </div>
    </div>
    <!--底部-->
    <%-- <div class="footer">
        <div class="footer-detail">
            <span><i class="footer-icon1"></i><s:text name="shi_jie_di_zhi_gong_yuan" /></span>
            <span><i class="footer-icon2"></i><s:text name="AAAAA" /></span>
            <span><i class="footer-icon3"></i><s:text name="shi_jia" /></span>
            <span><i class="footer-icon4"></i><s:text name="sen_lin_gong_yuan" /></span>
            <span><i class="footer-icon5"></i><s:text name="bao_hu_qu" /></span>
        </div>
        <div class="footer-weixin">
        <s:text name="gong_si" /><a style="color: #888888;" href="http://www.miitbeian.gov.cn/" target="_blank"><s:text name="bei_an_hao" /></a>
            <img src="${appPath}/static/www/images/beianicon.png" />&nbsp;<a style="color: #888888;" href="http://www.beian.gov.cn/portal/registerSystemInfo?recordcode=41032502000114" target="_blank"><s:text name="bei_an_hao2" /></a>
        </div>
    </div> --%>
    <%@ include file="footer.jsp" %>
    <!---->
    <!--弹出二维码-->
    <div class="code_box">
        <div class="code">
            <img src="${model.preurl}${model.scenicQrcode.wxqrcode_path}" alt="<s:text name="guan_zhu_weixin" />" />
            <br />
            <s:text name="guan_zhu_weixin" />
        </div>
        <div class="code">
            <img src="${model.preurl}${model.scenicQrcode.wbqrcode_path}" alt="<s:text name="guan_zhu_weibo" />" />
            <br />
         	<s:text name="guan_zhu_weibo" />
        </div>
        <div class=""></div>
        <div class=""></div>
    </div>
    <!---->
    <script src="${appPath}/static/www/js/jquery-2.1.4.min.js"></script>
    <script src="${appPath}/static/www/js/common.js"></script>
    <script src="${appPath}/static/www/js/jquery.SuperSlide.js"></script>
    <script src="${appPath}/static/www/js/slider.js"></script>
    <script src="${appPath}/static/www/js/login.js"></script>
    <script>
        $(function () {
            //导航效果
            $(".nav li ").mouseover(function () {
                $(this).append('<div class="long_nav "></div>');
                $(this).addClass("active ");
                $(this).find(".hotel_top ").show()
            })
            $(".nav li ").mouseout(function () {
                $(this).children(".long_nav ").remove();
                $(this).removeClass("active ");
                $(this).find(".hotel_top ").hide()
            })
            //轮播图
            var bannerSlider = new Slider($('#banner_tabs'), {
                time: 5000,
                delay: 400,
                event: 'hover',
                auto: true,
                mode: 'fade',
                controller: $('#bannerCtrl'),
                activeControllerCls: 'active'
            });
            //文字滚动
            jQuery(".txtScroll-top").slide({
                mainCell: ".bd ul",
                autoPage: true,
                effect: "top",
                autoPlay: true,
                delayTime: 400,
                vis: 5
            });
            //联系方式显示
            $(".contact li").each(function (i) {
                $(this).mouseover(function () {
                    $(this).addClass("active").siblings().removeClass("active");
                    $(".code_box>div:eq(" + i + ")").show().siblings().hide()
                });
                $(this).mouseout(function () {
                    $(".code_box>div:eq(" + i + ")").hide()
                })
            })
            //
            $(".cont_mag li").hover(function () {
                $(this).addClass("active").siblings().removeClass("active")
            })
        })
        $(function () {
            //导航效果
            $(".nav li").mouseover(function () {
                $(this).append('<div class="long_nav "></div>');
                $(this).addClass("active ");
                $(this).find(".hotel_top ").show()
            })
            $(".nav li").mouseout(function () {
                $(this).children(".long_nav ").remove();
                $(this).removeClass("active ");
                $(this).find(".hotel_top ").hide()
            })
        })
    </script>
    <script type="text/javascript">
        (function () {
            var hm = document.createElement("script");
            hm.src = "${appPath}/static/www/js/stat.js";
            var s = document.getElementsByTagName("script")[0];
            s.parentNode.insertBefore(hm, s);
        })();
    </script>
</body>
</s:i18n>
</html>