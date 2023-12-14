<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="org.entity.Sc,java.util.ArrayList" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="zh">
<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"> 
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>课程管理系统</title>
	<link rel="stylesheet" type="text/css" href="css/default.css">
	<link rel="stylesheet" href="http://fonts.googleapis.com/css?family=Roboto:300,700">
  	<link rel="stylesheet" href="css/style.min.css">
	<link href="http://cdn.bootcss.com/bootstrap/3.3.6/css/bootstrap.min.css" rel="stylesheet">
	<link rel="stylesheet" type="text/css" href="css/htmleaf-demo.css">
	<style type="text/css">
			.glyphicon { margin-right:5px; }
			.btn-wrapper{
				padding: 1em 0;
			}
			.thumbnail
			{
			    margin-bottom: 20px;
			    padding: 0px;
			    -webkit-border-radius: 0px;
			    -moz-border-radius: 0px;
			    border-radius: 0px;
			}
	
			.item.list-group-item
			{
			    float: none;
			    width: 100%;
			    background-color: #fff;
			    margin-bottom: 10px;
			}
			.item.list-group-item:nth-of-type(odd):hover,.item.list-group-item:hover
			{
			    background: #428bca;
			}
	
			.item.list-group-item .list-group-image
			{
			    margin-right: 10px;
			}
			.item.list-group-item .thumbnail
			{
			    margin-bottom: 0px;
			}
			.item.list-group-item .caption
			{
			    padding: 9px 9px 0px 9px;
			}
			.item.list-group-item:nth-of-type(odd)
			{
			    background: #eeeeee;
			}
			.item.list-group-item:before, .item.list-group-item:after
			{
			    display: table;
			    content: " ";
			}
	
			.item.list-group-item img
			{
			    float: left;
			}
			.item.list-group-item:after
			{
			    clear: both;
			}
			.list-group-item-text
			{
			    margin: 0 0 11px;
			}
			.htmleaf-header{
				background-color: #CDDC39;
				background:url("https://pic2.zhimg.com/80/v2-d6cd650d4886b6dd7e9f5f62591f8b41_720w.jpg");
				background-size:100%;
			}
			body{
				background-color:white;
				color: #000000;
			}
			#footer{
			        bottom: 20px;
				    position: fixed;
				    text-align: center;
				    left: 38%;
			    
			}
			.btn-wrapper{
				    text-align: center;
			}
			.thumbnail {
				padding: 10px;
			}
			.col-md-6 {
				text-align: center;
			}
			.item.list-group-item {
				left: 10%;
				width: 80%;
			}
	</style>
	<style type="text/css">
		#table th {
		    display: block;
		    width: 80px;
		}
		#table tr {
		    display: inline-flex;
		    margin-top: 10px;
		    margin-bottom:10px;
			margin-left: 60px;
			font-size: 16px;
		}
		input{
			border-radius: 5px;
		}
		.input1 {
		   margin-left: 67px;
		    margin-right: 60px;
		}
		.change{
		    left: 800px;
			display: block;
	        margin-left: 750px;
	        margin-top:100px;
		}
		.input2{
		   width: 300px;
		   text-align: center;
		}
	</style>
	<style type="text/css">
			.shadow_css {
			    display: none;
			    position: absolute;
			    top: 0%;
			    left: 0%;
			    bottom: 0%;
			    width: 100%;
			    height: auto;
			    background-color: black;
			    z-index: 10;
			    -moz-opacity: 0.6;
			    opacity: .60;
			    filter: alpha(opacity=66);
			}
			
			.window_css {
			    display: none;
			    position: absolute;
			    top: 20%;
			    left: 40%;
			    width: 400px;
			    border: 3px solid #3e6f3e;
			    background-color: #f5f5f5;
			    z-index: 11;
			    padding: 10px;
			    border-radius: 8px 8px;
			}
			#close {
			    outline: none;
			    color: #191818;
			    text-decoration: none;
			    text-align: right;
			    display: block;
			    margin: 10px;
			}
			#table2 th {
			    display: block;
			    width: 100px;
			}
			#table2 tr {
			    display: inline-flex;
			    margin-top: 5px;
			    margin-bottom: 5px;
				margin-left: 60px;
				font-size: 16px;
			}
			input{
				border-radius: 5px;
			}
			#close_img{
				vertical-align: middle;
				width: 30px;
			}
			#input1 {
			    margin-left: 40px;
			    margin-right: 60px;
			}
			#text1{
				margin: 0px; 
				width: 189px; 
				height: 45px;
			}
	
	</style>
	<!-- 添加成绩信息 -->
	<script type="text/javascript">
		/*当点击调用此方法后,将悬浮窗口显示出来,背景变暗*/
		function displayWindow1() {
			/*悬浮窗口的显示,需要将display变成block*/
			document.getElementById("window1").style.display = "block";
			/*将背景变暗*/
			document.getElementById("shadow").style.display = "block";
		}

		/*当点击调用此方法,将悬浮窗口和背景全部隐藏*/
		function hideWindow1() {
			document.getElementById("window1").style.display = "none";
			document.getElementById("shadow").style.display = "none";
		}			
	</script>
</head>

