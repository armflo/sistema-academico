package web;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.jdo.PersistenceManager;
import javax.jdo.Query;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@SuppressWarnings("serial")
public class ObtenerAlumno extends HttpServlet{
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		PersistenceManager pm = PMF.get().getPersistenceManager();
		PrintWriter out = resp.getWriter();
		
		resp.setContentType("text/html");
		
		Query q = pm.newQuery(Alumno.class);
//		q.setFilter("grado == paramGrad");
//		q.declareParameters("String paramGrad");
		 
		try{
		//	List<Alumno> alumnos = (List<Persona>) q.execute("Amarillo");
			List<Alumno> alumnos = (List<Alumno>) q.execute();
			out.println("<ul>");
			for (Alumno p : alumnos) {
				out.println("<li>");
				out.println(p);
			}
			out.println("<ul>");
		}catch(Exception e){
			
		}finally{
			 q.closeAll();
		}
		
	}
}
