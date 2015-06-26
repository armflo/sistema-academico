<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Pagina del Alumno</title>
<link href="estilos-vista.css" REL="stylesheet" TYPE="text/css">
<script src="script/validarAlumno.js"></script>
<script src="script/jquery-1.11.3.min.js"></script>
<script >
$(document).ready(function(){
	$(".cruz").hide();
	$(".aspa").hide();
	$("#usuario").blur(function(){
		$.get("validarA?dni="+$("#usuario").val(),function(data){
			if(data=="false"){
				$(".cruz").show();
				$(".aspa").hide();
			}
			else{
				$(".cruz").hide();
				$(".aspa").show();
			}
		})
		})
	
})
	

</script>
</head>

<body >
<form action="/guardarAlumno" method="GET" onsubmit="return validar();">


	<div id="principal">	
		<div id="cabe"> 
			<img src="encabezado.png" width="1300" height="100" border="0" alt="cabeza">
			<div id="separacion"></div>
		</div>
	</div>
	
    <div id="marco">
         <div id="cabecera">
            <div class="unir_cabecera">
               <div class="magistral_slogan">Sistema de Informacion de Apoyo a la<br/>Familia Educativa Magistral</div>
            </div>
         </div>
        	<div id="contenido">
            	<div class="ventana">
                <table class="tabla">
                    <tr><td class="titulo">
                    
                       <div class="ico_login"></div>
                      
                       <label>Registro&nbsp;de&nbsp;Usuario</label>
                        </td>
                    </tr>
                    
         <tr><td>
         
          <div id="UpdatePanel1">
                        <table id="Login1" cellspacing="0" cellpadding="0" border="0" style="width:320px;
                        border-collapse:collapse;">
					<tr><td>
                        <table cellpadding="0" cellspacing="0" style="border-collapse: collapse;">
                        <tr><td>
                         
                        <table cellpadding="0" style="width: 390px;">
                            
                        <tr><td align="right">
                        <span >DNI Alumno:</span>
                        </td>                             
                        <td><input name="usuario" id="usuario" type="text" maxlength="8"  style="width:140px;" placeholder="Ingrese Usuario"  required pattern="[0-9]{8}" > 
                        </td>
                        <td align="center"><span style="color: red;"> [ 8 Digitos ] <span class=aspa>&#10004;</span> <span class=cruz>&#10006;</span></span></td>
                        </tr>
                        
                        <tr><td align="right">
                        <span >Clave :</span>
                        </td>                             
                        <td><input name="clave" type="password" maxlength="5"  style="width:140px;" placeholder="Ingrese Clave" required pattern="[0-9]{5}">
                        </td>
                        <td align="center"><span style="color: red;"> [ 5 Digitos ] </span></td>
                        </td>
                        </tr>
                        
                        <tr><td align="right">
                        <span  >Nombres&nbsp;:</span>
                        </td>
                        <td><input name="nombres" type="text"  style="width:140px;" placeholder="Ingrese Nombres" required pattern="([A-Z]\w*)|([A-Z]\w* [A-Z]\w*)">                          	
                        </td>
                        </tr>
                                 
                        <tr><td align="right">
                        <span  >Apellidos&nbsp;:</span>
                        </td>
                        <td><input name="apellidos" type="text"  style="width:140px;" placeholder="Ingrese Apellido" required pattern="([A-Z]\w*)|([A-Z]\w* [A-Z]\w*)">                          	
                        </td>
                        </tr>
                       
                       <tr><td align="right">
                        <span  >E-Mail&nbsp;:</span>
                        </td>
                        <td><input name="email" type="email"  style="width:140px;"placeholder="Ingrese E-mail" required >                          	
                        </td>
                        </tr>
                       
                        <tr><td align="right">
                        <span >Grado&nbsp;:</span>
                        </td>
                        <td><select name="grado"  id="grado" style="width:140px;">
                        <option value="0">Seleccione Grado</option>
                        <option value="Primero">Primero</option>
                        <option value="Segundo">Segundo</option>
                        <option value="Tercero">Tercero</option>
                        <option value="Cuerto">Cuarto</option>
                        <option value="Quinto">Quinto</option>
                        
                        </select>                          	
                        </td>
                        </tr>

                        <tr><td align="right">
                        <span  >Seccion&nbsp;:</span>
                        </td>
                        <td><select name="seccion" id="seccion" style="width:140px;">
                        <option value="0">Seleccione Seccion</option>
                        <option value="A">A</option>
                        <option value="B">B</option>
                        </select>                          	
                        </td>
                        </tr>
                        
                        <tr><td align="right">
                        <span  >DNI&nbsp;Padre&nbsp;:</span>
                        </td>
                        <td><input name="dni" type="text" id="dniPadre" style="width:140px;" maxlength="8" pattern="[0-9]{8}" required>    	
                        </td>
                       <td align="center"><span style="color: red;"> [ 8 Digitos ] </span></td>
                        </tr>
                        
                       <tr><td align="right">
                           </td>
                       </tr>
                       
                       
                       <tr><td align="center">
                           <input type="submit"  name="Login1$LoginButton" value="Agregar" class="objeto_derecha b_boton b_acceder" >
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
                       
        <div id="pie">
            <div class="acercade">
                © Derechos Reservados 2015 - ING DE SISTEMAS - MAGISTRAL
                v3.15.5</div>
        </div>
 </div>
   </form>
</body>
</html>