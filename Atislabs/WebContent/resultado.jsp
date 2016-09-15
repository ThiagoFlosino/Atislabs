<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="org.neo4j.driver.v1.StatementResult" %>
<%@ page import="org.neo4j.driver.v1.Record" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<title>Buscador de Atas AtisLabs</title>
	    <link href="css/bootstrap.min.css" rel="stylesheet">
	    <link href="css/style.css" rel="stylesheet">
	</head>
	<body>
		<div class="site">
			<div class="container-fluid">
				<div class="jumbotron">
					<div class="menu">
						<ul class="nav nav-tabs">
						  <li role="presentation"><a href="index.jsp">Home</a></li>
						  <li role="presentation"><a href="#">Sobre</a></li>
						  <li role="presentation"><a href="#">Manual</a></li>
						</ul>
						<h3 class="navbar-text">Buscador de Atas</h3>
					</div>
					<div class="result_list">
						<div class="panel panel-success">
						 <div class="panel-heading">
						    <h3 class="panel-title">[pergunta da busca]</h3>
						 </div>
						 <div class="panel-body">
	
						 </div>
				  		<ul class="list-group">
						    <li class="list-group-item">
						    	<div class="resultado">
						    		<div class="row">
									  	<div class="col-xs-6 col-md-3 imagem">
									    	<a href="#" class="thumbnail">
									    	  <img src="img/thumb.png" alt="...">
									    	</a>
	 									</div>
	 									<h4><strong>#1 Resultado da busca</strong></h4>
	 									<%
										try {
											StatementResult result = (StatementResult) request.getAttribute("resultSet");
							
											if(result != null){
												 while( result.hasNext() ){
												        Record record = result.next();
												        %>     
												        <p><%=record.get("id").asString()%><br></p>
		
									<%
												}
											}
										} catch (Exception e) {
											e.printStackTrace();
										}
									%>
				
	 								</div>
						    	</div>
						    </li>
						  </ul>
						</div>
					</div>
			</div>
			<div class="footer">
					<hr class="linha">
					<p class="text-center">UFRRJ - Instituto Multidisciplinar</p>
					<p class="text-center">Desenvolvido pela equipe AtisLabs</p>
			</div>
		</div>
	
	</body>
</html>