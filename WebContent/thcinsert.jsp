<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>
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
	
	<script type="text/javascript">
		$(document).ready(function() {
		    $('#list').click(function(event){event.preventDefault();$('#products .item').addClass('list-group-item');});
		    $('#grid').click(function(event){event.preventDefault();$('#products .item').removeClass('list-group-item');$('#products .item').addClass('grid-group-item');});
		});
	</script>
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
				background:url("https://pic2.zhimg.com/80/2acdfcb588005c63931c526daa81684c_720w.jpg");
				background-size:100%;
			}
			body{
				background-color:white;
				color: #000000;
			}
	</style>
	
	<style type="text/css">
		#footer{
			       bottom: 20px;
				   position: fixed;
				   text-align: center;
				   left: 38%;
		}
		#stu{
		        
			    top: 300px;
			    left: 400px;
			    width: 300px;
			    height: 400px;
			    display: block;
			    position: absolute;
		}
		#tea{
		       
			    top: 300px;
			    right: 400px;
			    width: 300px;
			    height: 400px;
			    display: block;
			    position: absolute;
		}
		.box{
		    font-family: 'Dosis', sans-serif;
		    position: relative;
		    overflow: hidden;
		}
		.box:before,
		.box:after{
		    content: '';
    		background: linear-gradient( #bfe0b1 0%,#52a032 100%);
		    height: 150%;
		    width: 100%;
		    border-radius: 0 100% 0 0;
		    opacity: 0;
		    position: absolute;
		    left: -50%;
		    top: 100%;
		    z-index: 1;
		    transition: border-radius .5s ease-out,top .5s ease-out,opacity .3s ease-out;
		}
		.box:after{
		    border-radius: 100% 0 0 0;
		    left: 50%;
		}
		.box:hover:before,
		.box:hover:after{
		    top: -50%;
		    opacity: 0.9;
		    border-radius: 0 35% 0 0;
		}
		.box:hover:after{ border-radius: 35% 0 0 0; }
		.box img{
		    width: 100%;
		    height: 400px;
		}
		.box .box-content{
		    color: #fff;
		    text-align: center;
		    width: 80%;
		    opacity: 0;
		    transform: translateX(-50%) translateY(-50%);
		    position: absolute;
		    top: 50%;
		    left: 50%;
		    z-index: 2;
		    transition: all 0.3s ease 0.2s;
		}
		.box:hover .box-content{ opacity: 1; }
		.box .title{
		    font-size: 25px;
		    font-weight: 700;
		    text-transform: uppercase;
		    letter-spacing: 1px;
		    margin: 0 0 7px;
		}
		.box .post{
		    font-size: 18px;
		    font-weight: 600;
		    letter-spacing: 1px;
		    text-transform: capitalize;
		    margin: 0 0 10px;
		    display: block;
		}
		.box .icon{
		    padding: 0;
		    margin: 0;
		    list-style: none;
		}
		.box .icon li{
		    margin: 0 5px;
		    display: inline-block;
		}
		.box .icon li a{
		    color: #fff;
		    background: transparent;
		    font-size: 14px;
		    line-height: 31px;
		    height: 35px;
		    width: 35px;
		    border: 1px solid #fff;
		    border-bottom: none;
		    border-right: none;
		    border-radius: 50%;
		    display: block;
		    transition: all 0.3s ease;
		}
		.box .icon li  a:hover{
		    color: #fff;
		    box-shadow: 0 0 10px #000;
		}
		@media only screen and (max-width:990px){
		    .box { margin: 0 0 30px; }
		}
	</style>
</head>
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
				#table th {
				    display: block;
				    width: 100px;
				}
				#table tr {
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
	
	</style>
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
		
				function displayWindow2() {
					
					document.getElementById("window2").style.display = "block";
					document.getElementById("shadow").style.display = "block";
				}
		
				function hideWindow2() {
					document.getElementById("window2").style.display = "none";
					document.getElementById("shadow").style.display = "none";
				}
			
	</script>

