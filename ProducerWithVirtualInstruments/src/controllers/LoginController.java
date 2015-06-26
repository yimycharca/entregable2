package controllers;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import servicesmodel.AuthenticatorLogin;
import servicesmodel.User;
import sun.text.normalizer.ICUBinary.Authenticate;
 
public class LoginController extends HttpServlet {
	private static final long serialVersionUID = 1L;
 
	public LoginController() {
		super();
	}
 
	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
 
		HttpSession session=request.getSession();
		String username,password;
		username=request.getParameter("user");
		password=request.getParameter("password");
		AuthenticatorLogin authenticator = new AuthenticatorLogin();
		String result =authenticator.authenticate(username, password);	
		if(result.equals("success")){			
			session.setAttribute("usuario", username);
			response.sendRedirect("/profile.jsp");
		}else{
			response.sendRedirect("/login.jsp"); 
		}	
	}
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String out=request.getParameter("salir");
        HttpSession sesion = request.getSession();
        if(out.equals("salir")){
        	sesion.invalidate();
        	response.sendRedirect("/login.jsp");
        }
        
    }
}