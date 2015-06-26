
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link href="estilos-vista.css" REL="stylesheet" TYPE="text/css">
<script type="text/javascript" src="script/ajax.js "></script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<title>Ingreso_Alumno_NiñoMagistral</title>
<script src="http://code.jquery.com/jquery-1.11.3.min.js"></script>
	<script src="loginAlumno.js"></script>
</head>
<body>
<form action="/buscar" method="get" id="formLoginAlumno">

	<div id="principal">	
		<div id="cabe"> 
			<img src="encabezado.png" width="1300" height="100" border="0" alt="cabeza">
			<div id="separacion"></div>
		</div>
	</div>

			
 			 
 		<div id="marco">	 
 			 <div id="contenido">
            <div class="ventana">
                <table class="tabla">
                    <tr><td class="titulo">
                       <div class="ico_login"></div>
                       <label> Inicio&nbsp;de&nbsp;Sesión </label>
                        </td>
                    </tr>
                    
         <tr><td>
                        <div id="UpdatePanel1">
                        <table id="Login1" cellspacing="0" cellpadding="0" border="0" style="width:320px;border-collapse:collapse;">
					<tr><td>
                        <table cellpadding="0" cellspacing="0" style="border-collapse: collapse;">
                        <tr><td>
                            <table cellpadding="0" style="width: 320px;">
                            
                            	<tr><td align="right">
                                    <label for="Login1_UserName" >Usuario :</label>
                                    </td>       
                                    <td>
                                       <input name="Login1$UserName" type="text"  style="width:120px;" maxlength="8" >
                                    </td>
                                 </tr>
                                 
                                <tr><td align="right">
                            	<label for="Login1_Password" id="Login1_PasswordLabel">Clave&nbsp;de&nbsp;Acceso&nbsp;:</label>
                                </td>
                                	<td><input name="Login1$Password" type="password"  style="width:120px;" >                          	
                            </td>
                       </tr>
                       
                       <tr><td align="right">
                           </td>
                       </tr>
                       
                       <tr><td align="center">
                           <input type="submit" name="Login1$LoginButton" value="Iniciar sesión"   class="objeto_derecha b_boton b_acceder" >
                           </td>
                       </tr>
                         
                        <tr><td align="center">
                        </td>
                        <td><a  style="color: blue ;text-decoration: underline;"   onclick="execute()"  > Olvidaste la Contrase�a?</a>
 			 	</td>
 			 		 <tr><td align= "center">  <div id="hola1" align="center"></div>
 	</td></tr>
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
     
        <div id="pie">
            <div class="acercade">
                © Derechos Reservados 2015 - ING DE SISTEMAS - MAGISTRAL
                v3.15.5</div>
        </div>
         </div>
    		
 			
 			</div>
 		
 		</div>
  


</form>
</body>
</html>
