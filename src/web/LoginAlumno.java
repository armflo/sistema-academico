package web;
import java.io.IOException;
import java.util.List;

import javax.jdo.PersistenceManager;
import javax.jdo.Query;
import javax.servlet.http.*;

import org.apache.tools.ant.types.CommandlineJava.SysProperties;

@SuppressWarnings("serial")
public class LoginAlumno extends HttpServlet {
	public void doGet(HttpServletRequest req, HttpServletResponse resp) throws IOException {
		HttpSession sesion = req.getSession();
		String usuario= req.getParameter("user");
		String clave = req.getParameter("pass");
		String respuesta ="";
		if(!usuario.equals("") && sesion.getAttribute("usuario")==null){
			PersistenceManager pm= PMF.get().getPersistenceManager();
			try{
				System.out.println("bien try");
				Query q = pm.newQuery(Alumno.class);
				q.setFilter("usuario == userParam");
				q.declareParameters("String userParam");
				List<Alumno> personas = (List<Alumno>)q.execute(usuario);
				System.out.println(personas.size());
				if(personas.size()==1 && personas.get(0).getClave().equals(clave)){
					resp.getWriter().print("true");
				}else{
					resp.getWriter().print("false");
				}
			}catch(Exception e){
				System.out.println("ERROR :O");
			}finally{
				pm.close();
			}
		}
	}
}
