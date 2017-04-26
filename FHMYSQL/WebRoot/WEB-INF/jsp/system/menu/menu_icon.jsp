<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html lang="en">
	<head>
		<base href="<%=basePath%>">
		
		<meta charset="utf-8" />
		<title></title>
		<meta name="description" content="overview & stats" />
		<meta name="viewport" content="width=device-width, initial-scale=1.0" />
		<link href="static/css/bootstrap.min.css" rel="stylesheet" />
		<link href="static/css/bootstrap-responsive.min.css" rel="stylesheet" />
		<link rel="stylesheet" href="static/css/font-awesome.min.css" />
		<link rel="stylesheet" href="static/css/ace.min.css" />
		<link rel="stylesheet" href="static/css/ace-responsive.min.css" />
		<link rel="stylesheet" href="static/css/ace-skins.min.css" />
		
		<script type="text/javascript" src="static/js/jquery-1.7.2.js"></script>	



       <link href="assets/css/bootstrap.min.css" rel="stylesheet" />


		<script type="text/javascript">
				
				$(top.hangge());
				//保存
				function save(){
					if($("#MENU_ICON").val()==""){
						alert('请选择图标');
						return false;
					}
					$("#menuForm").submit();
					$("#zhongxin").hide();
					$("#zhongxin2").show();
				}
			function seticon(icon){
				$("#MENU_ICON").val(icon);
			}	
			
		</script>
		
	</head>
	
	<body>
		<form action="menu/editicon.do" name="menuForm" id="menuForm" method="post">
			<input type="hidden" name="MENU_ID" id="menuId" value="${pd.MENU_ID}"/>
			<input type="hidden" name="MENU_ICON" id="MENU_ICON" value=""/>
			<div id="zhongxin">
			<table id="table_report" class="table table-striped table-bordered table-hover">
				
				<tr>
					<td><label onclick="seticon('glyphicon glyphicon-pencil');"><input name="form-field-radio" type="radio" value="icon-edit"><span class="lbl">&nbsp;<i class="glyphicon glyphicon-pencil"></i></span></label></td>
					<td><label onclick="seticon('glyphicon glyphicon-tasks');"><input name="form-field-radio" type="radio" value="icon-edit"><span class="lbl">&nbsp;<i class="glyphicon glyphicon-tasks"></i></span></label></td>
					<td><label onclick="seticon('glyphicon glyphicon-paperclip');"><input name="form-field-radio" type="radio" value="icon-edit"><span class="lbl">&nbsp;<i class="glyphicon glyphicon-paperclip"></i></span></label></td>
					<td><label onclick="seticon('glyphicon glyphicon-align-justify');"><input name="form-field-radio" type="radio" value="icon-edit"><span class="lbl">&nbsp;<i class="glyphicon glyphicon-align-justify"></i></span></label></td>
					<td><label onclick="seticon('glyphicon glyphicon-list-alt');"><input name="form-field-radio" type="radio" value="icon-edit"><span class="lbl">&nbsp;<i class="glyphicon glyphicon-list-alt"></i></span></label></td>
					<td><label onclick="seticon('glyphicon glyphicon-pencil');"><input name="form-field-radio" type="radio" value="icon-edit"><span class="lbl">&nbsp;<i class="glyphicon glyphicon-pencil"></i></span></label></td>
					<td><label onclick="seticon('glyphicon glyphicon-tags');"><input name="form-field-radio" type="radio" value="icon-edit"><span class="lbl">&nbsp;<i class="glyphicon glyphicon-tags"></i></span></label></td>
					<td><label onclick="seticon('glyphicon glyphicon-calendar');"><input name="form-field-radio" type="radio" value="icon-edit"><span class="lbl">&nbsp;<i class="glyphicon glyphicon-calendar"></i></span></label></td>
					<td><label onclick="seticon('glyphicon glyphicon-phone-alt');"><input name="form-field-radio" type="radio" value="icon-edit"><span class="lbl">&nbsp;<i class="glyphicon glyphicon-phone-alt"></i></span></label></td>
				</tr>
				<tr>
					<td><label onclick="seticon('glyphicon glyphicon-picture');"><input name="form-field-radio" type="radio" value="icon-edit"><span class="lbl">&nbsp;<i class="glyphicon glyphicon-picture"></i></span></label></td>
					<td><label onclick="seticon('glyphicon glyphicon-book');"><input name="form-field-radio" type="radio" value="icon-edit"><span class="lbl">&nbsp;<i class="glyphicon glyphicon-book"></i></span></label></td>
					<td><label onclick="seticon('glyphicon glyphicon-time');"><input name="form-field-radio" type="radio" value="icon-edit"><span class="lbl">&nbsp;<i class="glyphicon glyphicon-time"></i></span></label></td>
					<td><label onclick="seticon('glyphicon glyphicon-user');"><input name="form-field-radio" type="radio" value="icon-edit"><span class="lbl">&nbsp;<i class="glyphicon glyphicon-user"></i></span></label></td>
					<td><label onclick="seticon('glyphicon glyphicon-search');"><input name="form-field-radio" type="radio" value="icon-edit"><span class="lbl">&nbsp;<i class="glyphicon glyphicon-search"></i></span></label></td>
					<td><label onclick="seticon('glyphicon glyphicon-cloud');"><input name="form-field-radio" type="radio" value="icon-edit"><span class="lbl">&nbsp;<i class="glyphicon glyphicon-cloud"></i></span></label></td>
					<td><label onclick="seticon('glyphicon glyphicon-music');"><input name="form-field-radio" type="radio" value="icon-edit"><span class="lbl">&nbsp;<i class="glyphicon glyphicon-music"></i></span></label></td>
					<td><label onclick="seticon('glyphicon glyphicon-heart');"><input name="form-field-radio" type="radio" value="icon-edit"><span class="lbl">&nbsp;<i class="glyphicon glyphicon-heart"></i></span></label></td>
					<td><label onclick="seticon('glyphicon glyphicon-film');"><input name="form-field-radio" type="radio" value="icon-edit"><span class="lbl">&nbsp;<i class="glyphicon glyphicon-film"></i></span></label></td>
				</tr>
				<tr>
				<td style="text-align: center;" colspan="100">
					<a class="btn btn-mini btn-primary" onclick="save();">保存</a>
					<a class="btn btn-mini btn-danger" onclick="top.Dialog.close();">取消</a>
				</td>
			</tr>
			</table>
			</div>
			<div id="zhongxin2" class="center" style="display:none"><img src="static/images/jzx.gif" /></div>
		</form>
	</body>
</html>