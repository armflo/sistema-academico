package web;

import java.io.IOException;
import java.util.Date;

import javax.jdo.PersistenceManager;
import javax.servlet.http.*;

@SuppressWarnings("serial")
public class GuardarAlumno extends HttpServlet {
	public void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws IOException {
		String usuario = req.getParameter("usuario");
		String clave = req.getParameter("clave");
		String nombres = req.getParameter("nombres");
		String apellidos = req.getParameter("apellidos");
		String email = req.getParameter("email");
		String  grado = req.getParameter("grado");
		String  seccion = req.getParameter("seccion");
		String dni = req.getParameter("dni");
	
		Alumno p = new Alumno(usuario,clave,nombres,apellidos,email,grado,seccion,dni);
		
		PersistenceManager pm = PMF.get().getPersistenceManager();
		try{ 	
			pm.makePersistent(p);
			resp.getWriter().println("Datos grabados correctamente");
			
		}catch(Exception e){
			System.out.println(e);
			resp.getWriter().println("Ocurrió un error, <a href='PaginaPrincipal.jsp'>vuelva a intentarlo</a>");
		}finally{
			pm.close();
		}
	}
}
