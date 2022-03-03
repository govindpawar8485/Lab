<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   <%@page import ="org.hibernate.*,org.hibernate.cfg.*,com.model.*,com.DAOClass.*" %>
   
   <%@page import="java.util.*" %> 
 <!--  print data from both the table  -->   
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>


<%
DataConnection d= new DataConnection();
Session s1= d.getSession();

Course c= s1.get(Course.class,141);// select   --output -- class populate 
System.out.println(c.getCname());

c= s1.get(Course.class,141);
System.out.println(c.getCname());

s1.close();
Session s2= d.getSession();
Course c2= s2.get(Course.class,141);
System.out.println(c2.getCname());
s2.close();
%>
