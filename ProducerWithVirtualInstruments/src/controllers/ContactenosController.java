package controllers;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import servicesmodel.SaveContactenos;

public class ContactenosController extends HttpServlet{

	protected void doPost(HttpServletRequest request,
		HttpServletResponse response) throws ServletException, IOException {
	
		String usuario = request.getParameter("usuario");
		String asunto = request.getParameter("asunto");
		
		RequestDispatcher rd = null;
		
		SaveContactenos save = new SaveContactenos();
		String result = save.Register(usuario,asunto);
		if (result.equals("success")) {
			rd = request.getRequestDispatcher("/sugExito.jsp");
		} 
		else {
			rd = request.getRequestDispatcher("/index.jsp");
		}
		
		rd.forward(request, response);
		
		
		
	} 

}
