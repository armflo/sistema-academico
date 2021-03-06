<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="t" uri="http://java.sun.com/jsp/jstl/core" %>
<%-- En caso de que exista una sesion iniciada redirecciono a index.jsp. "NO tiene caso mostrar este formulario cuando hay una sesion iniciada --%>
<t:if test="${sessionScope.usuario==null}">
    <% response.sendRedirect("/accesoDocente.jsp");%>
</t:if>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%-- <%@page import="web.*"%>
<%@page import="java.util.*"%> --%>
<html>
<head>
<link href="estilos-vista-descripcion.css" REL="stylesheet" TYPE="text/css">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="/guardarBitacora" method="POST">

	<div id="principal">	
		<div id="cabe"> 
			<img src="encabezado.png" width="1300" height="100" border="0" alt="cabeza">
			<div id="separacion"></div>
		</div>
	</div>
	
	<div id="marco">
         <div id="cabecera">
            <div class="unir_cabecera">
               <div class="magistral_slogan">
                    Sistema de Información de Apoyo a la<br >
                    Familia Educativa Magistral</div>
            </div>
           </div>
        <div id="contenido">
            <div class="ventanaD">
                <table class="tabla">
                    <tr><td class="titulo">
                       <div class="ico_login"></div>
                       <label> Registro&nbsp;de&nbsp;Bitacora </label>
                        </td>
                    </tr>
                    
        			 <tr><td >
         			 <div id="UpdatePanel1">
                        <table id="Login1" cellspacing="0" cellpadding="0" border="0" style="width:320px;
                        border-collapse:collapse;">
						
						<tr><td>
                        <table cellpadding="0" cellspacing="0" style="border-collapse: collapse;">
                        
                        	<tr><td>
                            <table cellpadding="0" style="width: 320px;">
                       		 <tr><td align="right">
                        	<span >Descripcion :</span>
                        	</td>                             
                        <td>
                        <textarea rows="5" cols="45" name="descripcion" maxlength="140" placeholder="Detalle aquí" dir="ltr" aria-autocomplete="list" aria-owns="typeahead-dropdown-4" aria-expanded="false" autofocus required ></textarea>
                        <!-- <input name="Login1$UserName" type="text" maxlength="15" id="Login1_UserName" style="width:120px;" />
                        --><span id="max">*MAXIMO 140 CARACTERES</span>
                        </td>
                        </tr>
                                 
                        <tr><td align="right">
                        <span >Curso &nbsp;:</span>
                        </td>
                        <td><select name="curso"  >
                        <option id="0">Seleccione Curso</option>
                        <option id="Matematica">Matematica</option> 
                        <option id="Arte">Arte</option> 
                        <option id="Comunicacion">Comunicacion</option>
                          </select>  
                        <%--     <% String a = request.getParameter("curso"); 
                           if(a.equals("0")){ %>
                           alert("Seleccione campo")    <%}%>  --%>                 	
                        </td>
                        </tr>
                        
                        <tr><td align="right">
                        <label>Horario &nbsp;:</label>
                        </td>
                        <td><input name="horario" type="text"  style="width:120px;" pattern="([1-9]|1[012]):[012345][0-9](((A|P)M)|((a|p)m))-([1-9]|1[012]):[012345][0-9](((A|P)M)|((a|p)m))" required  >       <!--((((a|A)|(p|P))(m|M))  -->                   	
                        <span id="formato" style="color: red">EJEMPLO: "1:22PM-1:53PM"</span></td>
                        </tr>
                                      
                                   
                       <tr><td align="right">
                           </td>
                       </tr>
                       
                       <tr><td align="center">
                           <input type="submit" name="Login1$LoginButton" value="Enviar"   class="objeto_derecha b_boton b_acceder" >
                           </td>
                       </tr>
                         
                       </table>
                     </td></tr>
                   </table>
                  </td></tr>
			</table>                                
		</div>
	</td></tr>
                    
                </table>
            </div>
        </div>
     
     	<div id= "separacion">
     	</div>
                       
        <div id="pie">
            <div class="acercade">
                © Derechos Reservados 2015 - ING DE SISTEMAS - MAGISTRAL
                v3.15.5</div>
        </div>
    </div>
</form>
</body>
</html>
