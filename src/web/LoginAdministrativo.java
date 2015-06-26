package web;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@SuppressWarnings("serial")
public class LoginAdministrativo extends HttpServlet {
		public void doPost(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
			HttpSession session= req.getSession(true);
			String usuario= req.getParameter("user");
	        String clave = req.getParameter("pass");
	        //String cont =req.getParameter("nuevo");
	        session.setAttribute("usuario", usuario);
	        session.setAttribute("clave",clave);
	       
	        
	        RequestDispatcher rd = null;
	        if(usuario.equals("admin")&& clave.equals("admin")){
	        	rd=getServletContext().getRequestDispatcher("/WEB-INF/Operaciones.jsp");
	        	rd.forward(req, resp);
	        }
	        
	       
	        	
		}
}
