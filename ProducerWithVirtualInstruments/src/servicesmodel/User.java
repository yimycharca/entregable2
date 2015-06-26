package servicesmodel;

import java.util.ArrayList;

import javax.jdo.annotations.IdGeneratorStrategy;
import javax.jdo.annotations.PersistenceCapable;
import javax.jdo.annotations.Persistent;
import javax.jdo.annotations.PrimaryKey;

import com.google.appengine.api.datastore.Key;

@PersistenceCapable

public class User {
	
	@PrimaryKey
	@Persistent(valueStrategy = IdGeneratorStrategy.IDENTITY)
	private Key key;
	
	@Persistent 
	private String username;
	
	@Persistent
	private String password;
	
	@Persistent
	private String edad;
	
	@Persistent
	private ArrayList<User> amigos;
	
	@Persistent
	private ArrayList<Produccion> producciones;
	
	@Persistent
	private ArrayList<Colaboracion> colaboraciones;
	
	public ArrayList<Colaboracion> getColaboracion(){
		return colaboraciones;
	}
	
	public void addColaboracion(Colaboracion col){
		colaboraciones.add(col);
	}
	
	public void removeColaboracion(Colaboracion col){
		colaboraciones.remove(col);
	}
	
	public ArrayList<Produccion> getProducciones(){
		return producciones;
	}
	
	public void addProduccion(Produccion pr){
		producciones.add(pr);
	}
	
	public void removeProduccion(Produccion pr){
		producciones.remove(pr);
	}
	
	public ArrayList<User> getAmigos(){
		return amigos;
	}
	
	public void addAmigo(User us){
		amigos.add(us);
	}
	
	public void removeAmigo(User us){
		amigos.remove(us);
	}
	
	public String getPais() {
		return pais;
	}

	public void setPais(String pais) {
		this.pais = pais;
	}

	@Persistent
	private String pais;
	
	@Persistent
	private String sexo;
	
	@Persistent
	private String condicion;
	
	@Persistent
	private String musica;
	
	public String getMusica() {
		return musica;
	}

	public void setMusica(String musica) {
		this.musica = musica;
	}

	@Persistent
	private String estilo;
 
	public String getEstilo() {
		return estilo;
	}

	public void setEstilo(String estilo) {
		this.estilo = estilo;
	}

	public String getEdad() {
		return edad;
	}

	public void setEdad(String edad) {
		this.edad = edad;
	}

	public String getSexo() {
		return sexo;
	}

	public void setSexo(String sexo) {
		this.sexo = sexo;
	}

	public String getCondicion() {
		return condicion;
	}

	public void setCondicion(String generomusical) {
		this.condicion = generomusical;
	}

	public User(String username, String password, String edad,String pais,String sexo,String condicion,String estilo,String musica){
		setUsername(username);
		setPassword(password);
		setEdad(edad);
		setPais(pais);
		setSexo(sexo);
		setCondicion(condicion);
		setEstilo(estilo);
		setMusica(musica);
		amigos = new ArrayList<User>();
		producciones = new ArrayList<Produccion>();
		colaboraciones = new ArrayList<Colaboracion>();
	}
 
	public String getUsername() {
		return username;
	}
 
	public void setUsername(String username) {
		this.username = username;
	}
 
	public String getPassword() {
		return password;
	}
 
	public void setPassword(String password) {
		this.password = password;
	}
	
	public Key getKey() {
		return key;
	}
 
}