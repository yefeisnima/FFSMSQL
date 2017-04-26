<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html>
<!--
BeyondAdmin - Responsive Admin Dashboard Template build with Twitter Bootstrap 3.2.0
Version: 1.0.0
Purchase: http://wrapbootstrap.com
-->

<html xmlns="http://www.w3.org/1999/xhtml">
<!-- Head -->
<head>
   <base href="<%=basePath%>">
    <meta charset="utf-8" />
    <title>首页</title>

    <meta name="description" content="Dashboard" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link rel="shortcut icon" href="assets/img/favicon.png" type="image/x-icon">


    <!--Basic Styles-->
    <link href="assets/css/bootstrap.min.css" rel="stylesheet" />
    <link id="bootstrap-rtl-link" href="" rel="stylesheet" />
    <link href="assets/css/font-awesome.min.css" rel="stylesheet" />
    <link href="assets/css/weather-icons.min.css" rel="stylesheet" />

    <!--Fonts
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,400,600,700,300" rel="stylesheet" type="text/css">
-->
    <!--Beyond styles-->
    <link id="beyond-link" href="assets/css/beyond.min.css" rel="stylesheet" type="text/css" />
    <link href="assets/css/demo.min.css" rel="stylesheet" />
    <link href="assets/css/typicons.min.css" rel="stylesheet" />
    <link href="assets/css/animate.min.css" rel="stylesheet" />
    <link id="skin-link" href="" rel="stylesheet" type="text/css" />

    <!--Skin Script: Place this script in head to load scripts for skins and rtl support-->
    <script src="assets/js/skins.min.js"></script>
	
	<!-- 即时通讯 -->
	<script type="text/javascript">var wimadress="${pd.WIMIP}:${pd.WIMPORT}";</script>
	<script type="text/javascript">var oladress="${pd.OLIP}:${pd.OLPORT}";</script>
	<link rel="stylesheet" type="text/css" href="plugins/websocketInstantMsg/ext4/resources/css/ext-all.css">
	<link rel="stylesheet" type="text/css" href="plugins/websocketInstantMsg/css/websocket.css" />
	<script type="text/javascript" src="plugins/websocketInstantMsg/ext4/ext-all-debug.js"></script>
	<script type="text/javascript" src="plugins/websocketInstantMsg/websocket.js"></script>
	<!-- 即时通讯 -->
	
	<script type="text/javascript" src="static/js/myjs/swfobject.js"></script>
    <script type="text/javascript" src="static/js/myjs/fullAvatarEditor.js"></script>

    <!-- own -->
    <style type="text/css">
    .page-body {
		background: #eee;
		padding: 0px;
	}
	.my_typcn.typcn:before{
		color: white;
		font-size:25px;
		margin-top: 6px;
	}
