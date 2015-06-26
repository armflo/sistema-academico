package web;
import java.io.IOException;
import java.util.List;
import javax.jdo.PersistenceManager;
import javax.jdo.Query;
import javax.servlet.http.*;

@SuppressWarnings("serial")
public class Loginaaa extends HttpServlet {
	public void doPost(HttpServletRequest req, HttpServletResponse resp) throws IOException {
		HttpSession sesion = req.getSession();
		String usu, cont;
        usu = req.getParameter("nombreCuenta");
        String h = usu==null?"":"";
        cont = req.getParameter("contraseña");
        String v ="";
        if(!usu.equals("")){
        	PersistenceManager pm= PMF.get().getPersistenceManager();
    		try{
    			Query q = pm.newQuery(Usuario.class);
    			q.setFilter("nombreCuenta == nombreCuentaParam");
    			q.declareParameters("String nombreCuentaParam");
    			List<Usuario> personas = (List<Usuario>)q.execute(usu);
    			if(personas.size()==1){
    				if(personas.get(0).getContraseña().equals(cont)){
    					v="1";
    				}else{
    					v="2";
    				}
    			}else{
    				v="0";
    			}
    		}catch(Exception e){
    			v="3";
    		}finally{
    			pm.close();
    		}
        	if(v.equals("1")){
        		if(sesion.getAttribute("usuario") == null){
	        		sesion.setAttribute("usuario", usu);
        		}
        		resp.sendRedirect("juego.jsp");
        	}else{
        		resp.sendRedirect("/index.html");
        	}
        }else{
        	resp.getWriter().print("/index.html");
        }
	}
}
