<%@page import="br.edu.impacta.model.Usuario"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<script src="<c:url value="/content/js/pages/header.js" />"></script>
<title></title>
</head>
<body>
<div class="container" id="headerContainer">
		<div>
			<a class="navbar-brand" href="index">Corvette Airlines</a> 
		</div>
		<div class="navbar-collapse collapse" id="navbar">
			<form class="navbar-form navbar-right" id="formLogin" action="" method="post">
			  <div class="form-group">
			    <label class="sr-only" for="userLogin">Login</label>
			    <input type="email" class="form-control" id="userLogin" placeholder="Enter login">
			  </div>
			  <div class="form-group">
			    <label class="sr-only" for="passLogin">Password</label>
			    <input type="password" class="form-control" id="passLogin" placeholder="Password">
			  </div>
		  		<button type="submit" class="btn btn-primary" onclick="login()">Sign in</button>
				<button type="button" class="btn btn-success" data-toggle="modal" data-target="#modelCadastro">Cadastro</button>
			</form>
			<div id="welcomeLogin" style="display:none;">
				<span class="glyphicon glyphicon-user">Bem vindo: 
				<strong> <% out.println(session.getAttribute("user")); %>	</strong><br></span>
			</div>
		</div>
	</div>
</body>
</html>