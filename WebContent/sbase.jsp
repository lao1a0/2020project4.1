<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="org.entity.Homework,java.util.ArrayList"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
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
		textarea {
			text-align: left;
		}
	</style>
</head>
<body>
<!-- 学生上传作业、浏览作业、下载作业； --> 
<div id="wrapper" class="wrapper">
		<header class="header htmleaf-header">
			<h1>课程信息管理<span>Welcome to our system</span></h1>
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
						</div>
					</div>
					<div id="products" class="row list-group">
						<%
						if(request.getParameter("sno")!=null)
						{
							Homework bi = (Homework) request.getAttribute("bi");
						%>
								
								<form class="change" action="heditsave.do"  onsubmit="return is_empty()" method="post">
									<table id="table" style="width:800px;">
										<tr>
											<th width="30%">课程名：</th>
											<td width="70%">
												<input  name="cname"  class="input2 Safe" type="text" value="<%=bi.getCname()%>"  readonly></input>
											</td>
										</tr> 
										<tr>
											<th>任课老师：</th>
											<td>
												<input  name="tname" class="input2 Safe" type="text" value="<%=bi.getTname()%>" readonly></input>
											</td>
										</tr>
										
										<tr>
											<th>截至时间：</th>
											<td>
												<input name="htime" class="input2 Safe" type="text" value="<%=bi.getHtime()%>" readonly></input>
												
											</td>
										</tr>
										<tr>
											<th>作业内容：</th>
											<td>
												<textarea class= "input2 Safe"  name="hcontent"><%=bi.getHcontent()%></textarea>
												
											</td>
										</tr>
										<tr>
											<th></th>
											<td>
												<input type="hidden" name="cno" value="<%=bi.getCno()%>"></input>
												<input type="hidden" name="sno" value="<%=bi.getSno()%>"></input>
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
								@SuppressWarnings("unchecked") 
								ArrayList<Homework> list = (ArrayList<Homework>) request.getAttribute("list"); 
								System.out.print(list);
								for (Homework bi : list)
								{
									String cno = bi.getCno();
									out.print("<div class=\"item  col-xs-4 col-lg-4\">"+
												"<div class=\"thumbnail\">"+
										        "<div class=\"caption\">"+
										            "<h4 class=\"group inner list-group-item-heading\">"+bi.getCno()+"</h4>"+
														"<ul>"+
															"<li>课程名："+bi.getCname()+"</li>"+
															"<li>任课老师："+bi.getTname()+"</li>"+
															"<li>截止时间："+bi.getHtime()+"</li>"+
															"<li>作业内容："+bi.getHcontent()+"</li>"+
														"</ul>"+
										            "<div class=\"row\">"+
										                "<div class=\"col-xs-12 col-md-6\">"+
										                    "<a class=\"btn btn-success\"  onclick=\"displayWindow()\" href=\"sbase.do?cno="+cno+"&sno="+bi.getSno()+"&tno="+bi.getTno()+"\">修改</a>"+
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