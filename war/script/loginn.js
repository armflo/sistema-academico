function main(){
	dni = document.getElementById("dni").value;
	dnis = document.getElementById("sdni");
	login = document.getElementById("login");
	login.addEventListener("submit",validar,false);
}
function validar(evt){
	evt.preventDefault();
	console.log("jjjj");
	$.ajax({
		type:"get",
		url:"login",
		data: {
			nombre:dni
		}
	}).done(function(respuesta){
		dnis.innerHTML =respuesta+"jquery";
	});
}
