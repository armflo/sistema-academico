package web;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.http.*;

@SuppressWarnings("serial")
public class Vista extends HttpServlet {
	public void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws IOException {
		resp.setContentType("text/plain");
	try{
		RequestDispatcher rd = null;
		//rd= getServletContext().getRequestDispatcher("asd.sjp");
		if((Integer.parseInt(req.getParameter("number")))==1){
			rd = getServletContext().getRequestDispatcher("/WEB-INF/vista1.jsp");
			rd.forward(req, resp);
		}else if(Integer.parseInt(req.getParameter("number"))==2){
			rd = getServletContext().getRequestDispatcher("/WEB-INF/vista2.jsp");
			rd.forward(req, resp);
		}else if(Integer.parseInt(req.getParameter("number"))==3){
			rd = getServletContext().getRequestDispatcher("/WEB-INF/vista3.jsp");
			rd.forward(req, resp);
		}else if(Integer.parseInt(req.getParameter("number"))==4){
			rd = getServletContext().getRequestDispatcher("/WEB-INF/vista4.jsp");
			rd.forward(req, resp);
		}else if(Integer.parseInt(req.getParameter("number"))==5){
			rd = getServletContext().getRequestDispatcher("/WEB-INF/accesoAlumno.jsp");
			rd.forward(req, resp);
		}else if(Integer.parseInt(req.getParameter("number"))==6){
			rd = getServletContext().getRequestDispatcher("/WEB-INF/vista6.jsp");
			rd.forward(req, resp);
		}else if(Integer.parseInt(req.getParameter("number"))==7){
			rd = getServletContext().getRequestDispatcher("/WEB-INF/vista7.jsp");
			rd.forward(req, resp);
		}else if(Integer.parseInt(req.getParameter("number"))==8){
			rd = getServletContext().getRequestDispatcher("/WEB-INF/vista8.jsp");
			rd.forward(req, resp);
		}else if(Integer.parseInt(req.getParameter("number"))==9){
			rd = getServletContext().getRequestDispatcher("/WEB-INF/getBitacora.jsp");
			rd.forward(req, resp);
		}else if(Integer.parseInt(req.getParameter("number"))==10){
			rd = getServletContext().getRequestDispatcher("/WEB-INF/vista10.jsp");
			rd.forward(req, resp);
		}else if(Integer.parseInt(req.getParameter("number"))==11){
			rd = getServletContext().getRequestDispatcher("/WEB-INF/vista11.jsp");
			rd.forward(req, resp);
		}
	}catch(Exception e){
		
	}
	}
}
