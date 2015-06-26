<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="t" uri="http://java.sun.com/jsp/jstl/core" %>
<%-- En caso de que exista una sesion iniciada redirecciono a index.jsp. "NO tiene caso mostrar este formulario cuando hay una sesion iniciada --%>
<t:if test="${sessionScope.usuario==null}">
    <% response.sendRedirect("accesoDocente.jsp	");%>
</t:if>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link href="estilos-vista-descripcion.css" REL="stylesheet" TYPE="text/css">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>OPERACIONES</title>
<script src="script/ajax.js"></script>
<script type="text/javascript" src="script/jquery-1.11.3.min.js"></script>			
			<script src="script/loginExito.js"></script>
</head>
<body>

	 
        <div id="contenido">
            <div class="ventanaD">
                <table class="tabla">
                    <tr><td class="titulo">
                       <div class="ico_login"></div>
                       <label>Operaciones&nbsp;Alumnos</label>
                        </td>
                    </tr>
                    
         <tr>
         
          <div id="UpdatePanel1">
         
                        <table id="Login1" cellspacing="0" cellpadding="0" border="0" style="width:320px;
                        border-collapse:collapse;">
					<tr><td>
                       <tr><td align="center">
                           <input type="button" value="Agregar Alumno"  onclick= "location.href='agregarAlumno.jsp'" class="objeto_derecha b_boton b_acceder" >
                           </td>
                           <td>
                           <input type="button" value="Buscar"   onclick="OpAlumnoPrima()" class="objeto_derecha b_boton b_acceder" >
                          </td>
                          <td>
                          </td>
                       </tr>
                       </table>  
                      </div>          
                     
         
        </div>
     
     	
                       
       </form>
</body>
</html>
