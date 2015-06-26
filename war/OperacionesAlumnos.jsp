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
<title>Insert title here</title>
<link href="estilos-dd.css" REL="stylesheet" TYPE="text/css">
</head>
<body>
<form action="/obtenerGrado" method="get">

 
          <div id="UpdatePanel1">
                        <table id="Login1" cellspacing="0" cellpadding="0" border="0" style="width:320px;
                        border-collapse:collapse;">
					<tr><td>
                        <table cellpadding="0" cellspacing="0" style="border-collapse: collapse;">
                        <tr><td>
                        <table cellpadding="0" style="width: 320px;">
                           
                          <tr><td align="right">
                        <span>Grado :</span>
                        </td>                             
                        <td><select style="text-align: center; " name="grado">
                        <option value="0">Seleccione Grado</option>
                        <option value="Primero">1°</option>
                        <option value="Segundo">2°</option>
                        <option value="Tercero">3°</option>
                         <option value="Cuarto">4°</option>
                        <option value="Quinto">5°</option>

                        </select>
                        </td>
                        </tr>  
                           
                           
                        <tr><td align="right">
                        <span>DNI :</span>
                        </td>                             
                        <td><input name="dni" type="text"   style="width:120px;" maxlength="8" >
                        </td>
                        </tr>
 
                     

                                            

                        
                       <tr><td align="right">
                           </td>
                       </tr>
                       
                       <tr><td align="center">
                           <input type="submit" name="envio" value="Llenar Bitacora"   class="objeto_derecha b_boton b_acceder" >
                           </td>
                           <td>
                           <input type="submit" name="envio" value="Modificar"   class="objeto_derecha b_boton b_acceder" >
                          </td>
                          <td> <input type="submit" name="envio" value="Retirar"   class="objeto_derecha b_boton b_acceder" >
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
                       
         </div>

</form>
</body>
</html>
