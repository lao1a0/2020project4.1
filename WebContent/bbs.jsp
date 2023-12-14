<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="org.entity.Student,java.util.ArrayList" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="zh">
<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"> 
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>课程管理系统</title>
	<link rel="stylesheet" href="css2/style.css">
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
				background:url("https://pic2.zhimg.com/80/1d4b229e2e625a236a57fb44b67f6f7b_720w.jpg");
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
		    width: 50px;
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
	.mm-menu-toggle, .mm-menu-toggle::after, .mm-menu-toggle::before {
    	z-index: 9999999999999;
    }
    a {
       color: #337ab7;
    }
	</style>
</head>

<body>
	<div id="wrapper" class="wrapper">
		<header class="header htmleaf-header">
			<h1>石家庄铁道大学BBS<span>Welcome to our system</span></h1>
		</header>
	  <main>
			<div class="container">
					<div id="products" class="row list-group">
						<div class="page1_block">
							<div class="container_12">
								<div class="grid_6">
									<h2><a href="#">校内地图</a></h2><br>
									 <img src="https://dss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=895298005,2700983511&fm=111&gp=0.jpg" alt="" class="img_inner fleft">
									 <div class="extra_wrapper style1"><p class="text1"><a href="发布书籍.html" rel="nofollow">点击这里</a></p>
									         你了解我们吗？
									  </div>
									  
									   <div class="clear"></div>
									       石家庄铁道大学前身是中国人民解放军铁道兵工程学院，创建于1950年，系当时全军重点院校；1979年被列为全国重点高等院校；1984年转属铁道部，更名为石家庄铁道学院；2000年划转河北省，实行中央与地方共建，为河北省重点骨干大学；2010年3月更名为石家庄铁道大学；2015年7月被河北省人民政府、国家铁路局、教育部批准为共建高校；2016年被河北省列为重点支持的一流大学和一流学科建设高校。
									   </div>
									   <div class="grid_5 prefix_1">
									       <h2 class="ic1"><a href="#">校内新鲜事</a></h2>
									       <ul class="list">
									          <li>
									             <span>
									                	<time datetime="2019-01-01">
									                		4月<span>20日</span>
									                	</time>
									             </span>
									             <div class="extra_wrapper">
									           <div class="col1"><a href="#">石家庄铁道大学首届大学生生涯体验周</a><time datetime="2019-01-01"><font color="red" size="3">活动时间：</font><font color="red">2019.4.22-2019.4.28</font></time>
									           </div>“学生生涯体验周”活动是近年来新出现的一种生涯教育活动形式，是以当前高校的职业生涯规划与就业指导课程教育体系为核心，所开发的一种内容丰富、主题明确、形式新颖、互动性强的大型户外体验式活动项目。 该项目的引进和实施，有助于让广大学生更生动形象地了解职业生涯规划和求职面试的相关知识技巧，提升生涯规划的自主性和行动X生涯教育教师学习和掌握开展大型体验式生涯教育活动的方法和技X职业生涯规划与就业指导的手段和形式，营造积极的校园生涯教育氛围。 </div>
									         </li>
									       </ul>
									  </div>
								</div>
							</div>
						</div>
					</div>
			</div>
	  </main>
	</div><!-- /wrapper -->

	<button id="mm-menu-toggle" class="mm-menu-toggle">Toggle Menu</button>	
	<nav id="mm-menu" class="mm-menu">
	  <div class="mm-menu__header">
	    <h2 class="mm-menu__title"></h2>
	  </div>
	  <ul class="mm-menu__items">
	    <li class="mm-menu__item">
	    	<a class="mm-menu__link" href='分享.html'>
	        	<span class="mm-menu__link-text"><i class="md md-home"></i>发帖</span>
	      	</a>
	    </li>
	    <li class="mm-menu__item">
	      <a class="mm-menu__link"  href="评论.jsp">
	        <span class="mm-menu__link-text"><i class="md md-settings"></i>跟帖</span>
	      </a>
	    </li>
	  </ul>
	</nav><!-- /nav -->
	
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