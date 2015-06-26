function main(){
	usuario = document.getElementById("user");
	contraseña = document.getElementById("pass");
	logear = document.getElementById("formLoginAlumno");
	aviso = document.getElementById("verificar");
	logear.addEventListener("submit",validar,false);
}
function validar(evt){
	
	nom = usuario.value;
	cont = contraseña.value;
	if(nom!="" && cont!=""){
		$.ajax({
			type:"get",
			url:"loginAlumno",
			data: {
				user: usuario.value,
				pass: contraseña.value
			}
		}).done(function(respuesta){
			console.log("si");
			evt.preventDefault();
			if(respuesta=="2"){
				formato("Contraseña incorrecta",0);
				usuario.select();
			}else if(respuesta=="0"){
				formato("Usuario no existe",0);
				usuario.select();
			}else{
				formato("Error, vuelve a intentar mas tarde",0);
			}
		});
	}else{
		evt.preventDefault();
		if(nom==""){
			formato("Vacio, ingrese nombre de cuenta",0);
			usuario.select();
		}else if(cont==""){
			formato("Vacio, ingrese contraseña",0);
			contraseña.select();
		}
	}
}
function formato(contenido,variable){
	if(variable==0){
		aviso.innerHTML = "<span style='color:red'>"+contenido+"</span>";
	}
	if(variable==1){
		aviso.innerHTML = "<span style='color:green'>"+contenido+"</span>";
	}
}
window.addEventListener('load',main, false);
