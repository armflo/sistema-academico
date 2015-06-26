package web;

import java.io.IOException;
import java.util.List;

import javax.jdo.PersistenceManager;
import javax.jdo.Query;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
@SuppressWarnings("serial")
public class Buscar extends HttpServlet{
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		final PersistenceManager pm = PMF.get().getPersistenceManager();
		final Query q = pm.newQuery(Alumno.class);
		String pedido= req.getParameter("envio");
		//resp.setContentType("text/plain");
		
		if(pedido.equals("Llenar Bitacora")){
			
			try{
				System.out.println("BIEN");
			String dni=req.getParameter("dni");
			q.setFilter("usuario == dniParam");
			q.declareParameters("String dniParam");
			@SuppressWarnings("unchecked")
			List<Alumno> dniE = (List<Alumno>) q.execute(dni);
			req.setAttribute("usuario", dniE);
			RequestDispatcher rd = getServletContext().getRequestDispatcher("/WEB-INF/vista1.jsp");
			rd.forward(req, resp);
			System.out.println("bn");
			}
			catch(Exception e){
				System.out.println("ERRORRRRRR");
			}
			
		}
		else{
			System.out.println("MAL DE ARRANQUE");
		}

		
	}
}