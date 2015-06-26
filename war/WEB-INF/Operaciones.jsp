<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="t" uri="http://java.sun.com/jsp/jstl/core" %>
<%-- En caso de que exista una sesion iniciada redirecciono a index.jsp. "NO tiene caso mostrar este formulario cuando hay una sesion iniciada --%>
<t:if test="${sessionScope.usuario==null}">
    <% response.sendRedirect("accesoDocente.jsp");%>
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

	<div id="principal">	
		<div id="cabe"> 
			<img src="encabezado.png" width="1300" height="100" border="0" alt="cabeza">
			<div id="separacion"></div>
		</div>
	</div>
	
    <div id="marco">
         <div id="cabecera">
        <div></div>   
    </div>
    
        <div id="contenido">
            <div class="ventanaD">
                <table class="tabla">
                    <tr><td class="titulo">
                       <div class="ico_login"></div>
                       <label>Operaciones</label>
                        </td>
                    </tr>
                    
         <tr>
         
          <div id="UpdatePanel1">
         
                        <table id="Login1" cellspacing="0" cellpadding="0" border="0" style="width:320px;
                        border-collapse:collapse;">
					<tr><td>
                                      <center><p>Bienvenido ${sessionScope.usuario} pedazo de mela ¡¡ </p>
	<input type="text" value='${sessionScope.usuario}' class='usuario'></center>  
                       <tr><td align="center">
                           <input type="button" id="OpAl" value="Operaciones Alumnos" onclick="OpAlumno()" class="objeto_derecha b_boton b_acceder" >
                           </td>
                           <td>
                           <input type="button" id="OpAd" value="Operaciones Administrativos" onclick="OpAdministrativo()"   class="objeto_derecha b_boton b_acceder" >
                          </td>
                          <td>
                          <form action="loginServlet" method="GET">
							<input name ='salir'type="submit" value='salir' class='salir'>
								</form>
                          </td>
                       </tr>
                         
                               
                       </table>
             
            </div>
            <br><br><br><br>
            <div align="center" id="op">sd</div>
        </div>
     
     	<div id= "separacion">
 
     	</div>
                       
        <div id="pie">
            <div class="acercade">
                Â© Derechos Reservados 2015 - ING DE SISTEMAS - MAGISTRAL
                v3.15.5</div>
        </div>
         </div>

</form>
</body>
</html>
