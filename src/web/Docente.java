package web;


import javax.jdo.annotations.PersistenceCapable;
import javax.jdo.annotations.Persistent;
import javax.jdo.annotations.PrimaryKey;


@PersistenceCapable
public class Docente {
	@PrimaryKey
	private String dni;
	@Persistent
	private String clave;
	@Persistent
	private String nombres;
	@Persistent
	private String apellidos;
	@Persistent
	private String email;
	@Persistent
	private String curso;
	public Docente(String dni, String clave, String nombres, String apellidos,
			String email, String curso) {
		super();
		this.dni = dni;
		this.clave = clave;
		this.nombres = nombres;
		this.apellidos = apellidos;
		this.email = email;
		this.curso = curso;
	}
	public String getDni() {
		return dni;
	}
	public void setDni(String dni) {
		this.dni = dni;
	}
	public String getClave() {
		return clave;
	}
	public void setClave(String clave) {
		this.clave = clave;
	}
	public String getNombres() {
		return nombres;
	}
	public void setNombres(String nombres) {
		this.nombres = nombres;
	}
	public String getApellidos() {
		return apellidos;
	}
	public void setApellidos(String apellidos) {
		this.apellidos = apellidos;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getCurso() {
		return curso;
	}
	public void setCurso(String curso) {
		this.curso = curso;
	}
	@Override
	public String toString() {
		return "Docente [dni=" + dni + ", clave=" + clave + ", nombres="
				+ nombres + ", apellidos=" + apellidos + ", email=" + email
				+ ", curso=" + curso + "]";
	}
	

	
	
	
	

	

	
}
