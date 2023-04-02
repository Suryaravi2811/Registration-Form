<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%@page import="com.surya.dao.UserDao"%>  
<jsp:useBean id="u" class="com.surya.bean.User"></jsp:useBean>  
<jsp:setProperty property="*" name="u"/>  
<%  
int i=UserDao.update(u);  
response.sendRedirect("viewuser.jsp");  
%> 

</body>
</html>