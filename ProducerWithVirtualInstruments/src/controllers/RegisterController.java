package controllers;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import servicesmodel.Save;
import servicesmodel.User;
  
public class RegisterController extends HttpServlet {
	private static final long serialVersionUID = 1L;
 
	public RegisterController() {
		super();
	}
 
	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
 
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		String edad		= request.getParameter("edad");
		String pais		= request.getParameter("pais");
		String sexo		= request.getParameter("sexo");
		String condicion= request.getParameter("condicion");
		String estilo	= request.getParameter("estilo");
		String musica	= request.getParameter("generomusical");
		RequestDispatcher rd = null;
 
		Save save=new Save();
		String result = save.Register(username, password,edad,pais,sexo,condicion,estilo,musica);
		if (result.equals("success")) {
			rd = request.getRequestDispatcher("/sucess.jsp");
			User user = new User(username, password,edad,pais,sexo,condicion,estilo,musica);
			request.setAttribute("user", user);
		} 
		else if (result.equals("existing")){
			rd = request.getRequestDispatcher("/noDisponible.jsp");			
		}
		else {
			rd = request.getRequestDispatcher("/error.jsp");
		}
		rd.forward(request, response);
	}
 
}