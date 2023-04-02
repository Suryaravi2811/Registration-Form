<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="com.surya.dao.UserDao" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<jsp:useBean id="u" class="com.surya.bean.User"/>
<jsp:setProperty property="*" name="u"/>
<%
int i=UserDao.save(u);
if(i>0){
	response.sendRedirect("Adduser-success.jsp");
}
else{
	response.sendRedirect("Adduser-error.jsp");
}
%>

</body>
</html>