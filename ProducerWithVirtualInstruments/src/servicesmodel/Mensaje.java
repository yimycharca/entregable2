package servicesmodel;

import javax.jdo.annotations.IdGeneratorStrategy;
import javax.jdo.annotations.PersistenceCapable;
import javax.jdo.annotations.Persistent;
import javax.jdo.annotations.PrimaryKey;

import com.google.appengine.api.datastore.Key;

@PersistenceCapable

public class Mensaje {
	
	@PrimaryKey
	@Persistent(valueStrategy = IdGeneratorStrategy.IDENTITY)
	private Key key;
	
	@Persistent 
	private String mensaje="";
	
	@Persistent
	private String username;
 
	public Mensaje(String mensaje, String username){
		setMensaje(mensaje);
		setUserName(username);
	}
	public Mensaje(){
	}
	public String getMensaje() {
		return mensaje;
	}
 
	public void setMensaje(String mensaje) {	
		if(mensaje!=null){
			mensaje=getUserName()+"__dijo: "+mensaje;
			this.mensaje = "\t"+this.mensaje +"\n\t"+mensaje;
		}
	}
 
	public String getUserName() {
		return username;
	}
 
	public void setUserName(String username) {
		this.username = username;
	}
	
	public Key getKey() {
		return key;
	}
 
}