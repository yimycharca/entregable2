package servicesmodel;

import javax.jdo.annotations.IdGeneratorStrategy;
import javax.jdo.annotations.PersistenceCapable;
import javax.jdo.annotations.Persistent;
import javax.jdo.annotations.PrimaryKey;

import com.google.appengine.api.datastore.Key;


@PersistenceCapable
public class Sugerencia {
	
	@PrimaryKey
	@Persistent(valueStrategy = IdGeneratorStrategy.IDENTITY)
	private Key key;
	
	@Persistent
	private String emisor;
	
	@Persistent
	private String sugerencia;
	
	public Sugerencia(String emisor,String sugerencia){
		this.emisor = emisor;
		this.sugerencia = sugerencia;
	}

	public String getEmisor() {
		return emisor;
	}

	public void setEmisor(String emisor) {
		this.emisor = emisor;
	}

	public String getSugerencia() {
		return sugerencia;
	}

	public void setSugerencia(String sugerencia) {
		this.sugerencia = sugerencia;
	}

	public Key getKey() {
		return key;
	}

	public void setKey(Key key) {
		this.key = key;
	}
	
	
}
