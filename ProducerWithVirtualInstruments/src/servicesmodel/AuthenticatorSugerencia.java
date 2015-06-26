package servicesmodel;

import java.util.List;

import javax.jdo.PersistenceManager;
import javax.jdo.Query;

public class AuthenticatorSugerencia {

public String authenticate(String email,String sugerencia) {
		
		String status="";
		
		PersistenceManager pm = PMF.get().getPersistenceManager();
		if(email!=""&&email!=null&&sugerencia!=null&&sugerencia!=""){
			status= "success";
		}
		
		return status;
	}
}
