<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<nav id="mm-menu" class="mm-menu">
	  <div class="mm-menu__header">
	    <h2 class="mm-menu__title">Hello <%=session.getAttribute("name")  %> !</h2>
	  </div>
	  <ul class="mm-menu__items">
	    <li class="mm-menu__item">
	    	<a class="mm-menu__link" href='index.do'>
	        	<span class="mm-menu__link-text"><i class="md md-home"></i>主页</span>
	      	</a>
	    </li>
	   <%    		
	   		String type=(String)session.getAttribute("type");   
  			if("Admin".equals(type))
	   		{
		   		out.print(
		   			"<li class=\"mm-menu__item\">"
				   		+"<a class=\"mm-menu__link\" href=\"student.do\">"
				   	     	+"<span class=\"mm-menu__link-text\"><i class=\"md md-person\"></i>学生信息管理</span>"
				      	+"</a>"
				   	+"</li>"
			    	+"<li class=\"mm-menu__item\">"
				      	+"<a class=\"mm-menu__link\" href=\"teacher.do\">"
				        	+"<span class=\"mm-menu__link-text\"><i class=\"md md-inbox\"></i>教师信息管理</span>"
				      	+"</a>"
				    +"</li>"
				    +"<li class=\"mm-menu__item\">"
				      +"<a class=\"mm-menu__link\" href=\"insert.do\">"
				        	+"<span class=\"mm-menu__link-text\"><i class=\"md md-favorite\"></i>添加信息</span>"
				      +"</a>"
				    +"</li>");
	  	   }
  			else if("Teacher".equals(type))
  			{
  				out.print(
  			   			"<li class=\"mm-menu__item\">"
  					   		+"<a class=\"mm-menu__link\" href=\"thcinsert.do\">"
  					   	     	+"<span class=\"mm-menu__link-text\"><i class=\"md md-person\"></i>添加课程或作业</span>"
  					      	+"</a>"
  					   	+"</li>"
  					   	+"<li class=\"mm-menu__item\">"
  					      	+"<a class=\"mm-menu__link\" href=\"tbase.do\">"
  					        	+"<span class=\"mm-menu__link-text\"><i class=\"md md-inbox\"></i>课程设置</span>"
  					      	+"</a>"
  					    +"</li>"
  				    	+"<li class=\"mm-menu__item\">"
  					      	+"<a class=\"mm-menu__link\" href=\"thomework.do\">"
  					        	+"<span class=\"mm-menu__link-text\"><i class=\"md md-inbox\"></i>批改作业</span>"
  					      	+"</a>"
  					    +"</li>"
  					  +"<li class=\"mm-menu__item\">"
					      +"<a class=\"mm-menu__link\" href=\"tgrade.do\">"
					        	+"<span class=\"mm-menu__link-text\"><i class=\"md md-favorite\"></i>公布成绩</span>"
					      +"</a>"
					   +"</li>" );
  			}
  			else
  			{
  				out.print(
  						"<li class=\"mm-menu__item\">"
					      	+"<a class=\"mm-menu__link\" href=\"sbase.do\">"
					        	+"<span class=\"mm-menu__link-text\"><i class=\"md md-inbox\"></i>我的作业</span>"
					      	+"</a>"
					      +"</li>");
  			}
	 	  %>
	    <li class="mm-menu__item">
	      <a class="mm-menu__link" href="self.do">
	        <span class="mm-menu__link-text"><i class="md md-settings"></i>个人信息设置</span>
	      </a>
	    </li>
	  </ul>
	</nav><!-- /nav -->