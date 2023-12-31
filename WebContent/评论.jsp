<%@ page language="java" import="java.sql.*" pageEncoding="utf-8"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.PreparedStatement" %>
<!DOCTYPE html><html><head> <meta charset="UTF-8"><title>评论</title><script src="/libs/prefixfree.min.js"></script> <script src="/libs/modernizr.js"></script><style>* {
    box-sizing: border-box;
}
html {
    color: #4d4d4d;
    background-color: #ebeff1;
    font-family: "Signika";
    font-size: 16px;
    font-weight: 300;
    text-rendering: optimizeLegibility;
    -webkit-font-smoothing: antialiased;
}
h1 {
    font-size: 26px;
    font-weight: 700;
}
h2 {
    font-size: 18px;
    font-weight: 400;
}
h3 {
    font-size: 18px;
    font-weight: 700;
}
h4 {
    font-size: 12px;
    font-weight: 400;
    color: #89989c;
}
.post__avatar,
.comment-form__avatar {
    position: absolute;
    top: 15px;
    left: 15px;
    height: 50px;
    width: 50px;
    background-color: #89989c;
    border-radius: 50%;
}
.comment-form .comment-form__actions .button {
    position: relative;
    display: inline-block;
    width: initial;
    height: 35px;
    padding: 0 10px;
    margin-left: 15px;
    background-color: white;
    color: #4ab2d9;
    line-height: 35px;
    font-weight: 400;
    text-align: center;
    border-radius: 2px;
    cursor: pointer;
    border: 1px solid #4ab2d9;
    -webkit-transition: all 0.1s;
    -o-transition: all 0.1s;
    transition: all 0.1s;
}
.comment-form .comment-form__actions .button:hover {
    background-color: #4ab2d9;
    color: #fff;
}
.container {
    width: 65%;
    margin: 50px auto 100px;
}
.response-group {
    position: relative;
    width: 100%;
    padding: 100px 15px 15px;
    background-color: #fff;
    border-radius: 2px;
    box-shadow: 0 2px 1px rgba(0, 0, 0, 0.15);
}
.response-group > header {
    position: absolute;
    top: 0;
    left: 0;
    right: 0;
    padding: 5px 15px;
    background-color: rgba(255, 255, 255, 0.75);
    border-bottom: 3px solid #ebeff1;
}
.response-group > header i {
    margin: 0 15px;
}
.response {
    position: relative;
}
.response__number {
    position: absolute;
    width: 2rem;
    height: 2rem;
    line-height: 1.8rem;
    font-size: 1.2em;
    font-weight: 700;
    text-align: center;
    color: #89989c;
    border: 2px solid #cdd7dc;
    border-radius: 50%;
}
.response__title {
    margin-left: 3.25rem;
    margin-bottom: 50px;
}
.post-group {
    margin-left: 3.5rem;
}
.post {
    position: relative;
    padding: 15px 15px 50px 80px;
    margin-bottom: 50px;
    border: 1px solid #ebeff1;
    border-bottom: none;
    box-shadow: 0 2px 1px rgba(0, 0, 0, 0.15);
}
.post__author {
    margin-top: 5px;
    margin-bottom: 5px;
}
.post__timestamp {
    margin-top: 0;
}
.post__actions {
    position: absolute;
    bottom: 0;
    left: 0;
    right: 0;
    height: 40px;
    background-color: #ebeff1;
    border-top: 1px solid #ebeff1;
}
.post__actions .button {
    display: inline-block;
    height: 40px;
    width: 40px;
    line-height: 40px;
    text-align: center;
    vertical-align: top;
    border-right: 1px solid #cdd7dc;
}
.post__actions .button i.solid {
    display: none;
}
.post__actions .button:not(.comment):active i {
    transform: scale(1.2);
}
.post__actions .button:not(.comment):hover,
.post__actions .button:not(.comment).active {
    background-color: #fff;
    cursor: pointer;
}
.post__actions .button:not(.comment):hover i.solid,
.post__actions .button:not(.comment).active i.solid {
    display: inline-block;
}
.post__actions .button:not(.comment):hover i:not(.solid),
.post__actions .button:not(.comment).active i:not(.solid) {
    display: none;
}
.post__actions .button:not(.comment):hover.button--approve,
.post__actions .button:not(.comment).active.button--approve {
    color: #5fbc71;
}
.post__actions .button:not(.comment):hover.button--deny,
.post__actions .button:not(.comment).active.button--deny {
    color: #f26f54;
}
.post__actions .button--flag {
    width: 60px;
    border-right: none;
    font-weight: 400;
}
.post__actions .button--flag i {
    margin-right: 5px;
}
.post__actions .button--fill {
    width: calc(100% - 140px);
    padding: 0 10px;
    text-align: left;
    font-size: 16px;
    font-weight: 400;
    color: #89989c;
}
.post__comment {
    display: none;
    padding: 15px;
}
.comment-form {
    height: 100%;
    position: relative;
    padding: 15px 15px 50px 65px;
    background-color: #fff;
    border-radius: 2px;
    box-shadow: 0 2px 1px rgba(0, 0, 0, 0.15);
}
.comment-form textarea {
    width: 100%;
    height: 4em;
    margin-bottom: 10px;
    font-size: 16px;
    border: 1px solid #cdd7dc;
    border-radius: 2px;
    box-shadow: 0 1px 1px #ebeff1 inset;
}
.comment-form textarea:focus {
    outline: none;
}
.comment-form__avatar {
    height: 35px;
    width: 35px;
}
.comment-form .comment-form__actions {
    text-align: right;
}
.comment-form .comment-form__actions .button--confirm {
    border-color: #5fbc71;
    color: #5fbc71;
}
.comment-form .comment-form__actions .button--confirm:hover {
    background-color: #5fbc71;
    color: #fff;
}
.comment-form .comment-form__actions .button--light {
    border-color: transparent;
    color: #89989c;
}
.comment-form .comment-form__actions .button--light:hover {
    background-color: #89989c;
    color: #fff;
}
.post--commenting {
    padding-bottom: 225px;
}
.post--commenting .post__actions {
    height: 215px;
}
.post--commenting .button.comment span {
    display: none;
}
.post--commenting .post__comment {
    display: block;
    height: 175px;
    border-top: 1px solid #cdd7dc;
}
body{
	background-image: url(../img/landscape.jpg);
    background-repeat: no-repeat;
    background-attachment: fixed;
    background-size: 100%;
}
</style>
<script src="//wow.techbrood.com/libs/jquery/jquery-2.1.1.min.js"></script></head>
<body>
<%
	request.setCharacterEncoding("utf-8");
	/* Class.forName("com.mysql.jdbc.Driver"); */
	Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
	/* Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/Management", "admin1", "123456789"); */
 	Connection con = DriverManager.getConnection("jdbc:sqlserver://localhost:1433;DatabaseName=CouseManage", "sa", "rxy"); 
		%>
