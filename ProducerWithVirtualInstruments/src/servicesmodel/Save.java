package servicesmodel;

import java.io.PrintWriter;
import java.util.List;

import javax.jdo.PersistenceManager;
import javax.jdo.Query;

import servicesmodel.User;


public class Save  {
public String Register(String username, String password,String edad,String pais,String sexo,String condicion,String estilo,String musica) {
		
		String status="";
		
		PersistenceManager pm = PMF.get().getPersistenceManager();
		Query q = pm.newQuery(User.class);
		q.setFilter("username==usernameParam && password==passwordParam");	
		q.declareParameters("String usernameParam,String passwordParam");
		
		//String [] param ={username,password,edad,pais,sexo,condicion,estilo,musica};
		
		Query p = pm.newQuery(User.class);
		p.setFilter("username==usernameParam");	
		p.declareParameters("String usernameParam");
		
		if(username!=""&&password!=null&&username!=null&&password!=""){
			try{
				@SuppressWarnings("unchecked")
				List<User> personas = (List<User>) p.execute(username);
				if(personas.size()!=0){
					status="existing";
				
				}
				else{
				User newUser= new User(username, password,edad,pais,sexo,condicion,estilo,musica);
					pm.makePersistent(newUser);
					status="success";		
				}
				
			}catch(Exception e){
				System.out.println(e);
			}
			finally{
				pm.close();
				q.closeAll();
				p.closeAll();
			}
		}
		
		return status;
		
	}
}
