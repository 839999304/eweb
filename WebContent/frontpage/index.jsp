<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="test.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>hello word!</h1>
<%
out.println("hello..."); 
%><br/>

<%pageContext.setAttribute("name", "wangbin"); %>
<%pageContext.setAttribute("password", "123456"); %>
<%session.setAttribute("name2", "zhangsan"); %>
<%=(pageContext.getAttribute("name"))%>
<%=(pageContext.getAttribute("password1")) %>
<%@include file="test.jsp" %>


<form action="index3.jsp" method="post">
	<input type=text name="info" value="please put in。。。">
	<input type="submit" value="提交"> 
</form>
</body>
</html>