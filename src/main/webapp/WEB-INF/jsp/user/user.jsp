<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="/common/base_path.jsp" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!--_meta 作为公共模版分离出去-->
<!DOCTYPE HTML>
<html>
<head>
<meta charset="utf-8">
<meta name="renderer" content="webkit|ie-comp|ie-stand">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="viewport" content="width=device-width,initial-scale=1,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no" />
<meta http-equiv="Cache-Control" content="no-siteapp" />
<link rel="Bookmark" href="favicon.ico" >
<link rel="Shortcut Icon" href="favicon.ico" />
<!--[if lt IE 9]>
<script type="text/javascript" src="lib/html5.js"></script>
<script type="text/javascript" src="lib/respond.min.js"></script>
<![endif]-->
 <%-- 通用的CSS--%>
 <%@ include file="/common/common_css.jsp" %>
<!--[if IE 6]>
<script type="text/javascript" src="http://lib.h-ui.net/DD_belatedPNG_0.0.8a-min.js" ></script>
<script>DD_belatedPNG.fix('*');</script><![endif]-->
<!--/meta 作为公共模版分离出去-->

<title>密码信息 - 个人信息管理- 成绩信息管理系统 v1.0</title>
<meta name="keywords" content="H-ui.admin v3.0,H-ui网站后台模版,后台模版下载,后台管理系统模版,HTML后台模版下载">
<meta name="description" content="H-ui.admin v3.0，是一款由国人开发的轻量级扁平化网站后台模板，完全免费开源的网站后台管理系统模版，适合中小型CMS后台系统。">
</head>
<body>
<!--_header 作为公共模版分离出去-->
<%@ include file="/common/header.jsp" %>
<!--/_header 作为公共模版分离出去-->

