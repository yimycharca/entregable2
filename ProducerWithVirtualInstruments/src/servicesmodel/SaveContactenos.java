package servicesmodel;

import javax.jdo.PersistenceManager;

public class SaveContactenos {
	
	public String Register(String usuario,String asunto) {
		
		String status = "";
		
		PersistenceManager pm = PMF.get().getPersistenceManager();
		
		if(usuario!=""&&usuario!=null&&asunto!=null&&asunto!=""){
			
				Contactenos newAsu = new Contactenos(usuario,asunto);
				pm.makePersistent(newAsu);
				status="success";		
				
				pm.close();
		}
		
		return status;
		
	}

}
