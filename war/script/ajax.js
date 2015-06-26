var http;
function call(url, cfunc){
	if (window.XMLHttpRequest){
		http = new XMLHttpRequest();
	}else{
		http = new ActiveXObject("Microsoft.XMLHTTP");
	}
	http.onreadystatechange = cfunc;
	http.open("GET",url,true);
	http.send();
}
function actionR(){
	if (http.readyState == 4 && http.status == 200){
		document.getElementById("hola1").innerHTML = http.responseText;
	}
}
function actionO(){
	if (http.readyState == 4 && http.status == 200){
		document.getElementById("op").innerHTML = http.responseText;
	}
}
function actionC(){
	if (http.readyState == 4 && http.status == 200){
		document.getElementById("opb").innerHTML = http.responseText;
	}
}
function execute(){
//	var n1 = encodeURIComponent(document.getElementById("str").value);
	var url = "/p1.html";
	call(url,actionR);
}
function execute2(){
//	var n1 = encodeURIComponent(document.getElementById("str").value);
	var url = "/p2.html";
	call(url,actionR);
}
function OpAlumno(){
//	var n1 = encodeURIComponent(document.getElementById("str").value);
	var url = "/operacionesPrimasAl.jsp";
	call(url,actionO);
}
function OpAdministrativo(){
//	var n1 = encodeURIComponent(document.getElementById("str").value);
	var url = "/OperacionesAdmin.jsp";
	call(url,actionO);
}
function OpAlumnoPrima(){
//	var n1 = encodeURIComponent(document.getElementById("str").value);
	var url = "/operacionesAlumnos.jsp";
	call(url,actionO);
}