<!--_menu 作为公共模版分离出去-->
<aside class="Hui-aside">
	
	<div class="menu_dropdown bk_2">
	<c:if  test  = "${sessionScope.roleId eq '1'||sessionScope.roleId eq '2'}"> 
		<dl id="menu-article">
			<dt><i class="Hui-iconfont">&#xe616;</i> 教师管理<i class="Hui-iconfont menu_dropdown-arrow">&#xe6d5;</i></dt>
			<dd>
				<ul>
					<c:if  test  = "${sessionScope.roleId eq '1'}">
						<li>
							<a href="<%=basePath %>/t/tPage.action" title="教师信息">教师信息</a>
						</li>
					</c:if>
					<c:if  test  = "${sessionScope.roleId eq '2'}">
						<li>
							<a href="<%=basePath %>/t/tpPage.action" title="教师信息">教师信息查询</a>
						</li>
					</c:if>
				</ul>
			</dd>
		</dl>
	</c:if>
	<c:if  test  = "${sessionScope.roleId eq '1'||sessionScope.roleId eq '2'}"> 
		<dl id="menu-member">
			<dt><i class="Hui-iconfont">&#xe60d;</i> 学生管理<i class="Hui-iconfont menu_dropdown-arrow">&#xe6d5;</i></dt>
			<dd>
				<ul>
					<li>
						<a href="<%=basePath %>/s/sPage.action" title="学生信息">学生信息</a>
					</li>
				</ul>
			</dd>
		</dl>
		</c:if>
		
		<dl id="menu-product">
			<dt><i class="Hui-iconfont">&#xe720;</i> 成绩管理<i class="Hui-iconfont menu_dropdown-arrow">&#xe6d5;</i></dt>
			<dd>
				<ul>
					<c:if  test  = "${sessionScope.roleId eq '1'||sessionScope.roleId eq '2'}"> 
						<li>
							<a href="<%=basePath %>/score/scorePage.action" title="成绩管理">成绩管理</a>
						</li>
					
					</c:if>
					<c:if  test  = "${sessionScope.roleId eq '3'}"> 
						<li>
						<a href="<%=basePath %>/score/personScorePage.action" title="成绩管理">成绩查询</a>
						</li>
					</c:if>
				</ul>
			</dd>
		</dl>
		<c:if  test  = "${sessionScope.roleId eq '1'}"> 
		<dl id="menu-product">
			<dt><i class="Hui-iconfont">&#xe637;</i> 班级管理<i class="Hui-iconfont menu_dropdown-arrow">&#xe6d5;</i></dt>
			<dd>
				<ul>
					<li>
						<a href="<%=basePath %>/tclass/tclassPage.action" title="班级管理">班级管理</a>
					</li>
				</ul>
			</dd>
		</dl>
		</c:if>
		<c:if  test  = "${sessionScope.roleId eq '1'}"> 
		<dl id="menu-product">
			<dt><i class="Hui-iconfont">&#xe601;</i> 科目管理<i class="Hui-iconfont menu_dropdown-arrow">&#xe6d5;</i></dt>
			<dd>
				<ul>
					<li>
						<a href="<%=basePath %>/sub/subPage.action" title="科目管理">科目管理</a>
					</li>
				</ul>
			</dd>
		</dl>
		</c:if>

		<c:if  test  = "${sessionScope.roleId eq '1'}"> 
		<dl id="menu-product">
			<dt><i class="Hui-iconfont">&#xe639;</i> 课程管理<i class="Hui-iconfont menu_dropdown-arrow">&#xe6d5;</i></dt>
			<dd>
				<ul>
					<li>
						<a href="<%=basePath %>/sc/scPage.action" title="课程管理">课程管理</a>
					</li>
				</ul>
			</dd>
		</dl>
		</c:if>
		<c:if  test  = "${sessionScope.roleId eq '1'}"> 
		<dl id="menu-admin">
			<dt><i class="Hui-iconfont">&#xe62d;</i> 用户管理<i class="Hui-iconfont menu_dropdown-arrow">&#xe6d5;</i></dt>
			<dd>
				<ul>
					<li>
						<a href="<%=basePath %>/role/rolePage.action" title="角色管理">角色管理</a>
					</li>
					<li>
						<a href="<%=basePath %>/user/userPage.action" title="用户列表">用户列表</a>
					</li>
				</ul>
			</dd>
		</dl>
		</c:if>
		<c:if  test  = "${sessionScope.roleId eq '1'}"> 
		<dl id="menu-system">
			<dt><i class="Hui-iconfont">&#xe62e;</i> 系统管理<i class="Hui-iconfont menu_dropdown-arrow">&#xe6d5;</i></dt>
			<dd>
				<ul>
					<li>
						<a href="<%=basePath %>/log/logPage.action" title="系统日志">系统日志</a>
					</li>
				</ul>
			</dd>
		</dl>
		</c:if>
		<dl id="menu-system">
			<dt class="selected"><i class="Hui-iconfont">&#xe62e;</i> 个人信息管理<i class="Hui-iconfont menu_dropdown-arrow">&#xe6d5;</i></dt>
			<dd style="display:block">
				<ul>
					<li class="current">
						<a href="<%=basePath %>/user/userInfoPage.action" title="密码修改">密码修改</a>
					</li>
				</ul>
			</dd>
		</dl>
	</div>
</aside>
<div class="dislpayArrow hidden-xs">
	<a class="pngfix" href="javascript:void(0);" onClick="displaynavbar(this)"></a>
</div>
<!--/_menu 作为公共模版分离出去-->

