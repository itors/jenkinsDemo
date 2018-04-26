<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="/common/base_path.jsp" %>

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

<title>修改成绩 - 成绩信息管理系统 v1.0</title>
<meta name="keywords" content="H-ui.admin v3.0,H-ui网站后台模版,后台模版下载,后台管理系统模版,HTML后台模版下载">
<meta name="description" content="H-ui.admin v3.0，是一款由国人开发的轻量级扁平化网站后台模板，完全免费开源的网站后台管理系统模版，适合中小型CMS后台系统。">
</head>
<body>
<article class="cl pd-20">
	<form action="" method="post" class="form form-horizontal" id="form-member-add">
		<div class="row cl">
			<label class="form-label col-xs-4 col-sm-3"><span class="c-red">*</span>学生姓名：</label>
			<div class="formControls col-xs-8 col-sm-9">
				<input type="text" readonly="readonly" class="input-text" value="${t.stuName }" placeholder="" id="stuName" name="stuName">
			</div>
		</div>
		
		<div class="row cl">
			<label class="form-label col-xs-4 col-sm-3"><span class="c-red">*</span>平时成绩：</label>
			<div class="formControls col-xs-8 col-sm-9">
				<input type="text" class="score input-text" value="${t.dailyScore }" placeholder="" id="dailyScore" name="dailyScore">
			</div>
		</div>
		
		<div class="row cl">
			<label class="form-label col-xs-4 col-sm-3"><span class="c-red">*</span>实验成绩：</label>
			<div class="formControls col-xs-8 col-sm-9">
				<input type="text" class="score input-text" value="${t.expScore }"  placeholder="" id="expScore" name="expScore">
			</div>
		</div>
		<div class="row cl">
			<label class="form-label col-xs-4 col-sm-3"><span class="c-red">*</span>期末成绩：</label>
			<div class="formControls col-xs-8 col-sm-9">
				<input type="text" class="score input-text" value="${t.examScore }" placeholder="" id="examScore" name="examScore">
			</div>
		</div>
		<div class="row cl">
			<label class="form-label col-xs-4 col-sm-3"><span class="c-red">*</span>总成绩：</label>
			<div class="formControls col-xs-8 col-sm-9">
				<input type="text" class="score input-text" value="${t.totalScore }"  placeholder="" id="totalScores" name="totalScores">
			</div>
		</div>
		<div class="row cl">
			<label class="form-label col-xs-4 col-sm-3"><span class="c-red">*</span>修改人：</label>
			<div class="formControls col-xs-8 col-sm-9">
				<input type="text" class="input-text" placeholder="" id="modifier" name="modifier">
			</div>
		</div>
		<div class="row cl">
			<div class="col-xs-8 col-sm-9 col-xs-offset-4 col-sm-offset-3">
				<input class="btn btn-primary radius" type="submit" id="formSubmit" value="&nbsp;&nbsp;修改&nbsp;&nbsp;">
			</div>
		</div>
		<input type="hidden" class="input-text" value="${t.scoreId }" name="scoreId" id="scoreId">
		<input type="hidden" class="input-text" value="0" name="review" id="review">
	</form>
</article>

<!--_footer 作为公共模版分离出去-->
<%-- 通用的JS--%>
<%@ include file="/common/common_js.jsp" %>
<!--/_footer /作为公共模版分离出去-->

<!--请在下方写此页面业务相关的脚本-->
<script type="text/javascript" src="<%=basePath %>/lib/My97DatePicker/4.8/WdatePicker.js"></script>
<script type="text/javascript" src="<%=basePath %>/lib/jquery.validation/1.14.0/jquery.validate.js"></script> 
<script type="text/javascript" src="<%=basePath %>/lib/jquery.validation/1.14.0/validate-methods.js"></script> 
<script type="text/javascript" src="<%=basePath %>/lib/jquery.validation/1.14.0/messages_zh.js"></script> 
<script type="text/javascript">
$(function(){
	$('.skin-minimal input').iCheck({
		checkboxClass: 'icheckbox-blue',
		radioClass: 'iradio-blue',
		increaseArea: '20%'
	});
	
	$("#form-member-add").validate({
		rules:{
			stuName:{
				required:true,
			},
			stuId:{
				required:true,
			},
			sId:{
				required:true,
			},
			dailyScore:{
				required:true,
			},
			expScore:{
				required:true,
			},
			totalScore:{
				required:true,
			},
			time:{
				required:true,
			},
			modifier:{
				required:true,
			},
			examScore:{
				required:true,
			},
			
		},
		onkeyup:false,
		focusCleanup:true,
		success:"valid",
		submitHandler:function(form){
			$.ajax({
                type: 'GET', data: $("#form-member-add").serialize(), url: '${basePath}/score/editScore.action',
                success: function (returnData) { //...
                    window.parent.layer.msg("修改成功！");//提示语，最后显示，3s会自动消失
                    var piframe = $("#_iframe", window.parent.document);
                    piframe.attr("src", piframe.attr("src"));
					var index = parent.layer.getFrameIndex(window.name);
					//parent.$('.btn-refresh').click();
					parent.location.reload();
					parent.layer.close(index);
                },
                error: function (xhr) {
                    //...
                    window.parent.layer.msg("修改失败！");
                }
            });
		}
	});
	
	$('#totalScores').focus(function (){ 
		var total = 0;
		var dailyScore = $('#dailyScore').val()*0.3;
		var expScore = $('#expScore').val()*0.1;
		var examScore = $('#examScore').val()*0.6;
		total =( dailyScore + expScore + examScore )*1;
		$('#totalScores').val(total); 
	}); 
	$('.score').blur(function (){ 
		var total = 0;
		var dailyScore = $('#dailyScore').val()*0.3;
		var expScore = $('#expScore').val()*0.1;
		var examScore = $('#examScore').val()*0.6;
		total =( dailyScore + expScore + examScore )*1;
		$('#totalScores').val(total); 
	}); 
});
</script> 
<!--/请在上方写此页面业务相关的脚本-->
</body>
</html>