<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>top</title>
    <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.4/jquery.min.js"></script>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<meta http-equiv="content-type" content="text/html;charset=utf-8">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<style type="text/css">
body {
  background: #ddd;
}

#button {
  width: 100px;
  height: 100px;  
  border-bottom: 2px solid #eee;
  
  background-image: -webkit-linear-gradient(top, #999, #d0d0d0 80% );
  background-image: -moz-linear-gradient(top, #999, #d0d0d0 80% );
  background-image: -ms-linear-gradient(top, #999, #d0d0d0 80% );
  background-image: -o-linear-gradient(top, #999, #d0d0d0 80% );
  background-image: linear-gradient(top, #999, #d0d0d0 80% );
  
  -moz-border-radius: 100px;  
  -webkit-border-radius: 100px;  
  border-radius: 100px;
  
  box-shadow: inset rgba(0,0,0,0.2) 0px 5px 6px ;
  
  left: 50%;
  top: 50%;
  margin-left: -50px;
  margin-top: -50px;
  position: absolute;
}

.butt {
  position: absolute;
  width: 80px;
  height: 52px;
  left: 10px;
  top: 10px;
  cursor: pointer;
  font-family: "Lucida Sans";
  font-weight: bold;
  font-size: 23px;
  color: #888;
  text-shadow: 0px 1px 0px #fff;
  text-align: center;
  padding-top: 28px;
  
  -moz-border-radius: 100px;  
  -webkit-border-radius: 100px;  
  border-radius: 100px;  
  
  background-image: -webkit-linear-gradient(top, #eee, #bbb 70%, #9f9f9f 100% );
  background-image: -moz-linear-gradient(top, #eee, #bbb 70%, #9f9f9f 100% );
  background-image: -ms-linear-gradient(top, #eee, #bbb 70%, #9f9f9f 100% );
  background-image: -o-linear-gradient(top, #eee, #bbb 70%, #9f9f9f 100% );
  background-image: linear-gradient(top, #eee, #bbb 70%, #9f9f9f 100% );
  
  background-position: 0 6px;
  background-color: #eee;
  background-repeat: no-repeat;
  
  -webkit-box-shadow: rgba(0,0,0,.4) 0 3px 6px;  
  -moz-box-shadow: rgba(0,0,0,.4) 0 3px 6px;  
  box-shadow: rgba(0,0,0,.4) 0 3px 6px;
  
  -webkit-transition: all .1s ease-in;
  -moz-transition: all .1s ease-in;
  -ms-transition: all .1s ease-in;
  -o-transition: all .1s ease-in;
  transition: all .1s ease-in;
}

.butt:hover {
  background-position: 0 0px;
  
  -webkit-box-shadow: rgba(0,0,0,.4) 0 3px 8px;  
  -moz-box-shadow: rgba(0,0,0,.4) 0 3px 8px;  
  box-shadow: rgba(0,0,0,.4) 0 3px 8px;
}

.butt:active {
  width: 76px;
  height: 48px;
  margin: 2px 0 0 2px;   
  border-bottom: 1px solid #fff;
  font-size: 21px;
  color: #777;

  -webkit-box-shadow: inset rgba(0,0,0,.5) 0px 5px 10px;
  -moz-box-shadow: inset rgba(0,0,0,.5) 0px 5px 10px;
  box-shadow: inset rgba(0,0,0,.5) 0px 5px 10px;
}
a{
	text-decoration: none;
}
</style>
  </head>
  
  <body>
<h1 style="text-align: center;">Initialize DB</h1>
<div style="font-size: 20pt;">
	<c:choose>
		<c:when test="${empty sessionScope.session_user }">
			<a href="<c:url value='/jsps/user/login.jsp'/>" target="_parent">Login</a> |&nbsp; 
			<a href="<c:url value='/jsps/user/regist.jsp'/>" target="_parent">Register</a>		
		</c:when>
		<c:otherwise>
			Hello：${sessionScope.session_user.username };
			<div id = "button" style="margin-top: -30;">
			
			<a class="butt" href="<c:url value='/findAll'/>" target="body">PUSH</a>&nbsp;&nbsp;
			</div>
		</c:otherwise>
	</c:choose>
</div>
  </body>
</html>
