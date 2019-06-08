<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>VIRAL</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
	integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u"
	crossorigin="anonymous">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css"
	integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp"
	crossorigin="anonymous">
<link rel="shortcut icon" href="images/ico/favicon.ico">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<meta charset="utf-8">

</head>
<body style="background-color: #0D117F">
	<div class="container">
		<div id="loginbox" style="margin-top: 100px;"
			class="mainbox col-md-6 col-md-offset-3 col-sm-8 col-sm-offset-2">
			<div class="panel panel-info">
				<div class="panel-heading">
					<div class="panel-title">Iniciar Sesión</div>
				</div>
				<div class="panel-body">
					<form class="form-horizontal" method="POST"
						action="LoginController">
						<div class="col-md-12">
							<div class="form-group">
								<label><strong>Codigo </strong></label>
								<div class="input-group">
									<span class="input-group-addon bg-info"><span
										class="glyphicon glyphicon-user"></span></span> <input type="text"
										name="codigo" class="form-control" value="" id="codigo"
										required>
								</div>
							</div>

							<div class="form-group">
								<label><strong>Contraseña</strong></label>
								<div class="input-group">
									<span class="input-group-addon bg-info"><span
										class="glyphicon glyphicon-lock"></span></span> <input
										class="form-control" placeholder="******" autocomplete="off"
										id="contrasenia" minlength="6" name="contrasenia"
										type="password" value="" required>
								</div>
							</div>
						</div>
						<div class="pull-left">
							<p></p>
							<a href="index.jsp" class="btn btn-default">Atras</a>
							<button type="submit" class="btn btn-primary">Ingresar</button>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
</body>
</html>