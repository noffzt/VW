<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Formulario</title>
</head>
<body>
<% java.text.DateFormat fecha = new java.text.SimpleDateFormat("dd/mm/yyy"); %>
	<form method="POST" action="NewFile.jsp">
	<input type="text" name="nombre"><br>
	<input type="text" name="email"><br>
	<input type="text" name="fecha" value= <%= fecha.format(new java.util.Date()) %> ><br>
	<input type="submit">
	</form>
	<% if ((request.getParameter("nombre") != null) && (request.getParameter("nombre") != "")  ){%>
	<P><%= request.getParameter("nombre")  %> </P>
	<% } else {%>
	<P>Waiting...</P>
	<%}%>
</body>
</html>
