package web;

import java.io.IOException;
import java.util.List;

import javax.jdo.Query;
import javax.jdo.PersistenceManager;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.*;

@SuppressWarnings("serial")

public class ConsultaPadre extends HttpServlet {

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		PersistenceManager pm = PMF.get().getPersistenceManager();
		HttpSession sesion = request.getSession();
		String padre= request.getParameter("dni");
		Query q = pm.newQuery(Alumno.class);
		q.setFilter("dniPadre == dniParam");
		q.declareParameters("String dniParam");
		@SuppressWarnings("unchecked")
		List<Alumno> dnis = (List<Alumno>) q.execute(padre);
        RequestDispatcher rd = null;
        if(dnis.size()!=0 && sesion.getAttribute("padre") == null){
        	sesion.setAttribute("padre", padre);
        	request.setAttribute("dnis", dnis);
        	rd=getServletContext().getRequestDispatcher("/WEB-INF/mostrarBitacoraAlumnos.jsp");
        	rd.forward(request, response);
		}else{
			System.out.println("1");
			response.sendRedirect("/PaginaPrincipal.jsp");
		}
	}

	//método encargado de la gestión del método GET
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String out=request.getParameter("salir");
		HttpSession sesion = request.getSession();
		if(out.equals("salir")){
			sesion.invalidate();
			response.sendRedirect("/PaginaPrincipal.jsp");
		}
		else{
			response.sendRedirect("/jj.jsp");
		}
	}
}

	        
	        
	        
	        
	        
	        
	        
	        
	        
	        
	        

