<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page import="model.Pais"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset= UTF-8">
<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="css/style.css" rel="stylesheet">
<title>Pais</title>
</head>
<body>
	<!-- Barra superior com os menus de navegação -->
	<c:import url="Menu.jsp"/>
	<!-- Container Principal -->
	<div id="main" class="container">
		<h3 class="page-header">
			Visualizar Pais #${pais.id }%></h3>
		<div class="row">
			<div class="col-md-12">
				<p>
					<strong>Nome</strong>
				</p>
				<p>
					${pais.nome}
				</p>
			</div>
		</div>
		<div class="row">
			<div class="col-md-6">
				<p>
					<strong>População</strong>
				</p>
				<p>
					${pais.populacao}
				</p>
			</div>
			<div class="col-md-6">
				<p>
					<strong>Área</strong>
				</p>
				<p>
					${pais.area}
				</p>
			</div>
		</div>
		<hr />
		<div id="actions" class="row">
			<div class="col-md-12">
				<a href="index.html" class="btn btn-default">Voltar</a>
			</div>
		</div>
	</div>

	<script src="js/jquery.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
</body>
</html>