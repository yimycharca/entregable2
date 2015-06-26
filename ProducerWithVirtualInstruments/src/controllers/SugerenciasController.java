package controllers;

import java.io.IOException;

import javax.jdo.PersistenceManager;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import servicesmodel.AuthenticatorLogin;
import servicesmodel.Mensaje;
import servicesmodel.Save;
import servicesmodel.User;
import sun.text.normalizer.ICUBinary.Authenticate;
import servicesmodel.*;

public class SugerenciasController extends HttpServlet {
 
	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		
		String emisor = request.getParameter("emisor");
		String suge = request.getParameter("sugerencias");
		
		RequestDispatcher rd = null;
		
		SaveSugerencia save=new SaveSugerencia();
		String result = save.Register(emisor,suge);
		if (result.equals("success")) {
			rd = request.getRequestDispatcher("/sugExito.jsp");
		} 
		else {
			rd = request.getRequestDispatcher("404");
		}
		rd.forward(request, response);
		
	} 
}