<section class="Hui-article-box">
	<nav class="breadcrumb"><i class="Hui-iconfont">&#xe67f;</i> 首页
		<span class="c-gray en">&gt;</span>
		个人信息管理
		<span class="c-gray en">&gt;</span>
		密码修改
		<a class="btn btn-success radius r" style="line-height:1.6em;margin-top:3px" href="javascript:location.replace(location.href);" title="刷新" ><i class="Hui-iconfont">&#xe68f;</i></a>
	</nav>
	<div class="Hui-article">
		<article class="cl pd-20">
		<form action="" method="post" class="form form-horizontal" id="form-member-add">
		<div class="row cl">
			<label class="form-label col-xs-4 col-sm-3"><span class="c-red">*</span>用户id：</label>
			<div class="formControls col-xs-8 col-sm-9">
				<input type="text" class="input-text" readonly="readonly" value="${myUser.userId }" placeholder="" id="userId" name="userId">
			</div>
		</div>
		<div class="row cl">
			<label class="form-label col-xs-4 col-sm-3"><span class="c-red">*</span>用户名：</label>
			<div class="formControls col-xs-8 col-sm-9">
				<input type="text" class="input-text" readonly="readonly" value="${myUser.userName }" placeholder="" id="userName" name="userName">
			</div>
		</div>
		<div class="row cl">
			<label class="form-label col-xs-4 col-sm-3"><span class="c-red">*</span>原密码：</label>
			<div class="formControls col-xs-8 col-sm-9">
				<input type="password" class="input-text" placeholder="" id="oldPasswod" name="oldPasswod">
			</div>
		</div>
		<div class="row cl">
			<label class="form-label col-xs-4 col-sm-3"><span class="c-red">*</span>新密码：</label>
			<div class="formControls col-xs-8 col-sm-9">
				<input type="password" class="input-text" placeholder="" id="userPasswod" name="userPasswod">
			</div>
		</div>
		
		<div class="row cl">
			<div class="col-xs-8 col-sm-9 col-xs-offset-4 col-sm-offset-3">
				<input class="btn btn-primary radius" type="submit" id="formSubmit" value="&nbsp;&nbsp;修改&nbsp;&nbsp;">
			</div>
		</div>
	</form>
		</article>
	</div>
</section>

<!--_footer 作为公共模版分离出去-->
<%-- 通用的JS--%>
<%@ include file="/common/common_js.jsp" %>
<!--/_footer /作为公共模版分离出去-->

<!--请在下方写此页面业务相关的脚本-->
<script type="text/javascript" src="<%=basePath %>/lib/My97DatePicker/4.8/WdatePicker.js"></script>
<script type="text/javascript" src="<%=basePath %>/lib/datatables/1.10.0/jquery.dataTables.min.js"></script>
<script type="text/javascript" src="<%=basePath %>/lib/jquery.validation/1.14.0/jquery.validate.js"></script> 
<script type="text/javascript" src="<%=basePath %>/lib/jquery.validation/1.14.0/validate-methods.js"></script> 
<script type="text/javascript" src="<%=basePath %>/lib/jquery.validation/1.14.0/messages_zh.js"></script> 
<script type="text/javascript" src="<%=basePath %>/lib/laypage/1.2/laypage.js"></script>
<script type="text/javascript">
$(function(){
	$('.skin-minimal input').iCheck({
		checkboxClass: 'icheckbox-blue',
		radioClass: 'iradio-blue',
		increaseArea: '20%'
	});
	
	$("#form-member-add").validate({
		rules:{
			userId:{
				required:true,
			},
			userName:{
				required:true,
			},
			oldPasswod:{
				required:true,
			},
			userPasswod:{
				required:true,
			},
			
		},
		onkeyup:false,
		focusCleanup:true,
		success:"valid",
		submitHandler:function(form){
			$.ajax({
                type: 'POST', data: $("#form-member-add").serialize(), url: '${basePath}/user/editPass.action',
                success: function (returnData) { //...
                    window.parent.layer.msg(returnData);//提示语，最后显示，3s会自动消失
                    var piframe = $("#_iframe", window.parent.document);
                    piframe.attr("src", piframe.attr("src"));
					var index = parent.layer.getFrameIndex(window.name);
					//parent.$('.btn-refresh').click();
					parent.layer.close(index);
                },
                error: function (xhr) {
                    //...
                    window.parent.layer.msg("添加失败！");
                }
            });
		}
	});
	
});
</script>
<!--/请在上方写此页面业务相关的脚本-->
</body>
</html>