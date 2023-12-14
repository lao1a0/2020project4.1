<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zh">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>登录</title>
 <style>
* {
	margin: 0;
	padding: 0;
}
body {
	overflow: hidden;
}
</style> 
<link href="css/font.css" rel="stylesheet">
<link rel="stylesheet" href="css/sty3le.css">
<link rel="stylesheet" href="css/style-search.css" media="screen" type="text/css" />
<script src="http://www.jq22.com/jquery/jquery-1.10.2.js"></script>
<script type="text/javascript">
	   function is_empty()
	   {
		   var n=document.getElementById("name").value;
		   var p=document.getElementById("pwd").value;
		   if(!n||n=="请输入用户名")
		   {
		   		alert("用户名不为空");
		   		return false;
		   }
		   else if(!p||p=="请输入密码")
	   		{
			   alert("密码不为空");
	   			return false;
	   		}
		   else
		   {
			   return true;	
		   }	   
	   }
	   		
</script> 
<style>
	*{
	   	color:white;
	   	margin:0px;
	   	position:0px;
	}
	#d{
		padding:10px;
		position: absolute;
		top: 30%;
		left: 50%;
		transform: translateX(-50%);
		width: 400px;
		height: 400px;	
		padding-left:150px;
		 
	}
	#nid{
		position: fixed;
		margin-top:10px;
		text-align:left;
	}
	#pid{
		position: fixed;
		margin-top:80px;
		text-align:left;
	}
	#iid{
		position:fixed;
		margin-top:150px;
		text-align:left;
	}
	#sid{
		position: fixed;
		margin-top:310px;
		text-align:left;
	}
	.input {
	 /*  z-index: 2; */
	  font-size: 20px;
	  font-family: helvetica, sans-serif;
	  background: none;
	  border: 1px solid #ddd;
	  color: #eee;
	}
	.rcs{
		position:fixed;
		margin-top:230px;
		display: inline;
	}
	.select{
			display: block;
			position: fixed;
			margin-top: 230px;
			background: #222;
			background: -webkit-linear-gradient(#333, #222);
			background: -moz-linear-gradient(#333, #222);
			background: -o-linear-gradient(#333, #222);
			background: -ms-linear-gradient(#333, #222);
			background: linear-gradient(#333, #222);
			border: 1px solid #444;
			border-radius: 5px 0 0 5px;
			box-shadow: 0 2px 0 #000;
			color: #888;
			display: block;
			float: left;
			font-family: 'Cabin', helvetica, arial, sans-serif;
			font-size: 13px;
			font-weight: 400;
			height: 40px;
			padding: 0 10px;
			text-shadow: 0 -1px 0 #000;
			width: 200px;
		} 
		.option {
			 background: #222;
		     background: -webkit-linear-gradient(#333, #222);
		     background: -moz-linear-gradient(#333, #222);
		     background: -o-linear-gradient(#333, #222);
		     background: -ms-linear-gradient(#333, #222);
		     background: linear-gradient(#333, #222);
		     border: 1px solid #444;
		     border-radius: 5px 0 0 5px;
		     box-shadow: 0 2px 0 #000;
		     color: #888;
		     float: left;
		     font-family: 'Cabin', helvetica, arial, sans-serif;
		     font-size: 13px;
		     font-weight: 400;
		     height: 40px;
		     margin: 0;
		     padding: 0 10px;
		     text-shadow: 0 -1px 0 #000;
		     width: 200px;
		 } 
	 }
	}
	
	

</style>
</head>
<body>
	<canvas id="canvas" width="1280" height="1024"> 您的浏览器不支持canvas标签，请您更换浏览器 </canvas>
	<script src="js1/word.js"></script>
	<p id="offscreen-text" class="offscreen-text"></p>
	<p id="text" class="text"></p>
	
	
 	<div id="d" class="webdesigntuts-workshop"> 
 		<form  action="judge.do" method="post" onsubmit="return is_empty()">
		  <p id="nid"><input id="name" value="请输入用户名" type="text" name="name"/></p>
		  <p id="pid"><input id="pwd" value="请输入密码" type="password" name="password"/></p>
		  <p id="iid"><input id="idd" value="请输入学号/工号" type="text" name="id"/></p>

		 <select class="select" name="type">
			<option class="option" value="Admin" selected>请选择登录类型</option>
		  	<option class="option" value="Admin" >Admin</option>
		 	<option class="option" value="Teacher">Teacher</option>
		 	<option class="option" value="Student">Student</option>
		 </select>
		 
		  <p id="sid"><input type="Submit" value="提交" /></p>
	    </form>
	 </div>
	<script  src='js1/index.js'></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/gsap/2.0.1/TweenMax.min.js"></script>
</body>
</html>