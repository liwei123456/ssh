<%@ tag import="java.util.*"%>
<%@ tag language="java" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<%@ attribute name="title"%>
<%@ attribute name="content" fragment="true" required="true"%>
<!DOCTYPE html>
<html>
<head>
<title>首页</title>
<!-- Bootstrap -->
<link rel="stylesheet" href="<%=basePath%>resources/bootstrap/bootstrap-3.3.7-dist/css/bootstrap.min.css">
<!-- jQuery (Bootstrap 插件需要引入) -->
<script src="<%=basePath%>resources/jquery/js/jquery-1.9.1.min.js" type="text/javascript"></script>
<!-- 包含了所有编译插件 -->
<script src="<%=basePath%>resources/bootstrap/bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>
<style>
body {
	background: #eee;
}

.well {
	background-color: #fff;
	border: 1px solid #ccc;
}

.btn-toolbar {
	font-size: 0;
	margin-top: 10px;
	margin-bottom: 10px;
}
</style>
</head>
<body>
	<nav class="navbar navbar-inverse">
		<nav class="navbar-inner">
			<div class="container-fluid">
				<div class="navbar-header">
					<button type="button" class="navbar-toggle" data-toggle="collapse"
						data-target="#example-navbar-collapse">
						<span class="sr-only">切换导航</span> <span class="icon-bar"></span> <span
							class="icon-bar"></span> <span class="icon-bar"></span>
					</button>
					<a class="navbar-brand" href="#">Project name</a>
				</div>
				<div class="collapse navbar-collapse" id="example-navbar-collapse">
					<ul class="nav navbar-nav navbar-right">
						<li class="dropdown"><a id="dropdownMenu1"
							class="dropdown-toggle" data-toggle="dropdown"> <span
								class="glyphicon glyphicon-user"></span> user<span class="caret"></span>
						</a>
							<ul class="dropdown-menu">
								<li class="dropdown-header">下拉菜单标题</li>
								<li><a tabindex="-1" href="#">设置</a></li>
								<li><a href="#">消息<span class="badge">3</span></a></li>
								<li class="divider"></li>
								<li><a tabindex="-1" href="#"><span
										class="glyphicon glyphicon-log-in"></span> 重新登录</a></li>
								<li><a tabindex="-1" href="#"><span
										class="glyphicon glyphicon-log-out"></span> 登出</a></li>
							</ul></li>
					</ul>
				</div>
			</div>
		</nav>
	</nav>
	<div class="container-fluid">
		<div class="row">
			<div class="col-md-2">
				<div class="panel-group table-responsive" role="tablist">
					<div class="panel panel-default leftMenu">
						<!-- 利用data-target指定要折叠的分组列表 -->
						<div class="panel-heading">
							<div class="nav-header" data-toggle="collapse"
								data-target="#example-menu">
								分组1 <span class="glyphicon glyphicon-chevron-up right"></span>
							</div>
						</div>
						<!-- .panel-collapse和.collapse标明折叠元素 .in表示要显示出来 -->
						<ul id="example-menu" class="nav nav-list collapse in">
							<li><a href="index.html">Home</a></li>
							<li><a href="users.html">Sample List</a></li>
							<li><a href="user.html">Sample Item</a></li>
							<li><a href="gallery.html">Gallery</a></li>
							<li><a href="calendar.html">Calendar</a></li>
							<li><a href="faq.html">Faq</a></li>
							<li><a href="help.html">Help</a></li>
						</ul>
					</div>
					<!--panel end-->
					<div class="panel panel-default leftMenu">
						<!-- 利用data-target指定要折叠的分组列表 -->
						<div class="panel-heading">
							<div class="nav-header" data-toggle="collapse"
								data-target="#accounts-menu">
								分组1 <span class="glyphicon glyphicon-chevron-up right"></span>
							</div>
						</div>
						<!-- .panel-collapse和.collapse标明折叠元素 .in表示要显示出来 -->
						<ul id="accounts-menu" class="nav nav-list collapse in">
							<li><a href="sign-in.html">Sign In</a></li>
							<li><a href="sign-up.html">Sign Up</a></li>
							<li><a href="reset-password.html">Reset Password</a></li>
						</ul>
					</div>
				</div>
			</div>
			<div class="col-md-10">
				<!-- 右边内容变化 -->
        		<jsp:invoke fragment="content"/>
			</div>
		</div>
		<footer>
			<hr>
			<p class="pull-right">
				来自 <a href="#" title="网页模板" target="_blank">某某公司</a>
			</p>
			<p>
				&copy; 2017 <a href="#">联系人：某某某</a>
			</p>
		</footer>
	</div>
	<!-- 模态框（Modal） -->
	<div class="modal small fade" id="myModal" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-hidden="true">×</button>
					<h3 id="myModalLabel">Delete Confirmation</h3>
				</div>
				<div class="modal-body">
					<p class="error-text">
						<i class="icon-warning-sign modal-icon"></i>Are you sure you want
						to delete the user?
					</p>
				</div>
				<div class="modal-footer">
					<button class="btn" data-dismiss="modal" aria-hidden="true">Cancel</button>
					<button class="btn btn-danger" data-dismiss="modal">Delete</button>
				</div>
			</div>
			<!-- /.modal-content -->
		</div>
		<!-- /.modal -->
	</div>
</body>
</html>