</style>
</head>
<!-- /Head -->
<!-- Body -->
<body>
	<div id="websocket_button"></div>
    <!-- Loading Container -->
    <div class="loading-container">
        <div class="loading-progress">
            <div class="rotator">
                <div class="rotator">
                    <div class="rotator colored">
                        <div class="rotator">
                            <div class="rotator colored">
                                <div class="rotator colored"></div>
                                <div class="rotator"></div>
                            </div>
                            <div class="rotator colored"></div>
                        </div>
                        <div class="rotator"></div>
                    </div>
                    <div class="rotator"></div>
                </div>
                <div class="rotator"></div>
            </div>
            <div class="rotator"></div>
        </div>
    </div>
    <!--  /Loading Container -->
    <!-- Navbar -->
    <div class="navbar">
        <div class="navbar-inner">
            <div class="navbar-container">
                <!-- Navbar Barnd -->
                <div class="navbar-header pull-left">
                    <a href="#" class="navbar-brand">
                        <small>
                            <img src="assets/img/logo.png" alt="" />
                        </small>
                    </a>
                </div>
                <!-- /Navbar Barnd -->

                <!-- Sidebar Collapse -->
                <div class="sidebar-collapse" id="sidebar-collapse">
                    <i class="collapse-icon fa fa-bars"></i>
                </div>
                <!-- /Sidebar Collapse -->
                <!-- Account Area and Settings --->
                <div class="navbar-header pull-right">
                    <div class="navbar-account">
                        <ul class="account-area">
                            <li>
                                <a class=" dropdown-toggle " data-toggle="dropdown" title="${wether.result.weather}" href="#">
	                                <c:choose>  
									   <c:when test="${wether.result.weather =='阴'}"> 
									   		 <i class="wi-day-cloudy center-block text-center"  style="color: white;font-size:20px;margin-top: 10px;"></i>
									   </c:when>  
									   <c:when test="${wether.result.weather =='多云'}"> 
									   		 <i class="wi-day-cloudy-gusts center-block text-center"  style="color: white;font-size:20px;margin-top: 10px;"></i>
									   </c:when>  
									   <c:when test="${wether.result.weather == '晴'}"> 
									   		 <i class="wi-day-sunny center-block text-center"  style="color: white;font-size:20px;margin-top: 10px;"></i>
									   </c:when>  
									    <c:when test="${fn:contains(wether.result.weather,'雨')}">  
									   		 <i class="wi-rain center-block text-center"  style="color: white;font-size:20px;margin-top: 10px;"></i>
									   </c:when>  
									   <c:when test="${fn:contains(wether.result.weather,'雷')}">  
									   		 <i class="wi-lightning center-block text-center"  style="color: white;font-size:20px;margin-top: 10px;"></i>
									   </c:when> 
									    <c:when test="${fn:contains(wether.result.weather,'雪')}">  
									   		 <i class="wi-snow center-block text-center"  style="color: white;font-size:20px;margin-top: 10px;"></i>
									   </c:when> 
									   <c:otherwise>  
									  	 <i class="wi-night-cloudy-windy center-block text-center"  style="color: white;font-size:20px;margin-top: 10px;"></i>
									   </c:otherwise>  
									</c:choose>  
                                </a>
                                <!--Notification Dropdown-->
                                <ul class="pull-right dropdown-menu dropdown-arrow dropdown-notifications">
                                    <li>
                                            <div class="clearfix">
                                                <div class="notification-icon">
                                                    <i class="glyphicon glyphicon-hand-right " style="font-size: 25px;color: orange;"></i>
                                                </div>
                                                <div class="notification-body">
                                                    <span style="font-size: 18px;margin-top: 10px;">${wether.result.city}</span>
                                                </div>
                                              
                                            </div>
                                    </li>
                                    <li>
                                            <div class="clearfix">
                                                
                                                <div class="notification-body">
                                                    <span class="title" >PM2.5</span>
                                                    <span class="description" >${wether.result.aqi.timepoint}</span>
                                                </div>
                                                <div class="notification-extra">
                                                    <i >${wether.result.aqi.pm2_5}</i>
                                                    <span class="description" >${wether.result.aqi.quality}</span>
                                                </div>
                                            </div>
                                    </li>
                                     <li style="padding: 8px 5px;">
                                            <p style="text-indent: 10px;">${wether.result.aqi.aqiinfo.affect}  </p>
                                            <p style="text-indent: 10px;">${wether.result.aqi.aqiinfo.measure}  </p>
                                    </li>
                                    <li class="dropdown-footer ">
                                        <span>
                                             ${wether.result.daily[0].date}  ${wether.result.daily[0].week}
                                        </span>
                                        <span class="pull-right">
                                            ${wether.result.temp}°c
                                           
                                        </span>
                                    </li>
                                </ul>
                                <!--/Notification Dropdown-->
                            </li>
                            <li>
                                <a class="wave in dropdown-toggle" data-toggle="dropdown" title="Help" href="#">
                                    <i class="icon fa fa-envelope"></i>
                                    <span class="badge">3</span>
                                </a>
                               
                                <!--Messages Dropdown-->
                                <ul class="pull-right dropdown-menu dropdown-arrow dropdown-messages">
                                    <li>
                                        <a href="#">
                                            <img src="assets/img/avatars/divyia.jpg" class="message-avatar" alt="Divyia Austin">
                                            <div class="message">
                                                <span class="message-sender">
                                                    Divyia Austin
                                                </span>
                                                <span class="message-time">
                                                    2 minutes ago
                                                </span>
                                                <span class="message-subject">
                                                    Here's the recipe for apple pie
                                                </span>
                                                <span class="message-body">
                                                    to identify the sending application when the senders image is shown for the main icon
                                                </span>
                                            </div>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#">
                                            <img src="assets/img/avatars/bing.png" class="message-avatar" alt="Microsoft Bing">
                                            <div class="message">
                                                <span class="message-sender">
                                                    Bing.com
                                                </span>
                                                <span class="message-time">
                                                    Yesterday
                                                </span>
                                                <span class="message-subject">
                                                    Bing Newsletter: The January Issue‏
                                                </span>
                                                <span class="message-body">
                                                    Discover new music just in time for the Grammy® Awards.
                                                </span>
                                            </div>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#">
                                            <img src="assets/img/avatars/adam-jansen.jpg" class="message-avatar" alt="Divyia Austin">
                                            <div class="message">
                                                <span class="message-sender">
                                                    Nicolas
                                                </span>
                                                <span class="message-time">
                                                    Friday, September 22
                                                </span>
                                                <span class="message-subject">
                                                    New 4K Cameras
                                                </span>
                                                <span class="message-body">
                                                    The 4K revolution has come over the horizon and is reaching the general populous
                                                </span>
                                            </div>
                                        </a>
                                    </li>
                                </ul>
                                <!--/Messages Dropdown-->
                            </li>
								
							<li class="purple" onclick="creatw();">
								<a href="javascript:;" class="dropdown-toggle" data-toggle="dropdown" id ="meassge">
									<span  class="typcn typcn-group-outline center-block text-center my_typcn"  ></span>
									<span class="badge" id ="meassgeNum"></span>
								</a>
							</li>
					
                            <li>
                                <a class="dropdown-toggle" data-toggle="dropdown" title="Tasks" href="#">
                                    <i class="icon fa fa-tasks"></i>
                                    <span class="badge">4</span>
                                </a>
                                <!--Tasks Dropdown-->
                                <ul class="pull-right dropdown-menu dropdown-tasks dropdown-arrow ">
                                    <li class="dropdown-header bordered-darkorange">
                                        <i class="fa fa-tasks"></i>
                                        4 Tasks In Progress
                                    </li>
                                    <li>
                                        <a href="#">
                                            <div class="clearfix">
                                                <span class="pull-left">Account Creation</span>
                                                <span class="pull-right">65%</span>
                                            </div>

                                            <div class="progress progress-xs">
                                                <div style="width:65%" class="progress-bar"></div>
                                            </div>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#">
                                            <div class="clearfix">
                                                <span class="pull-left">Profile Data</span>
                                                <span class="pull-right">35%</span>
                                            </div>

                                            <div class="progress progress-xs">
                                                <div style="width:35%" class="progress-bar progress-bar-success"></div>
                                            </div>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#">
                                            <div class="clearfix">
                                                <span class="pull-left">Updating Resume</span>
                                                <span class="pull-right">75%</span>
                                            </div>

                                            <div class="progress progress-xs">
                                                <div style="width:75%" class="progress-bar progress-bar-darkorange"></div>
                                            </div>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#">
                                            <div class="clearfix">
                                                <span class="pull-left">Adding Contacts</span>
                                                <span class="pull-right">10%</span>
                                            </div>

                                            <div class="progress progress-xs">
                                                <div style="width:10%" class="progress-bar progress-bar-warning"></div>
                                            </div>
                                        </a>
                                    </li>
                                    <li class="dropdown-footer">
                                        <a href="#">
                                            See All Tasks
                                        </a>
                                        <button class="btn btn-xs btn-default shiny darkorange icon-only pull-right"><i class="fa fa-check"></i></button>
                                    </li>
                                </ul>
                                <!--/Tasks Dropdown-->
                            </li>
                            <li>
                                <a class="login-area dropdown-toggle" data-toggle="dropdown">
                                    <div class="avatar" title="View your public profile">
                                        <img src="assets/img/avatars/adam-jansen.jpg">
                                    </div>
                                    <section>
                                        <h2><span class="profile" style="display:inline-block;width:80px;"><span>${user.NAME}</span></span></h2>
                                    </section>
                                </a>
                                <!--Login Area Dropdown-->
                                <ul class="pull-right dropdown-menu dropdown-arrow dropdown-login-area">
                                    <li class="username"><a>${user.NAME}</a></li>
                                    <li class="email"><a>${user.EMAIL}</a></li>
                                    <!--Avatar Area-->
                                    <li>
                                        <div class="avatar-area">
                                            <img src="assets/img/avatars/adam-jansen.jpg" class="avatar">
                                            <span class="caption" data-toggle="modal" data-target="#myModal">修改头像</span>
                                        </div>

                                    </li>                                    <!--Avatar Area-->
                                   <!-- <li class="edit">
                                        <a href="profile.html" class="pull-left">Profile</a>
                                        <a href="#" class="pull-right">Setting</a>
                                    </li> --> 
                                    <!--Theme Selector Area-->
                                    <li class="theme-area">
                                        <ul class="colorpicker" id="skin-changer">
                                            <li><a class="colorpick-btn"  style="background-color:#5DB2FF;" rel="assets/css/skins/blue.min.css"></a></li>
                                            <li><a class="colorpick-btn"  style="background-color:#2dc3e8;" rel="assets/css/skins/azure.min.css"></a></li>
                                            <li><a class="colorpick-btn"  style="background-color:#03B3B2;" rel="assets/css/skins/teal.min.css"></a></li>
                                            <li><a class="colorpick-btn"  style="background-color:#53a93f;" rel="assets/css/skins/green.min.css"></a></li>
                                            <li><a class="colorpick-btn"  style="background-color:#FF8F32;" rel="assets/css/skins/orange.min.css"></a></li>
                                            <li><a class="colorpick-btn"  style="background-color:#cc324b;" rel="assets/css/skins/pink.min.css"></a></li>
                                            <li><a class="colorpick-btn"  style="background-color:#AC193D;" rel="assets/css/skins/darkred.min.css"></a></li>
                                            <li><a class="colorpick-btn"  style="background-color:#8C0095;" rel="assets/css/skins/purple.min.css"></a></li>
                                            <li><a class="colorpick-btn"  style="background-color:#0072C6;" rel="assets/css/skins/darkblue.min.css"></a></li>
                                            <li><a class="colorpick-btn"  style="background-color:#585858;" rel="assets/css/skins/gray.min.css"></a></li>
                                            <li><a class="colorpick-btn"  style="background-color:#474544;" rel="assets/css/skins/black.min.css"></a></li>
                                            <li><a class="colorpick-btn"  style="background-color:#001940;" rel="assets/css/skins/deepblue.min.css"></a></li>
                                        </ul>
                                    </li>
                                    <!--/Theme Selector Area-->
                                    <li class="dropdown-footer">
                                        <a href="login.html">
                                            Sign out
                                        </a>
                                    </li>
                                </ul>
                                <!--/Login Area Dropdown-->
                            </li>
                            <!-- /Account Area -->
                            <!--Note: notice that setting div must start right after account area list.
                            no space must be between these elements-->
                            <!-- Settings -->
                        </ul><div class="setting">
                            <a id="btn-setting" title="Setting" href="#">
                                <i class="icon glyphicon glyphicon-cog"></i>
                            </a>
                        </div><div class="setting-container">
                            <label>
                                <input type="checkbox" id="checkbox_fixednavbar">
                                <span class="text">Fixed Navbar</span>
                            </label>
                            <label>
                                <input type="checkbox" id="checkbox_fixedsidebar">
                                <span class="text">Fixed SideBar</span>
                            </label>
                            <label>
                                <input type="checkbox" id="checkbox_fixedbreadcrumbs">
                                <span class="text">Fixed BreadCrumbs</span>
                            </label>
                            <label>
                                <input type="checkbox" id="checkbox_fixedheader">
                                <span class="text">Fixed Header</span>
                            </label>
                        </div>
                        <!-- Settings -->
                    </div>
                </div>
                <!-- /Account Area and Settings -->
            </div>
        </div>
    </div>
    <!-- /Navbar -->
    <!-- 模态框（Modal） -->
	<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" >
		<div class="modal-dialog" style="width:48%;">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal" aria-hidden="true">
						&times;
					</button>
					<h4 class="modal-title" id="myModalLabel">
						修改头像
					</h4>
				</div>
				<div class="modal-body" >
					  <div style=" margin: 0 auto;">
				        <h1 style="text-align: center">富头像上传编辑器演示</h1>
				        <div>
				            <p id="swfContainer">
				                本组件需要安装Flash Player后才可使用，请从
				                    <a href="http://www.adobe.com/go/getflashplayer">这里</a>
				                下载安装。
				            </p>
				        </div>
				        <button type="button" id="upload">自定义上传按钮</button>
				    </div>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">关闭
					</button>
					<button type="button" class="btn btn-primary">
						提交更改
					</button>
				</div>
			</div><!-- /.modal-content -->
		</div><!-- /.modal -->
	</div>
       <!-- 模态框（Modal） -->
    
    <!-- Main Container -->
    <div class="main-container container-fluid">
        <!-- Page Container -->
        <div class="page-container">
            <!-- Page Sidebar -->
            <div class="page-sidebar" id="sidebar">
                <!-- Page Sidebar Header-->
                <div class="sidebar-header-wrapper">
                    <input type="text" class="searchinput" />
                    <i class="searchicon fa fa-search"></i>
                    <div class="searchhelper">Search Reports, Charts, Emails or Notifications</div>
                </div>
                <!-- /Page Sidebar Header -->
                <!-- Sidebar Menu -->
                <ul class="nav sidebar-menu">
                    <!--Dashboard-->
                    <li class="active">
                        <a href="index.html">
                            <i class="menu-icon glyphicon glyphicon-home"></i>
                            <span class="menu-text"> Dashboard </span>
                        </a>
                    </li>
                    
                    <c:forEach items="${menuList}" var="menu">
							<c:if test="${menu.hasMenu}">
							<li id="lm${menu.MENU_ID }" >
								  <a style="cursor:pointer;" class="menu-dropdown" >
									<i class="menu-icon glyphicon  ${menu.MENU_ICON == null ? 'icon-desktop' : menu.MENU_ICON}"></i>
									<span class="menu-text">${menu.MENU_NAME }</span>
									<i class="menu-expand"></i>
								  </a>
								
								  <ul class="submenu">
										<c:forEach items="${menu.subMenu}" var="sub">
											<c:if test="${sub.hasMenu}">
											<c:choose>
												<c:when test="${not empty sub.MENU_URL}">
												<li id="z${sub.MENU_ID }">
												<a style="cursor:pointer;" target="mainFrame"  onclick="siMenu('z${sub.MENU_ID }','lm${menu.MENU_ID }','${sub.MENU_NAME }','${sub.MENU_URL }')">
												  <span class="menu-text">${sub.MENU_NAME }</span>
												</a>
												</li>
												</c:when>
												<c:otherwise>
												<li><a href="javascript:void(0);"><i class="icon-double-angle-right"></i><span class="menu-text">${sub.MENU_NAME }</span></a></li>
												</c:otherwise>
											</c:choose>
											</c:if>
										</c:forEach>
							  		</ul>
							</li>
							</c:if>
						</c:forEach>
                </ul>
                <!-- /Sidebar Menu -->
            </div>
            <!-- /Page Sidebar -->
            <!-- Page Content -->
        
        
            <div class="page-content">
	            <div class="page-header position-relative">
	                    <div class="header-title">
	                        <h1>
	                            Dashboard
	                        </h1>
	                    </div>
	                    <!--Header Buttons-->
	                    <div class="header-buttons">
	                        <a class="sidebar-toggler" href="#">
	                            <i class="fa fa-arrows-h"></i>
	                        </a>
	                        <a class="refresh" id="refresh-toggler" href="">
	                            <i class="glyphicon glyphicon-refresh"></i>
	                        </a>
	                        <a class="fullscreen" id="fullscreen-toggler" href="#">
	                            <i class="glyphicon glyphicon-fullscreen"></i>
	                        </a>
	                    </div>
	                    <!--Header Buttons End-->
	                </div>
            
                <!-- Page Breadcrumb -->
                	 <div class="page-body">
                	
                	<div >
						<iframe name="mainFrame" id="mainFrame"  scrolling="no" frameborder="0" src="tab.do" style="margin:0 auto;width:100%;"></iframe>
					</div>
					<div/>
                <!-- /Page Body -->
                
            </div>
            <!-- /Page Content -->
        </div>
    
        <!-- /Page Container -->
        <!-- Main Container -->

    </div>
 
    <!--Basic Scripts-->
    <script src="assets/js/jquery-2.0.3.min.js"></script>
    <script src="assets/js/bootstrap.min.js"></script>

    <!--Beyond Scripts-->
    <script src="assets/js/beyond.min.js"></script>


    <!--Page Related Scripts-->
    <!--Sparkline Charts Needed Scripts-->
    <script src="assets/js/charts/sparkline/jquery.sparkline.js"></script>
    <script src="assets/js/charts/sparkline/sparkline-init.js"></script>

    <!--Easy Pie Charts Needed Scripts-->
    <script src="assets/js/charts/easypiechart/jquery.easypiechart.js"></script>
    <script src="assets/js/charts/easypiechart/easypiechart-init.js"></script>

    <!--Flot Charts Needed Scripts-->
    <script src="assets/js/charts/flot/jquery.flot.js"></script>
    <script src="assets/js/charts/flot/jquery.flot.resize.js"></script>
    <script src="assets/js/charts/flot/jquery.flot.pie.js"></script>
    <script src="assets/js/charts/flot/jquery.flot.tooltip.js"></script>
    <script src="assets/js/charts/flot/jquery.flot.orderBars.js"></script>

    <script>

		function cmainFrame(){
			var hmain = document.getElementById("mainFrame");
			var bheight = document.documentElement.clientHeight;
			hmain .style.width = '100%';
			hmain .style.height = (bheight  - 51 - 40) + 'px';
			
		}
		cmainFrame();
		window.onresize=function(){  
			cmainFrame();
		};
		
    swfobject.addDomLoadEvent(function () {
	
    var swf = new fullAvatarEditor("swfContainer", {
        id: 'swf',
        upload_url: '/Home/UploadAction',
        src_upload: 2,  
        isShowUploadResultIcon: false,
        src_size: "2MB",
        src_size_over_limit: "文件大小超出2MB，请重新选择图片。",
        src_box_width: "300",
        src_box_height: "300",
        tab_visible: true,
        browse_box_width: "300",
        browse_box_height: "300",
        avatar_sizes: "200*200",
    }, function (msg) {
        switch (msg.code) {
            // case 1: alert("页面成功加载了组件！"); break;
            // case 2: alert("已成功加载默认指定的图片到编辑面板。"); break;
            case 3:
                if (msg.type == 0) {
                    alert("摄像头已准备就绪且用户已允许使用。");
                }
                else if (msg.type == 1) {
                    alert("摄像头已准备就绪但用户未允许使用！");
                }
                else {
                    alert("摄像头被占用！");
                }
                break;
            case 5:
                if (msg.type == 0) {
                    if (msg.content.sourceUrl) {
                        alert("原图片已成功保存至服务器，url为：\n" + msg.content.sourceUrl);
                    }
                    alert("头像已成功保存至服务器，url为：\n" + msg.content.avatarUrls.join("\n"));
                }
                break;
        }
    }
    );
    document.getElementById("upload").onclick = function () {
        swf.call("upload");
    };
});
		
</script>
  

	<script type="text/javascript" src="static/js/myjs/head.js"></script>
	<!--引入弹窗组件start-->
	<script type="text/javascript" src="plugins/attention/zDialog/zDrag.js"></script>
	<script type="text/javascript" src="plugins/attention/zDialog/zDialog.js"></script>
	<!--引入弹窗组件end-->
	<script type="text/javascript" src="static/js/jquery.tips.js"></script>
	<!-- 引入 -->
	
	<script type="text/javascript" src="static/js/jquery.cookie.js"></script>
	
	
</body>
<!--  /Body -->
</html>
