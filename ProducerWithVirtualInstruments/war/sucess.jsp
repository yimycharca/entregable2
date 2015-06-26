<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<script type="text/javascript" src="/jquery/jquery-1.11.3.min.js">
		</script>
		<script language="JavaScript" type="text/javascript">
		alert("registrado con éxito");
		var pagina="/login.jsp"
		function redireccionar() 
		{
		location.href=pagina
		} 
		setTimeout ("redireccionar()", 4000);
		
		</script>
</head>
<body>
	<label>Bienvenido ${requestScope['user'].username}</label>
	<br><br><br><br><br>
	<center><h3>Redireccionando...</h3></center>
</body>
</html>