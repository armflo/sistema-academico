<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="t" uri="http://java.sun.com/jsp/jstl/core" %>
<%-- En caso de que exista una sesion iniciada redirecciono a index.jsp. "NO tiene caso mostrar este formulario cuando hay una sesion iniciada --%>
<t:if test="${sessionScope.usuario==null}">
    <% response.sendRedirect("PaginaPrincipal.jsp");%>
</t:if>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Sesión iniciada</title>
<script type="text/javascript" src="script/jquery-1.11.3.min.js"></script>			
			<script src="script/loginExito.js"></script>
</head>
<body class='cuerpo'>
	<div class='cuerpo'>
	
	<center><p>Bienvenido ${sessionScope.usuario} pedazo de mela ¡¡ </p>
	<input type="text" value='${sessionScope.usuario}' class='usuario'>
	<form action="loginServlet" method="GET">
	<input name ='salir'type="submit" value='salir' class='salir'>
	</form>
	</center>	
	</div>
	
	
</body>
</html>