<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link href="estilos-vista-descripcion.css" REL="stylesheet" TYPE="text/css">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form action="/buscar" method="get">

	      
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
        