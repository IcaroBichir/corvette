<%@page import="br.edu.impacta.service.ListaVoo"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c-rt" %>
<%@ page import="java.util.*" %>
<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="<c:url value="/content/css/bootstrap/bootstrap.min.css" />">
<link rel="stylesheet" href="<c:url value="/content/css/pages/passagens.css" />">
<link rel="stylesheet" href="<c:url value="/content/css/pages/header.css" />">  
<link rel="stylesheet" href="<c:url value="/content/css/jquery/jquery-ui.css" />">
<script src="<c:url value="/content/js/jquery/jquery-2.1.4.min.js" />"></script>
<script src="<c:url value="/content/js/jquery/jquery-ui.min.js" />"></script>
<script src="<c:url value="/content/js/jquery/jquery.maskedinput.min.js" />"></script>
<script src="<c:url value="/content/js/bootstrap/bootstrap.min.js" />" ></script>
<script src="<c:url value="/content/js/pages/passagens.js" />"></script>
<title>Corvette Airlines</title>
<script>
	
</script>

</head>
<body>
<nav class="navbar navbar-inverse navbar-fixed-top">
	<c:import url="header.jsp"></c:import>
</nav>
	
<div class="jumbotron">
	<div class="container">
		<div class="row row-fluid" id="divResultPassagens">
			<div class="panel panel-primary">
			  <div class="panel-heading"></div>
			  <div class="panel-body">
			    <table class="table table-striped">
					<thead>
						<th><span class="glyphicon glyphicon-plane colorAviaoSai"></span></th>
						<th>Sai</th>
						<th>Chega</th>
					</thead>
					<tbody>
					<%
						request.getAttribute("lista");
					%>
						<c-rt:forEach items="${lista}" var="li" varStatus="rowCounterCh">
							<tr id="trPassagens">
								<th scope="row"><input type="checkbox" /></th>
								<th id="teste">${lista}"</th>
								<th>${li.Data_Chegada_Ida}"</th>
							</tr>
						</c-rt:forEach>
					</tbody>
				</table>
			  </div>
			</div>
			
		</div>
	</div>
</div>
<div class="container">
	<footer>
		<c:import url="footer.jsp"></c:import>
	</footer>
</div>
</body>
</html>