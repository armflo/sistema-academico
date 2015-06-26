package web;
import java.util.Date;

import javax.jdo.annotations.PersistenceCapable;
import javax.jdo.annotations.Persistent;
import javax.jdo.annotations.PrimaryKey;

@PersistenceCapable
public class Usuario {
	@PrimaryKey
	@Persistent
	private String nombreCuenta;
	
	@Persistent
	private String gmail;
	
	@Persistent
	private String contrase�a;
	
	@Persistent
	private Date fecha;
	
	public Usuario(String nomCuent, String gmail, String contrase�a,Date fecha){
		super();
		this.nombreCuenta= nomCuent;
		this.gmail= gmail;
		this.contrase�a = contrase�a;
		this.fecha = fecha;
	}
	public String getNombreCuenta(){
		return nombreCuenta;
	}
	public String getGmail(){
		return gmail;
	}
	public String getContrase�a(){
		return contrase�a;
	}
	public Date getFecha(){
		return fecha;
	}
	public String toString(){
		return nombreCuenta+", "+gmail+", "+contrase�a;
	}
	
}
