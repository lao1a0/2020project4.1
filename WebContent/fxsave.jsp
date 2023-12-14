<%@ page contentType="text/html; charset=utf-8" import="java.sql.*" errorPage="error.jsp"%>
<html>
	<head>
		<meta charset="UTF-8">
		<link type="text/css" rel="stylesheet" href="css2/register.css">
		<title>分享</title>
	</head>
	<body>
	<%
		request.setCharacterEncoding("utf-8");
		String bno = request.getParameter("bno");
		String btime= request.getParameter("btime");
		String bcontent1 = request.getParameter("introduction1");
		String bcontent2 = request.getParameter("introduction2");
		/* Class.forName("com.mysql.jdbc.Driver"); */
		Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
		/* Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/Management", "admin1", "123456789"); */
	 	Connection con = DriverManager.getConnection("jdbc:sqlserver://localhost:1433;DatabaseName=CouseManage", "sa", "rxy"); 
		/* Class.forName("com.mysql.jdbc.Driver"); */
		/* Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/Management", "admin1", "123456789");
		 */
		Statement stmt = con.createStatement();
		String sql = "insert into bbs(bno,btime,bcontent1,bcontent2) values('" + bno + "','" + btime + "','" + bcontent1 + "','" + bcontent2 + "')";
		int i = stmt.executeUpdate(sql);
		if (i == 1) {
			out.println("<h2>分享成功！</h2><br/>");
			out.println("<a href='bbs.html'>返回论坛</a>");
		} else {
			out.println("<h2>分享失败！</h2><br/>");
			out.println("<a href='分享.html'>重新分享</a>");
		}
		stmt.close();
		con.close();
	%>
	</body>
</html>