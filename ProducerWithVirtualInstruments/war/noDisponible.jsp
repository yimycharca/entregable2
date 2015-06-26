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
		alert("este nombre de usuario ya se ha registrado intente con otro nombre y mas caracteres");
		var pagina="/register.jsp"
		function redireccionar() 
		{
		location.href=pagina
		} 
		setTimeout ("redireccionar()", 2000);
		
		</script>
</head>
<body>
<br><br><br><br><br>
	<center><h3>Redireccionando...</h3></center>
</body>
</html>