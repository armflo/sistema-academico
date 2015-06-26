package web;


import java.io.IOException;
import java.util.List;

import javax.jdo.PersistenceManager;
import javax.jdo.Query;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
@SuppressWarnings("serial")
public class ValidarA extends HttpServlet {
	public void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws IOException {
		String dni = req.getParameter("usuario");
		PersistenceManager pm= PMF.get().getPersistenceManager();
		try{
			Query q = pm.newQuery(Docente.class);
			q.setFilter("usuario == dniParam");
			q.declareParameters("String dniParam");
			@SuppressWarnings("unchecked")
			List<Usuario> personas = (List<Usuario>)q.execute(dni);
			if(personas.size()==0){
				resp.getWriter().print("true");
			}else{
				resp.getWriter().print("false");
			}
		}catch(Exception e){
			resp.getWriter().print("2");
		}finally{
			pm.close();
		}
		
		
	}
	

}
