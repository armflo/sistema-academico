package web;

import javax.jdo.annotations.PersistenceCapable;
import javax.jdo.annotations.Persistent;
import javax.jdo.annotations.PrimaryKey;

@PersistenceCapable
public class Bitacora {


	@Persistent
	private String contenido;
	@Persistent
	private String curso;
	@Persistent
	private String hora;
	public Bitacora(String contenido, String curso, String hora) {
		super();
		this.contenido = contenido;
		this.curso = curso;
		this.hora = hora;
	}
	
	
	public String getContenido() {
		return contenido;
	}


	public void setContenido(String contenido) {
		this.contenido = contenido;
	}


	public String getCurso() {
		return curso;
	}


	public void setCurso(String curso) {
		this.curso = curso;
	}


	public String getHora() {
		return hora;
	}


	public void setHora(String hora) {
		this.hora = hora;
	}


	@Override
	public String toString() {
		return "Bitacora [contenido=" + contenido + ", curso=" + curso
				+ ", hora=" + hora + "]";
	}
	
}
