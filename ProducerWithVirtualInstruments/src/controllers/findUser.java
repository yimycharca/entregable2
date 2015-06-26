package controllers;

import java.io.IOException;
import java.util.List;

import javax.jdo.PersistenceManager;
import javax.jdo.Query;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import servicesmodel.PMF;
import servicesmodel.*;

public class findUser  extends HttpServlet {
	
	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		
		String user = request.getParameter("find");
		
		final PersistenceManager pm = PMF.get().getPersistenceManager();
		final Query q = pm.newQuery(User.class);
		
		q.setFilter("username == userParam");
		q.declareParameters("String userParam");
		
		try{
			
			List<User> usuarios = (List<User>) q.execute(user);
			request.setAttribute("usuarios", usuarios);
			RequestDispatcher rd = getServletContext().getRequestDispatcher("/getUsers.jsp");
			rd.forward(request, response);
		
		}catch(Exception e){
			System.out.println(e);
		}finally{
			q.closeAll();
			pm.close(); 
		}
		
		
		
	}

}