<link rel='stylesheet prefetch' href='https://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css'>
<div class="container">
    <div class="response-group">
        <div class="response">
            <div class="response__number">1</div>
            <h1 class="response__title">评论</h1>
            <div class="post-group">
                <div class="post">
                    <div class="post__avatar"></div>
                    <%
                    	PreparedStatement stmt = con.prepareStatement("select * from bbs where bno='S001'");
						ResultSet rs = stmt.executeQuery();
						rs.next();
					%>
                    <h3 class="post__author"><%=rs.getString(1)%></h3>
                    <h4 class="post__timestamp">Oct 13 at 8:51pm </h4>
                    <p class="post__body"><%=rs.getString(2)%></p>
                    <div class="post__actions">
                        <div class="button button--approve"><i class="fa fa-thumbs-o-up"></i><i class="fa fa-thumbs-up solid"></i>
                        </div>
                        <div class="button button--deny"><i class="fa fa-thumbs-o-down"></i><i class="fa fa-thumbs-down solid"></i>
                        </div>
                        <div class="button button--fill comment"><span>Comment...</span>
                        </div>
                        <div class="button button--flag"><i class="fa fa-comment-o"></i><i class="fa fa-comment solid"></i>2</div>
                        <div class="post__comment">
                            <div class="comment-form">
                                <div class="comment-form__avatar"></div>
                                <textarea></textarea>
                                <div class="comment-form__actions">
                                    <div class="button button--light cancel">Cancel</div>
                                    <div class="button button--confirm">Comment</div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="post">
                    <div class="post__avatar"></div>
                     <%PreparedStatement stmt1 = con.prepareStatement("select * from bbs where bno='S002'");
                      ResultSet rs1 = stmt1.executeQuery();
                      rs1.next();%>
                    <h3 class="post__author"><%=rs1.getString(1)%></h3>
                    <h4 class="post__timestamp">Oct 13 at 8:51pm </h4>
                    <p class="post__body"><%=rs1.getString(3)%></p>
                    <div class="post__actions">
                        <div class="button button--approve"><i class="fa fa-thumbs-o-up"></i><i class="fa fa-thumbs-up solid"></i>
                        </div>
                        <div class="button button--deny"><i class="fa fa-thumbs-o-down"></i><i class="fa fa-thumbs-down solid"></i>
                        </div>
                        <div class="button button--fill comment"><span>Comment...</span>
                        </div>
                        <div class="button button--flag"><i class="fa fa-comment-o"></i><i class="fa fa-comment solid"></i>2</div>
                        <div class="post__comment">
                            <div class="comment-form">
                                <div class="comment-form__avatar"></div>
                                <textarea></textarea>
                                <div class="comment-form__actions">
                                    <div class="button button--light cancel">Cancel</div>
                                    <div class="button button--confirm">Comment</div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="post">
                    <div class="post__avatar"></div>
                    <%PreparedStatement stmt2 = con.prepareStatement("select * from bbs where bno='S003'");
                      ResultSet rs2 = stmt2.executeQuery();
                      rs2.next();%>
                    <h3 class="post__author"><%=rs2.getString(1)%></h3>
                    <h4 class="post__timestamp">Oct 13 at 8:51pm </h4>
                    <p class="post__body"><%=rs2.getString(3)%></p>
                    <div class="post__actions">
                        <div class="button button--approve"><i class="fa fa-thumbs-o-up"></i><i class="fa fa-thumbs-up solid"></i>
                        </div>
                        <div class="button button--deny"><i class="fa fa-thumbs-o-down"></i><i class="fa fa-thumbs-down solid"></i>
                        </div>
                        <div class="button button--fill comment"><span>Comment...</span>
                        </div>
                        <div class="button button--flag"><i class="fa fa-comment-o"></i><i class="fa fa-comment solid"></i>2</div>
                        <div class="post__comment">
                            <div class="comment-form">
                                <div class="comment-form__avatar"></div>
                                <textarea></textarea>
                                <div class="comment-form__actions">
                                    <div class="button button--light cancel">Cancel</div>
                                    <div class="button button--confirm">Comment</div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                
  
            </div>
        </div>
    </div>
</div><script>$(".button").click(function() {
    $(this).toggleClass("active");
});

$(".comment").click(function() {
    $(this).parent().parent().toggleClass("post--commenting");
});

$(".button--flag").click(function() {
    $(this).parent().parent().toggleClass("post--commenting");
});


$(".button--confirm").click(function() {
    $(this).parent().parent().parent().parent().parent().toggleClass("post--commenting");
});

$(".button.cancel").click(function() {
    $(this).parent().parent().parent().parent().parent().toggleClass("post--commenting");
});</script></body></html>