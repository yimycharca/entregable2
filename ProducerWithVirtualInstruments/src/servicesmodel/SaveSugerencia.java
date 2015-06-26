package servicesmodel;

import java.util.List;

import javax.jdo.PersistenceManager;
import javax.jdo.Query;

public class SaveSugerencia {

	public String Register(String email,String sugerencia) {
		
		String status="";
		
		PersistenceManager pm = PMF.get().getPersistenceManager();
		
		if(email!=""&&email!=null&&sugerencia!=null&&sugerencia!=""){
			
				Sugerencia newSug= new Sugerencia(email,sugerencia);
				pm.makePersistent(newSug);
				status="success";		
				
				pm.close();
			
		}
		
		return status;
		
	}
}
