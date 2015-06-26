<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="t" uri="http://java.sun.com/jsp/jstl/core" %>
<%-- En caso de que exista una sesion iniciada redirecciono a index.jsp. "NO tiene caso mostrar este formulario cuando hay una sesion iniciada --%>
<t:if test="${sessionScope.usuario==null}">
    <% response.sendRedirect("login.jsp");%>
</t:if>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Sesión iniciada</title>
<script type="text/javascript" src="/jquery/jquery-1.11.3.min.js"></script>			
<style>
	h1 {
		color:white;
	}
	
	#menuLateral {
		
	}
	
	html {
		background-color:black;
	}
	
	header {
		background-color:green;	
	}
	
	aside {
		background-color:blue;
	}
	
	article {
		background-color:yellow;
	}
</style>		
</head>
<body class='cuerpo'>
<header>
		<center><h1>${sessionScope.usuario}</h1></center>
		<center><input type='text'></center>
</header>
<aside>
	<div id='menuLateral'>
		<ul>
			<li><a href='/getGenerico'><button>Inicio</button></a></li>
			<li><a href='/producciones.jsp'><button id='boton'>Producciones</button></a></li>
			<li><a href='/colaboraciones.jsp'><button id='boton'>Colaboraciones</button></a></li>
			<li><a href='/instrumentos.jsp'><button id='boton'>Instrumentos</button></a></li>
			<li><a ><button id='boton'>Salir</a></li>
		</ul>	
	</div>
</aside>		
<article>
</article>
</body>
</html>