<body>
	<div id="wrapper" class="wrapper">
	  <header class="header htmleaf-header">
			<h1>添加信息<span>Welcome to our system</span></h1>
		</header>
	  <main>
        <div id="stu" class="col-md-4 col-sm-6">
            <div class="box">
                <img src="https://pic2.zhimg.com/80/v2-d6cd650d4886b6dd7e9f5f62591f8b41_720w.jpg">
                <div class="box-content">
                    <h3 class="title">添加课程信息</h3>
                    <span class="post">Add Course</span>
                    <ul class="icon">
                        <li><a href="javascript:void(0)"  onclick="displayWindow2()"></a></li>
                    </ul>
                </div>
            </div>
        </div>
        <div id="tea" class="col-md-4 col-sm-6">
            <div class="box">
                <a href="#add"><img src="https://pic2.zhimg.com/80/v2-ac90188df1c62e8e3cf154d47d8c6ca4_720w.jpg"></a>
                <div class="box-content">
                    <h3 class="title">添加作业信息</h3>
                    <span class="post">Add Homework</span>
                    <ul class="icon">
                        <li><a href="javascript:void(0)"  onclick="displayWindow1()"></a></li>
                    </ul>
                </div>
            </div>
		</div>			
	  </main>
	</div><!-- /wrapper -->

	<button id="mm-menu-toggle" class="mm-menu-toggle">Toggle Menu</button>
	<jsp:include page="./navbar.jsp"/>
	
	<!-- 添加作业信息 -->
	<div id="window1" class="window_css"> 		
		<form action="thinsert.do" method="post">
			<a id="close" href="javascript:void(0)" onclick="hideWindow1()"><img id="close_img" src="img/close.svg" title="关闭悬浮窗口"></img></a>
			<table id="table">
				<tr>
					<th width="30%">课程号：</th>
					<td width="70%"><input id="uname" name="cno" type="text" value=""></td>
				</tr>
				<tr>
					<th width="30%">学号：</th>
					<td width="70%"><input id="uname" name="sno" type="text" value=""></td>
				</tr>
				<tr>
					<th>上传者姓名：</th>
					<td><input name="name" type="text" value=""></td>
				</tr>
				<tr>
					<th>上传时间：</th>
					<td><input name="htime"" type="date" value=""></td>
				</tr>
				<tr>
					<th width="30%">内容：</th>
					<td width="70%"><textarea class= "input2 Safe"  name="hcontent"></textarea></td>
				</tr>
				<td colspan="2"><p id="table_input"><input id="input1" type="submit" name="submit" value="添加"> <input id="input2"  type="reset" value="重置"></p></td>
				</tr>
			</table>
		</form>	
	</div>
	
	<!-- 添加课程信息 -->
	<div id="window2" class="window_css">		
		<form action="tcinsert.do" method="post">
			<a id="close" href="javascript:void(0)" onclick="hideWindow2()"><img id="close_img" src="img/close.svg" title="关闭悬浮窗口"></img></a>
			<table id="table" >
				<tr>
					<th width="30%">课程名字：</th>
					<td width="70%">
						<input name="cname"  class="input2 Safe" type="text" value=""></input>
					</td>
				</tr>
				<tr>
					<th width="30%">课程号：</th>
					<td width="70%">
						<input  name="cno"  class="input2 Safe" type="text" value=""></input>
					</td>
				</tr>
				<tr>
					<th>学分：</th>
					<td>
						<input  name="credits" class="input2 Safe" type="text" value=""></input>
					</td>
				</tr>
				
				<tr>
					<th>教学计划：</th>
					<td>
						<textarea class="input2 Safe" name="cplan" ></textarea>
					</td>
				</tr>
				<tr>
					<th>大纲：</th>
					<td>
						<textarea class= "input2 Safe"  name="coutline"></textarea>						
					</td>
				</tr>
				<tr>
					<th></th>
					<td>
						<input type="hidden" name="tno" value=""></input>
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
		
	</div>
	
	<script src="js/production/materialMenu.min.js"></script>
	<script>
	  var menu = new Menu;
	</script>
	<div id="shadow" class="shadow_css" ></div>
	<footer id="footer">
		Copyright &copy; 2019.Company name All rights reserved.公网安备xxxxx号京ICP证xxx号 <!-- 假的备案，能在本机环境允许 -->
	</footer><!-- footer -->
</body>
</html>