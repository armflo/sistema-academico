package web;

import java.io.IOException;
import java.util.List;

import javax.jdo.PersistenceManager;
import javax.jdo.Query;
import javax.jdo.annotations.Persistent;
import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@SuppressWarnings("serial")
public class Prueba extends HttpServlet{

	public void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws IOException {
		String contenido= req.getParameter("des");
		String curso= req.getParameter("curso");
		String hora= req.getParameter("horario");;
		PersistenceManager pm = PMF.get().getPersistenceManager();
		Bitacora b = new Bitacora(contenido,curso,hora);
		final Query q = pm.newQuery(Bitacora.class);
		try{
			pm.makePersistent(b);
			@SuppressWarnings("unchecked")
			List <Bitacora>  bitacoras = (List<Bitacora>)q.execute();
			List<List<Bitacora>> bit=(List<List<Bitacora>>) q.execute();
			req.setAttribute("bitacoras", bitacoras);
			RequestDispatcher rd = getServletContext().getRequestDispatcher("/WEB-INF/getBitacora.jsp");
			rd.forward(req, resp);
		}catch(Exception e){
			System.out.println(e);
		}finally{
			q.closeAll();
			pm.close();
		}
		
	}
	public void insertDNI(List<List<Bitacora>> b,List<Bitacora> bt){
		b.add(bt);
		
		
	}
}
