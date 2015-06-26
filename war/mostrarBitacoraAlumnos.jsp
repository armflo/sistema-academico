<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="t" uri="http://java.sun.com/jsp/jstl/core" %>
<%-- En caso de que exista una sesion iniciada redirecciono a index.jsp. "NO tiene caso mostrar este formulario cuando hay una sesion iniciada --%>
<t:if test="${sessionScope.padre==null}">
    <% response.sendRedirect("consultaPadre.jsp");%>
</t:if>
<%@ page import="web.*"%>
<%@ page import="java.util.List"%>
<% List<Alumno> d = (List<Alumno>)request.getAttribute("dnis");%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>mostrando</title>
</head>
<body>

	<form action="loginServlet" method="GET">
		<input name='salir' type="submit" value='salir' class='salir'>
	</form>
	<div class="Table">
	<div class="Title"><p>Mostrando <%= d.size() %> Bitacoras</p></div>
	<div class="Heading">
	<div class="Cell"><p>Código</p></div>
		<div class="Cell"><p>Horario</p></div>
		<div class="Cell"><p>Curso</p></div>
		<div class="Cell"><p>Contenido</p></div>
	</div>

<%for( Alumno p : d ){%>
	<div class="Row">
		<div class="Cell"><p><%= p.getUsuario() %></p></div>
		<div class="Cell"><p><%= p.getEmail() %></p></div>
		<div class="Cell"><p><%=p.getApellidos()%></p></div>
	</div>
<%}%>
</div>
	
	
</body>
</html>