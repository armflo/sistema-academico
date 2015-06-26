function main(){
	nombre = document.getElementById("nombreCuenta");
	contraseña = document.getElementById("contraseña");
	logear = document.getElementById("formLogin");
	aviso = document.getElementById("vLogin");

	logear.addEventListener("submit",validar,false);
}
function validar(evt){
	
	nom = nombre.value;
	cont = contraseña.value;
	if(nom!=""&&cont!=""){
		$.ajax({
			type:"post",
			url:"login",
			data: {
				nombreCuenta: nombre.value,
				contraseña: contraseña.value
			}
		}).done(function(respuesta){
			console.log("si");
			evt.preventDefault();
			if(respuesta=="2"){
				formato("Contraseña incorrecta",0);
				nombre.select();
			}else if(respuesta=="0"){
				formato("Nombre de cuenta incorrecta",0);
				nombre.select();
			}else{
				formato("Error, vuelve a intentar mas tarde",0);
			}
		});
	}else{
		evt.preventDefault();
		if(nom==""){
			formato("Vacio, ingrese nombre de cuenta",0);
			nombre.select();
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
