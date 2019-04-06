<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<%
String principalamt=request.getParameter("p");
String time=request.getParameter("t");
String rate=request.getParameter("r");
String ftype=request.getParameter("func");//ftype is simpleinterest or compoundinterest
double output=0;
String s="";
if(ftype.equals("simple")){
	output=(Integer.parseInt(principalamt)*Integer.parseInt(time)*Integer.parseInt(rate))/100;
	s="SIMPLE INTEREST";
}
else if(ftype.equals("compound")){
	output=Integer.parseInt(principalamt)*Math.pow(1.0+Integer.parseInt(rate)/100.0,Integer.parseInt(time));
	s="COMPOUND INTEREST";
}
%>
<body>
<form action="index.html">
<h1><%= s%> FOR GIVEN INPUTS IS <%= output%></h1>
<button type="submit">Home</button></form>
</body>
</html>