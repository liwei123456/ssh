<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="layout" tagdir="/WEB-INF/tags"%>
<layout:layout title="jsp标签文件的使用">
	<jsp:attribute name="content">
		<h1 class="page-title">Users</h1>
				<div class="btn-toolbar">
					<button class="btn btn-primary">
						<i class="glyphicon glyphicon-plus"></i> New User
					</button>
					<button class="btn">Import</button>
					<button class="btn">Export</button>
					<div class="btn-group">
						<button type="button" class="btn btn-default">Button1</button>
						<button type="button" class="btn btn-default">Button2</button>
					</div>
				</div>
				<div class="well">
					<table class="table table-hover">
						<thead>
							<tr>
								<th>产品</th>
								<th>价格</th>
								<th></th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td>产品 A</td>
								<td>200</td>
								<td><a href="#"><i class="glyphicon glyphicon-pencil"></i></a>
									<a href="#myModal" role="button" data-toggle="modal"> <i
								class="glyphicon glyphicon-remove"></i>
								</a></td>
							</tr>
							<tr>
								<td>产品 B</td>
								<td>400</td>
								<td><a href="#"><i class="glyphicon glyphicon-pencil"></i></a>
									<a href="#myModal" role="button" data-toggle="modal"> <i
								class="glyphicon glyphicon-remove"></i>
								</a></td>
							</tr>
						</tbody>
					</table>
				</div>
				<ul class="pagination">
					<li><a href="#">首页</a></li>
					<li><a href="#">&laquo;</a></li>
					<li><a href="#">1</a></li>
					<li><a href="#">2</a></li>
					<li><a href="#">3</a></li>
					<li><a href="#">4</a></li>
					<li><a href="#">5</a></li>
					<li><a href="#">&raquo;</a></li>
					<li><a href="#">尾页</a></li>
				</ul>
	</jsp:attribute>
</layout:layout>