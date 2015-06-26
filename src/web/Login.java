package web;

import java.io.IOException;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@SuppressWarnings("serial")
public class Login extends HttpServlet{

	public void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws IOException {
		String nombre = req.getParameter("nombre");
		if(nombre.equals("0")){
		resp.getWriter().print("el dni es cero");
		}else{
			resp.getWriter().print("el dni no es cero");
		}
	}
	
	
	
	
}
