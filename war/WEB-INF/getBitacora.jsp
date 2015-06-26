<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="web.*"%>
<%@ page import="java.util.List"%>
<% List<Bitacora> bitacoras = (List<Bitacora>)request.getAttribute("bitacoras");%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">
<html lang="es">
<head>
<title>Programación Web con Google App Engine</title>
<meta http-equiv="content-type" content="text/html; charset=UTF-8">
<meta name="description" content="Ejemplos de proyectos de aplicaciones Web con Google App Engine.">
<meta name="keywords" content="Google app engine,Servlets,Java,GAE,HTML,CSS,JSP,Eclipse">
<meta name="author" content="Richart Escobedo (rescobedo)">
<link rel="icon" type="image/png" href="http://indice-ejemplos.appspot.com/Java-icon.png"> 
<link rel="stylesheet" type="text/css" href="http://indice-ejemplos.appspot.com/miestilo.css">
</head>
<body>
<!-- Menú de navegación del sitio -->

<div class="Table">
	<div class="Title"><p>Mostrando <%= bitacoras.size() %> Bitacoras</p></div>
	<div class="Heading">
	<div class="Cell"><p>Código</p></div>
		<div class="Cell"><p>Horario</p></div>
		<div class="Cell"><p>Curso</p></div>
		<div class="Cell"><p>Contenido</p></div>
	</div>

<%for( Bitacora p : bitacoras ){%>
	<div class="Row">
		<div class="Cell"><p><%= p.getHora() %></p></div>
		<div class="Cell"><p><%= p.getCurso() %></p></div>
		<div class="Cell"><p><%= p.getContenido() %></p></div>
	</div>
<%}%>
</div>
</body>
</html>