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

<script>
function hello(){
	window.alert('hello');
}

function getData(){
	
	var XMLHttp;
	if (window.XMLHttpRequest) {
	  XMLHttp = new XMLHttpRequest();
	} else {
	  XMLHttp = new ActiveXObject("Microsoft.XMLHTTP");
	}

	
	    var section = document.getElementById('postspace');
	   
	    XMLHttp.onreadystatechange = function (){ //función anónima
	    	 
	          if (XMLHttp.readyState == 4 && XMLHttp.status == 200) {
	        	  window.alert('hello'); 
	            section.innerHTML = XMLHttp.responseText;
	          }
	        }
	    
	    XMLHttp.open("GET","localhost:8888/getDatos");
	    XMLHttp.send();
	   
	}


</script>
<style>
	
	#menuLateral {
		
	}
	
	html {
		
	}
	
	header {
		width:100%;
		height:5%;
		background-color:green;
		text-align:center;	
	}
	
	#nombre {
		color:white;
	}

	nav {
		
		height:700px;
		width:15%;
		float:left;
	}	
	
	section {
		background-color:white;
		float:left;
		width:70%;
		height:700px;	
	}
	
	aside {
		background-color:yellow;
		float:left;
		width:15%;
		height:700px;
	}
	
	#buscador {
		width:40%;
		height:15px;
		border-radius: 8px;
		padding:8px;
		border-width:5px;
		border-color:#33CCFF;	
	}
	
	#buscadoraction {
		background-color:white;
		border-radius: 8px;
		padding:10px;
	}
	
	
	
	.container {
    position: relative;
    height: 100%;
    width: 100%;
}
 
#sidebar {
    position: absolute;
    background: #2290c9;
    width: 100%;
    height: 100%;
    box-sizing: border-box;
   -moz-box-sizing: border-box;
}
#sidebar ul {
    margin: 0;
    padding: 0;
    list-style: none;
}
#sidebar ul li {
    margin: 0;
}
#sidebar ul li a {
    padding: 15px 20px;
    font-size: 16px;
    font-weight: 100;
    color: white;
    text-decoration: none;
    display: block;
    border-bottom: 1px solid #196c96;
    -webkit-transition:  background 0.3s ease-in-out;
    -moz-transition:  background 0.3s ease-in-out;
    -ms-transition:  background 0.3s ease-in-out;
    -o-transition:  background 0.3s ease-in-out;
    transition:  background 0.3s ease-in-out;
}
#sidebar ul li:hover a {
    background: #196c96;
}
</style>		
</head>
<body class='cuerpo'>
<header>
	<div id='nombre'>
		<h1>${sessionScope.usuario}</h1>
	</div>
	<div id='buscar'>	
		<form method='get' action='/findUser'>
		<input id='buscador' name='find' type='text' placeholder='busca personas, producciones, colaboraciones.'>
		<input id='buscadoraction'type='submit' value='buscar'>
		<p> </p>
	</div>	
</header>
<nav>
	<div class="container">
	 <div id="sidebar">
        <ul>
            <li><a href="#">Inicio</a></li>
            <li><a href="#">Producciones</a></li>
            <li><a href='#' onclick="getData()">Colaboraciones</a></li>
            <li><a href="#">Instrumentos</a></li>
            <li><a href="loginController?salir=salir">Salir</a></li>
        </ul>
    </div>
	</div>
</nav>		
<section id='postspace'>
ESPACIO PARA POSTEAR
</section>
<aside>
CHAT
</aside>
</body>
</html>