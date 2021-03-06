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

<title>学生信息 - 学生管理- 成绩信息管理系统 v1.0</title>
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
			<dt class="selected"><i class="Hui-iconfont">&#xe720;</i> 成绩管理<i class="Hui-iconfont menu_dropdown-arrow">&#xe6d5;</i></dt>
			<dd style="display:block">
				<ul>
					<c:if  test  = "${sessionScope.roleId eq '1'||sessionScope.roleId eq '2'}"> 
						<li>
							<a href="<%=basePath %>/score/scorePage.action" title="成绩管理">成绩管理</a>
						</li>
					
					</c:if>
					<c:if  test  = "${sessionScope.roleId eq '3'}"> 
						<li class="current">
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
			<dt><i class="Hui-iconfont">&#xe63c;</i> 个人信息管理<i class="Hui-iconfont menu_dropdown-arrow">&#xe6d5;</i></dt>
			<dd>
				<ul>
					<li>
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
		学生管理
		<span class="c-gray en">&gt;</span>
		学生列表
		<a class="btn btn-success radius r" style="line-height:1.6em;margin-top:3px" href="javascript:location.replace(location.href);" title="刷新" ><i class="Hui-iconfont">&#xe68f;</i></a>
	</nav>
	<div class="Hui-article">
		<article class="cl pd-20">
			
			
			<div class="mt-20">
				<table class="table table-border table-bordered table-bg table-hover table-sort">
					<thead>
						<tr class="text-c">
							<th width="25"><input type="checkbox" name="" value=""></th>
							
							<th width="50">编号</th>
							<th width="50">学号</th>
							<th width="100">课程名</th>
							<th width="50">学生姓名</th>
							<th width="50">平时成绩</th>
							<th width="50">实验成绩</th>
							<th width="50">总成绩</th>
							<th width="120">学期</th>
							<th width="60">录入人</th>
							<th width="140">录入时间</th>
							<th width="60">修改人</th>
							<th width="140">修改时间</th>
						</tr>
					</thead>
					<tbody>
					<c:forEach items="${list }" var="v" varStatus="status">
						<tr class="text-c">
							<td><input type="checkbox" value="" name=""></td>
							<td>${status.index + 1}</td>
							<td>${v.stuId}</td>
							<td>${v.subject.sName}</td>
							<td>${v.student.stuName}</td>
							<td>${v.dailyScore}</td>
							<td>${v.expScore}</td>
							<td>${v.totalScore}</td>
							<td>${v.time}</td>
							<td>${v.enterOne}</td>
							<td>${v.enterTime}</td>
							<td>${v.modifier}</td>
							<td>${v.modifyTime}</td>
						</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>
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
<script type="text/javascript" src="<%=basePath %>/lib/laypage/1.2/laypage.js"></script>
<script type="text/javascript">
$('.table-sort').dataTable({
	"aaSorting": [[ 1, "desc" ]],//默认第几个排序
	"bStateSave": true,//状态保存
	"aoColumnDefs": [
		//{"bVisible": false, "aTargets": [ 3 ]} //控制列的隐藏显示
		{"orderable":false,"aTargets":[0,8]}// 不参与排序的列
	]
});

/*学生-添加*/
function article_add(title,url,w,h){
	
	layer_show(title,url,w,h);
}
/*学生-编辑*/
function article_edit(title,url,id,w,h){
// 	var index = layer.open({
// 		type: 2,
// 		title: title,
// 		content: url
// 	});
	layer_show(title,url,w,h);
}
/*学生-删除*/
function article_del(obj,id){
	layer.confirm('确认要删除吗？',function(index){
		$.ajax({
			type: 'POST',
			data: {stuId:id},
			url: '${basePath}/s/delStudent.action',
			dataType: 'json',
			success: function(data){
				parent.location.reload();
				$(obj).parents("tr").remove();
				layer.msg('已删除!',{icon:1,time:1000});
			},
			error:function(xhr) {
			parent.location.reload();
				console.log("失败");
			},
		});		
		layer.close(index);
	});
}
function searchStudent(){
// 	$.ajax({
//         type: 'GET', data: $("#search1").serialize(), url: '${basePath}/t/allTeacher.action',
//         success: function (returnData) { //...
//         },
//         error: function (xhr) {
//         }
//     });
	var Name = $("#stuName").val();
	var Major = $("#stuMajor").val();
	
	window.location.href = "${basePath}/s/allStudent.action?stuName="+Name+"&stuMajor="+Major;

}
/*学生-审核*/
function article_shenhe(obj,id){
	layer.confirm('审核文章？', {
		btn: ['通过','不通过','取消'], 
		shade: false,
		closeBtn: 0
	},
	function(){
		$(obj).parents("tr").find(".td-manage").prepend('<a class="c-primary" onClick="article_start(this,id)" href="javascript:;" title="申请上线">申请上线</a>');
		$(obj).parents("tr").find(".td-status").html('<span class="label label-success radius">已发布</span>');
		$(obj).remove();
		layer.msg('已发布', {icon:6,time:1000});
	},
	function(){
		$(obj).parents("tr").find(".td-manage").prepend('<a class="c-primary" onClick="article_shenqing(this,id)" href="javascript:;" title="申请上线">申请上线</a>');
		$(obj).parents("tr").find(".td-status").html('<span class="label label-danger radius">未通过</span>');
		$(obj).remove();
    	layer.msg('未通过', {icon:5,time:1000});
	});	
}
/*学生-下架*/
function article_stop(obj,id){
	layer.confirm('确认要下架吗？',function(index){
		$(obj).parents("tr").find(".td-manage").prepend('<a style="text-decoration:none" onClick="article_start(this,id)" href="javascript:;" title="发布"><i class="Hui-iconfont">&#xe603;</i></a>');
		$(obj).parents("tr").find(".td-status").html('<span class="label label-defaunt radius">已下架</span>');
		$(obj).remove();
		layer.msg('已下架!',{icon: 5,time:1000});
	});
}

/*学生-发布*/
function article_start(obj,id){
	layer.confirm('确认要发布吗？',function(index){
		$(obj).parents("tr").find(".td-manage").prepend('<a style="text-decoration:none" onClick="article_stop(this,id)" href="javascript:;" title="下架"><i class="Hui-iconfont">&#xe6de;</i></a>');
		$(obj).parents("tr").find(".td-status").html('<span class="label label-success radius">已发布</span>');
		$(obj).remove();
		layer.msg('已发布!',{icon: 6,time:1000});
	});
}
/*学生-申请上线*/
function article_shenqing(obj,id){
	$(obj).parents("tr").find(".td-status").html('<span class="label label-default radius">待审核</span>');
	$(obj).parents("tr").find(".td-manage").html("");
	layer.msg('已提交申请，耐心等待审核!', {icon: 1,time:2000});
}
</script>
<!--/请在上方写此页面业务相关的脚本-->
</body>
</html>