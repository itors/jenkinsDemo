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
<style>
	 .div-height{
	 width:300px; 
	 height:500px
	 } 
 </style>
<title>首页</title>
<meta name="keywords" content="成绩信息管理系统">
<meta name="description" content="管理学生成绩信息">
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
						<a href="<%=basePath %>/sc/scPage.action" title="课程管理">科目管理</a>
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
		我的桌面
		
		<a class="btn btn-success radius r" style="line-height:1.6em;margin-top:3px" href="javascript:location.replace(location.href);" title="刷新" ><i class="Hui-iconfont">&#xe68f;</i></a>
	</nav>
	<div class="Hui-article">
		<article class="cl pd-20">
			<p class="f-20 text-success">欢迎使用成绩信息管理系统
				<span class="f-14">v1.0</span>
				后台！</p>
</article>
<div class="div-height">

</div>
		<footer class="footer">
			<p>感谢jQuery、layer、laypage、Validform、UEditor、My97DatePicker、iconfont、Datatables、WebUploaded、icheck、highcharts、bootstrap-Switch<br> Copyright &copy;2018 成绩信息管理系统 v1.0 All Rights Reserved.<br> 本后台系统由黑龙江八一农垦大学提供技术支持</p>
</footer>
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

/*资讯-添加*/
function article_add(title,url,w,h){
	
	layer_show(title,url,w,h);
}
/*资讯-编辑*/
function article_edit(title,url,id,w,h){
// 	var index = layer.open({
// 		type: 2,
// 		title: title,
// 		content: url
// 	});
	layer_show(title,url,w,h);
}
/*资讯-删除*/
function article_del(obj,id){
	layer.confirm('确认要删除吗？',function(index){
		$.ajax({
			type: 'POST',
			data: {tId:id},
			url: '${basePath}/t/delTeacher.action',
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
function searchTeacher(){
// 	$.ajax({
//         type: 'GET', data: $("#search1").serialize(), url: '${basePath}/t/allTeacher.action',
//         success: function (returnData) { //...
//         },
//         error: function (xhr) {
//         }
//     });
	var tName = $("#tName").val();
	var tMajor = $("#tMajor").val();
	var entryTime = $("#entryTime").val();
	
	window.location.href = "${basePath}/t/allTeacher.action?tName="+tName+"&tMajor="+tMajor+"&entryTime="+entryTime;

}
/*资讯-审核*/
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
/*资讯-下架*/
function article_stop(obj,id){
	layer.confirm('确认要下架吗？',function(index){
		$(obj).parents("tr").find(".td-manage").prepend('<a style="text-decoration:none" onClick="article_start(this,id)" href="javascript:;" title="发布"><i class="Hui-iconfont">&#xe603;</i></a>');
		$(obj).parents("tr").find(".td-status").html('<span class="label label-defaunt radius">已下架</span>');
		$(obj).remove();
		layer.msg('已下架!',{icon: 5,time:1000});
	});
}

/*资讯-发布*/
function article_start(obj,id){
	layer.confirm('确认要发布吗？',function(index){
		$(obj).parents("tr").find(".td-manage").prepend('<a style="text-decoration:none" onClick="article_stop(this,id)" href="javascript:;" title="下架"><i class="Hui-iconfont">&#xe6de;</i></a>');
		$(obj).parents("tr").find(".td-status").html('<span class="label label-success radius">已发布</span>');
		$(obj).remove();
		layer.msg('已发布!',{icon: 6,time:1000});
	});
}
/*资讯-申请上线*/
function article_shenqing(obj,id){
	$(obj).parents("tr").find(".td-status").html('<span class="label label-default radius">待审核</span>');
	$(obj).parents("tr").find(".td-manage").html("");
	layer.msg('已提交申请，耐心等待审核!', {icon: 1,time:2000});
}
</script>
<!--/请在上方写此页面业务相关的脚本-->
</body>
</html>