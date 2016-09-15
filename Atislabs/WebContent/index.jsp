<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ page import="java.util.Collection"%>
<%@ page import="main.java.conexao.*"%>
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
				</div>
				<h1 class="text-center texto-principal">Buscador de Atas</h1>
				   <form action="ControladorNode" method="post">
					   <div class="input-group input-group-lg busca">
					   		<input type="text" class="form-control" placeholder="Pesquisar..." id="query" name="query" required>
							<div class="input-group-btn">
								<button type="submit" class="btn btn-default btn-lg" name="acao" value="buscar" ><span class="glyphicon glyphicon-search"></span></button>
		                  </div> 
	             	 </div>
             	 </form>
			</div>
		</div>
		<div class="footer">
				<hr class="linha">
				<p lass="text-center">UFRRJ - Instituto Multidisciplinar</p>
				<p lass="text-center">Desenvolvido pela equipe AtisLabs</p>
		</div>
	</div>
	</body>
</html>