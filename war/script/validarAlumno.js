
function validar(){
	var grado = document.getElementById("grado").value;
	var seccion = document.getElementById("seccion").value;
	var dniA = document.getElementById("usuario").value;
	var dniP = document.getElementById("dniPadre").value;

	if(grado=="0" || seccion=="0"){
		alert('Ingrese Grado y Seccion.');
		return false;
	}
	if(dniA==dniP){
		alert('ERROR : Los DNI no pueden ser iguales.');
		return false;
	}
}


//function validarDni(){
//	alert("ola");
//	var dniV = usuario.value;
//	if(dniV.macth("/d*{8}/")){
//		if(dniV!=""){
//			$.ajax({
//				type:"get",
//				url:"validar",
//				data: {
//					validar: "0"+usuario.value
//				}
//			}).done(function(respuesta){
//				avisoUsu.innerHTML=respuesta;
//			}
//		}
//	}
//}
//window.addEventListener('load',validar, false);