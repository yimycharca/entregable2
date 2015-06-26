package servicesmodel;

import java.util.List;

import javax.jdo.PersistenceManager;
import javax.jdo.Query;

public class AuthenticatorLogin {
	 
	public String authenticate(String username, String password) {
		
		String status="";
		
		PersistenceManager pm = PMF.get().getPersistenceManager();
		Query q = pm.newQuery(User.class);
		q.setFilter("username==usernameParam && password==passwordParam");	
		q.declareParameters("String usernameParam,String passwordParam");
		if(username!=""&&password!=null&&username!=null&&password!=""){
			try{
				List <User> usuario=(List<User>)q.execute(username,password);
				if(usuario.size()!=0){
					status= "success";
				}								
				
			}catch(Exception e){
				return status;
			}
			finally{
				q.closeAll();
			}
		}
		return status;
	}
}
