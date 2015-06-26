function validarDoc(){
	elemento1 = document.getElementById("curso1");
	elemento2 = document.getElementById("curso2");
	elemento3 = document.getElementById("curso3");
	elemento4 = document.getElementById("curso4");
	elemento5 = document.getElementById("curso5");
	elemento6 = document.getElementById("curso6");
	elemento7 = document.getElementById("curso7");
	if(!elemento1.checked && !elemento2.checked && !elemento3.checked &&!elemento4.checked &&!elemento5.checked &&!elemento6.checked &&!elemento7.checked) {
	  alert('Ingrese cursos del Docente.');
	  return false;
	}else{
		alert('Datos grabados correctamente.');
		  return true;
	}
	}
