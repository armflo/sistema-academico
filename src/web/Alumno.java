package web;


import javax.jdo.annotations.PersistenceCapable;
import javax.jdo.annotations.Persistent;
import javax.jdo.annotations.PrimaryKey;


@PersistenceCapable
public class Alumno {
	@PrimaryKey
	private String usuario;
	@Persistent
	private String clave;
	@Persistent
	private String nombre;
	@Persistent
	private String apellidos;
	@Persistent
	private String email;
	@Persistent
	private String grado;
	@Persistent
	private String seccion;
	@Persistent
	private String dniPadre;
	
	
	public Alumno(String usuario, String clave,String nombre,
			String apellidos, String email, String grado, String seccion,String dni) {
		super();
		this.usuario = usuario;
		this.nombre = nombre;
		this.clave = clave;
		this.apellidos = apellidos;
		this.email = email;
		this.grado = grado;
		this.seccion = seccion;
		this.dniPadre = dni;
	}


	public String getUsuario() {
		return usuario;
	}


	public void setUsuario(String usuario) {
		this.usuario = usuario;
	}


	public String getClave() {
		return clave;
	}


	public void setClave(String clave) {
		this.clave = clave;
	}


	public String getNombre() {
		return nombre;
	}


	public void setNombre(String nombre) {
		this.nombre = nombre;
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


	public String getGrado() {
		return grado;
	}


	public void setGrado(String grado) {
		this.grado = grado;
	}


	public String getSeccion() {
		return seccion;
	}


	public void setSeccion(String seccion) {
		this.seccion = seccion;
	}


	public String getDniPadre() {
		return dniPadre;
	}


	public void setDniPadre(String dniPadre) {
		this.dniPadre = dniPadre;
	}


	@Override
	public String toString() {
		return "Alumno [usuario=" + usuario + ", clave=" + clave + ", nombre="
				+ nombre + ", apellidos=" + apellidos + ", email=" + email
				+ ", grado=" + grado + ", seccion=" + seccion + ", dniPadre="
				+ dniPadre + "]";
	}


	

	

	
}
