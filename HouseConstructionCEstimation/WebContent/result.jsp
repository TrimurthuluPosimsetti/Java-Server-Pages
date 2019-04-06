<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<%
String areainsqfeet=request.getParameter("square");
String typeofhouse=request.getParameter("housetype");
int i=Integer.parseInt(areainsqfeet);//converting string into int and storing areainsqfeet in i
float finalcost=1;
String s="";
if(typeofhouse.equals("standard")){
	finalcost=i*1200;
	s="STANDARD";
}
else if(typeofhouse.equals("above standard")){
	finalcost=i*1500;
	s="ABOVE STANDARD";
}
else if(typeofhouse.equals("high standard")){
	finalcost=i*1800;
	s="HIGH STANDARD";
}
else if(typeofhouse.equals("automated")){
	finalcost=i*2500;
	s="AUTOMATED";
}
%>
<body>
<form action="index.html">
<h1><%= areainsqfeet%> SQUARE FEET OF <%= s%> HOUSE COSTS <%=finalcost %></h1>
<button type="submit">HOME</button>
</form>
</body>
</html>