<body>
	<div id="wrapper" class="wrapper">
		<header class="header htmleaf-header">
			<h1>学生成绩管理<span>Welcome to our system</span></h1>
		</header>
	  <main>
				<div class="container">
					<div class="btn-wrapper">
						<strong>选项：</strong>
						<div class="btn-group">
							<a href="#" id="list" class="btn btn-default btn-sm">
								<span class="glyphicon glyphicon-th-list"></span>列表布局
							</a>
							<a href="#" id="grid" class="btn btn-default btn-sm">
								<span class="glyphicon glyphicon-th"></span>网格布局
							</a>
							<a href="javascript:void(0)"  onclick="displayWindow1()" class="btn btn-default btn-sm">
								<span class="glyphicon glyphicon-th"></span>添加
							</a>
						</div>
					</div>
					
					<!-- 添加成绩信息 -->
					<div id="window1" class="window_css"> 		
						<form action="tginsert.do" method="post">
							<a id="close" href="javascript:void(0)" onclick="hideWindow1()"><img id="close_img" src="img/close.svg" title="关闭悬浮窗口"></img></a>
							<table id="table2">
								<tr>
									<th width="30%">课程号：</th>
									<td width="70%"><input id="uname" name="cno" type="text" value=""></td>
								</tr>
								<tr>
									<th width="30%">学号：</th>
									<td width="70%"><input id="uname" name="sno" type="text" value=""></td>
								</tr>
								<tr>
									<th>成绩：</th>
									<td><input name="results" type="text" value=""></td>
								</tr>
								<tr>
								<th>教学内容：</th>
									<td>
									<input name="ccontent" style="width: 200px;" class="input2 Safe" type="text" value=""></input>
									</td>
								</tr>
								<tr>
								<td colspan="2"><p id="table_input"><input id="input1" type="submit" name="submit" value="添加"> <input id="input2"  type="reset" value="重置"></p></td>
								</tr>
							</table>
						</form>	
					</div>
					<div id="shadow" class="shadow_css" ></div>
					
					
					
					
					<div id="products" class="row list-group">
						<%
						if(request.getParameter("sno")!=null && request.getParameter("cno")!=null)
						{
							/* 修改个人成绩 */
							Sc bi = (Sc) request.getAttribute("bi");
							
						%>
							<form class="change" action="tgeditsave.do"  onsubmit="return is_empty()" method="post">
								<table id="table" style="width:100px">
									<tr>
										<th width="30%">学号：</th>
										<td width="70%">
											<input name="sno"  class="input2 Safe" type="text" value="<%=bi.getSno()%>"   readonly></input>
										</td>
									</tr>
									<tr>
										<th width="30%">成绩：</th>
										<td width="70%">
											<input name="results"  class="input2 Safe" type="text" value="<%=bi.getResults()%>"></input>
										</td>
									</tr>
									<tr>
										<th>课程号：</th>
										<td>
											<input name="cno" class="input2 Safe" type="text" value="<%=bi.getCno()%>"   readonly></input>
										</td>
									</tr>
									<tr>
										<th>教学内容：</th>
										<td>
											<input name="ccontent"  class="input2 Safe" type="text" value="<%=bi.getCcontent()%>"></input>
										</td>
									</tr>
									<tr>
										<th></th>
										<td>
											<input type="hidden" name="tno" value="<%=bi.getTno()%>"></input>
										</td>	
									</tr>
									<tr>
										<th></th>
										<td>
											<input type="submit" class="input1" value="修改"></input>
											<input type="reset" value="重置"></input>
										</td>
									</tr>
								</table>
							</form>													
						 <% }
							else
							{
								/* 列出全体的成绩 */
								@SuppressWarnings("unchecked") 
								ArrayList<Sc> list = (ArrayList<Sc>) request.getAttribute("list"); 
								
								for (Sc bi : list)
								{
									String sno = bi.getSno();
									out.print("<div class=\"item  col-xs-4 col-lg-4\">"+
												"<div class=\"thumbnail\">"+
										        "<img class=\"group list-group-image\" src=\"img/link-fox.png\" alt=\"\" />"+
										        "<div class=\"caption\">"+
										            "<h4 class=\"group inner list-group-item-heading\">"+bi.getSno()+"</h4>"+
														"<ul>"+
															"<li>课程号："+bi.getCno()+"</li>"+
															"<li>成绩："+bi.getResults()+"</li>"+
															"<li>教学内容："+bi.getCcontent()+"</li>"+
														"</ul>"+
										            "<div class=\"row\">"+
										                "<div class=\"col-xs-12 col-md-6\">"+
										                    "<a class=\"btn btn-success\"  onclick=\"displayWindow()\" href=\"tgrade.do?sno="+sno+"&cno="+bi.getCno()+"\">修改</a>"+
										                "</div>"+
														"<div class=\"col-xs-12 col-md-6\">"+
														    "<a class=\"btn btn-success\" href=\"tgdel.do?sno="+sno+"&cno="+bi.getCno()+"\">删除</a>"+
														"</div>"+
										            "</div>"+
										        "</div>"+
										      "</div>"+
										   "</div>");
									
								}
							}
					%>
					</div>
			</div>
	  </main>
	</div><!-- /wrapper -->
	
	
	<button id="mm-menu-toggle" class="mm-menu-toggle">Toggle Menu</button>
	<jsp:include page="./navbar.jsp"/>
	
	<script src="js/production/materialMenu.min.js"></script>
	<script>
	  var menu = new Menu;
	</script>
	<script src="http://cdn.bootcss.com/jquery/1.11.0/jquery.min.js" type="text/javascript"></script>
	<script>window.jQuery || document.write('<script src="js/jquery-1.11.0.min.js"><\/script>')</script>
	<script src="http://cdn.bootcss.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
	<script type="text/javascript">
		$(document).ready(function() {
		    $('#list').click(function(event){event.preventDefault();$('#products .item').addClass('list-group-item');});
		    $('#grid').click(function(event){event.preventDefault();$('#products .item').removeClass('list-group-item');$('#products .item').addClass('grid-group-item');});
		});
	</script>
	<footer id="footer">
		Copyright &copy; 2019.Company name All rights reserved.公网安备xxxxx号京ICP证xxx号 <!-- 假的备案，能在本机环境允许 -->
	</footer><!-- footer -->
</body>
</html>