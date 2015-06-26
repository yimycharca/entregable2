<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="servicesmodel.*"%>
<%@ page import="java.util.List"%>
<% List<User> usuarios = (List<User>)request.getAttribute("usuarios");%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">
<html lang="es">
<head>
<title>Buscar</title>
<style>

	html {
		
	}
	#container {
	
	}
	
	#resul {
		background-color:gray;
		padding:10px;
		background-color:#00E6B8;
	}
	#title {
		background-color:#30ACD6;
		padding:10px;
	}
	
</style>
</head>
<body>

<div  id='container'>
	<div id='title'><p><%= usuarios.size() %> Resultados</p></div>
<%for( User u : usuarios ) {%>
	<div>
		<div id='resul'>   <p> * <%= u.getUsername() %></p></div>
	</div>
<%}%>
</div>
</body>
</html>	