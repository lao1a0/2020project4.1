<%@ page language="java" import="java.sql.*" pageEncoding="utf-8"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.PreparedStatement" %>
<html>
<head>
<title>广场</title>
<link rel="stylesheet" type="text/css" href="css2/register.css">
</head>
<body>
<%
request.setCharacterEncoding("utf-8");
Class.forName("com.mysql.jdbc.Driver");
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/Management", "admin1", "123456789");
PreparedStatement stmt = con.prepareStatement("select * from bbs");
ResultSet rs = stmt.executeQuery();
rs.next();
		%>
	<div class="whole">

<form class="contact_form" action="#" method="post" name="contact_form">
    <ul>
    	<li class="usually">
             <h1 style="color:white">广场</h1>
        </li>
    	<li class="usually">
            <span style="color:white">佳句:</span>
            <textarea rows="9" cols="200" name="introduction" placeholder=""/!表格/
        class="message" required> <%=rs.getString(2)%> </textarea> 
    	</li>
    	<li class="usually">
        <span style="color:white">感想:</span>
            <textarea rows="9" cols="200" name="introduction" placeholder=""
        class="message" required><%=rs.getString(3)%></textarea>
       </li>
        </ul>
       
    </form>
  
	<br />
	<hr />
	</div>
</body>
</html>