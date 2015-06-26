package web;

import java.io.IOException;

import javax.jdo.PersistenceManager;
import javax.servlet.RequestDispatcher;
import javax.servlet.http.*;

@SuppressWarnings("serial")
public class GuardarDocente extends HttpServlet {
	public void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws IOException {
		String dni = req.getParameter("dni");
		String clave = req.getParameter("clave");
		String nombres = req.getParameter("nombre");
		String apellidos = req.getParameter("apellidos");
		String email = req.getParameter("email");
		String []curso = req.getParameterValues("curso");
		
		String cursos="";
		for (int i = 0; i < curso.length; i++) {
			cursos+=curso[i]+" ";
		}
		Docente p = new Docente(dni,clave,nombres,apellidos,email,cursos);
		RequestDispatcher rd = null;
		PersistenceManager pm = PMF.get().getPersistenceManager();
		try{ 	
			pm.makePersistent(p);
			rd=getServletContext().getRequestDispatcher("/WEB-INF/Operaciones.jsp");
        	rd.forward(req, resp);
			resp.getWriter().println("Datos grabados correctamente"+cursos);
		}catch(Exception e){
			System.out.println(e);
			resp.getWriter().println("Ocurrió un error, <a href='PaginaPrincipal.jsp'>vuelva a intentarlo</a>");
		}finally{
			pm.close();
		}
	}
}
