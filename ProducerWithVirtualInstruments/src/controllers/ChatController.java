package controllers;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import servicesmodel.AuthenticatorLogin;
import servicesmodel.Mensaje;
import servicesmodel.User;
import sun.text.normalizer.ICUBinary.Authenticate;
 
public class ChatController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private Mensaje msg=new Mensaje();
	private User user;
	public ChatController() {
		super();
	}
 
	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
 
//		String username = request.getParameter("Usuario");
//		String mensaje = request.getParameter("mensaje");
//		user=new Users(username, "");
//		user.setUsername(username);
//		msg.setMensaje(mensaje);
//		msg.setUserName(username);
//		RequestDispatcher rd = request.getRequestDispatcher("/chat.jsp");
		//Authenticator authenticator = new Authenticator();
		//String result = authenticator.authenticate(username, password);
//		if (result.equals("success")) {
//			rd = request.getRequestDispatcher("/chat.jsp");
//			Users user = new Users(username, password);
//			request.setAttribute("user", user);
//		} else {
//			rd = request.getRequestDispatcher("/error.jsp");
//		}		
//		request.setAttribute("msg", msg);
//		request.setAttribute("user", user);
//		rd.forward(request, response);
	}
 
}