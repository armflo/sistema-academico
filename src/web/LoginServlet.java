package web;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.*;

@SuppressWarnings("serial")

public class LoginServlet extends HttpServlet {

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		HttpSession sesion = request.getSession();
		String usu, pass;
		usu = request.getParameter("user");
		pass = request.getParameter("pass");

		if(usu.equals("admin") && pass.equals("admin") && sesion.getAttribute("usuario") == null){

			sesion.setAttribute("usuario", usu);

			response.sendRedirect("Operaciones.jsp");
		}else{

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
