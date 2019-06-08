<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">
<title>VIRAL</title>
<!-- Bootstrap core CSS-->
<link href="vendor/bootstrap/css/bootstrap.css" rel="stylesheet">
<!-- Custom fonts for this template-->
<link href="vendor/font-awesome/css/font-awesome.css" rel="stylesheet"
	type="text/css">
<!-- Page level plugin CSS-->
<link href="vendor/datatables/dataTables.bootstrap4.css"
	rel="stylesheet">
<!-- Custom styles for this template-->
<link href="css/sb-admin.css" rel="stylesheet">
<link rel="shortcut icon" href="images/ico/favicon.ico">
</head>

<body class="fixed-nav sticky-footer bg-dark" id="page-top">
	<!-- Navigation-->
	<nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top"
		id="mainNav"> <a href="admin.jsp" class="brand"> <img
		src="images/viral.jpg" width="120" height="40" alt="Logo" /> <!-- This is website logo -->
	</a>
	<button class="navbar-toggler navbar-toggler-right" type="button"
		data-toggle="collapse" data-target="#navbarResponsive"
		aria-controls="navbarResponsive" aria-expanded="false"
		aria-label="Toggle navigation">
		<span class="navbar-toggler-icon"></span>
	</button>
	<div class="collapse navbar-collapse" id="navbarResponsive">
		<ul class="navbar-nav navbar-sidenav" id="exampleAccordion">

			<li class="nav-item" data-toggle="tooltip" data-placement="right">
				<a class="nav-link"> <i></i> <span class="nav-link-text"></span>
			</a>
			</li>
			<li class="nav-item" data-toggle="tooltip" data-placement="right">
				<a class="nav-link"> <i></i> <span class="nav-link-text"></span>
			</a>
			</li>
			<li class="nav-item" data-toggle="tooltip" data-placement="right">
				<a class="nav-link"> <i></i> <span class="nav-link-text"></span>
			</a>
			</li>
			<li class="nav-item" data-toggle="tooltip" data-placement="right">
				<a class="nav-link" href="admin.jsp"> <i
					class="fa fa-address-card"></i> <span class="nav-link-text">Estudiantes</span>
			</a>
			</li>
			<li class="nav-item" data-toggle="tooltip" data-placement="right">
				<a class="nav-link"> <i></i> <span class="nav-link-text"></span>
			</a>
			</li>
			<li class="nav-item" data-toggle="tooltip" data-placement="right">
				<a class="nav-link"> <i></i> <span class="nav-link-text"></span>
			</a>
			</li>
			<li class="nav-item" data-toggle="tooltip" data-placement="right">
				<a class="nav-link" href="adminProyecto.jsp"> <i
					class="fa fa-folder-open"></i> <span class="nav-link-text">Proyectos</span>
			</a>
			</li>
			<li class="nav-item" data-toggle="tooltip" data-placement="right">
				<a class="nav-link"> <i></i> <span class="nav-link-text"></span>
			</a>
			</li>
			<li class="nav-item" data-toggle="tooltip" data-placement="right">
				<a class="nav-link"> <i></i> <span class="nav-link-text"></span>
			</a>
			</li>
			<li class="nav-item" data-toggle="tooltip" data-placement="right">
				<a class="nav-link" href="adminNovedad.jsp"> <i
					class="fa fa-calendar-check-o"></i> <span class="nav-link-text">Novedades</span>
			</a>
			</li>
		</ul>
		<ul class="navbar-nav sidenav-toggler">
			<li class="nav-item"><a class="nav-link text-center"
				id="sidenavToggler"> <i class="fa fa-fw fa-angle-left"></i>
			</a></li>
		</ul>
		<ul class="navbar-nav ml-auto">
			<li class="nav-item"><a class="nav-link" href="index.jsp"> <i
					class="fa fa-home"></i> Inicio
			</a></li>
			<li class="nav-item"><a class="nav-link" data-toggle="modal"
				data-target="#exampleModal"> <i class="fa fa-power-off"></i>
					Cerrar Sesión
			</a></li>
		</ul>
	</div>
	</nav>

	<div class="content-wrapper">
		<div class="container-fluid">
			<ol class="breadcrumb">
				<li class="breadcrumb-item"><a>PROYECTOS</a></li>
			</ol>
			<div class="modal-dialog modal-lg" role="document">
				<div class="modal-content">
					<div class="modal-header">
						<h5 class="modal-title">Registrar Proyecto</h5>
					</div>
					<div class="modal-body">
					<c:set var="proyecto" scope="request" value = "${requestScope.proyecto}"/>
						<form method="post" action="ProyectoController?ed=<c:out value="${proyecto != null ? proyecto.idProyecto: 0}"/>">
							<div class="row">

								<div class="col-md-6">
									
									<div class="form-group">
										<label><strong>ID
										</strong></label>
										<div class="input-group">
											<div class="input-group-prepend">
												<span class="input-group-text"><span
													class="fa fa-pencil"></span></span>
											</div>
											<input type="text" name="id" class="form-control" readonly="readonly"
												value="<c:out value = "${proyecto.idProyecto}"/>" required>
										</div>
									</div>
									
									<div class="form-group">
										<label><strong style="color: red;">* </strong><strong>Nombre
										</strong></label>
										<div class="input-group">
											<div class="input-group-prepend">
												<span class="input-group-text"><span
													class="fa fa-book"></span></span>
											</div>
											<input type="text" name="nombre" class="form-control"
												value="<c:out value = "${proyecto.nombre}"/>" required>
										</div>
									</div>

									<div class="form-group">
										<label><strong style="color: red;">* </strong><strong>Descripción</strong></label>
										<div class="input-group">
											<div class="input-group-prepend">
												<span class="input-group-text"><span
													class="fa fa-pencil"></span></span>
											</div>
											<textarea class="form-control" rows="3" name="descripcion"
												required><c:out value = "${proyecto.descripcion}"/></textarea>
										</div>
									</div>
								</div>

								<div class="col-md-6">

									<div class="form-group">
										<label><strong>Imagen</strong></label>
										<div class="input-group">
											<input type="file" class="form-control-file border"
												name="file">
										</div>
									</div>

									<div class="form-group">
										<label><strong style="color: red;">* </strong><strong>Clasificación</strong></label>
										<div class="input-group">
											<div class="input-group-prepend">
												<span class="input-group-text"><span
													class="fa fa-archive"></span></span>
											</div>
											<select class="form-control" name="clasificacion" required>
												<option value="Propuesta">Propuesta</option>
												<option value="Curso">En Curso</option>
												<option value="Finalizado">Finalizado</option>
											</select>
										</div>
									</div>

								</div>
							</div>
							<br>
							<spand>
							<h4>
								Los campos con <strong style="color: red;"> * </strong> son
								obligatorios
							</h4>
							</spand>
							<hr>
							<div class="pull-right">
								<a href="adminProyecto.jsp" class="btn btn-default">Atras</a>
								<button type="submit" class="btn btn-primary">Actualizar</button>
							</div>
						</form>
					</div>

				</div>
			</div>
		</div>
	</div>

	<footer class="sticky-footer">
	<div class="container">
		<div class="text-center">
			<small>Copyright © Your Website 2018</small>
		</div>
	</div>
	</footer>
	<!-- Scroll to Top Button-->
	<a class="scroll-to-top rounded" href="#page-top"> <i
		class="fa fa-angle-up"></i>
	</a>
	<!-- Logout Modal-->
	<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalLabel">Seguro Deseas
						Salir?</h5>
					<button class="close" type="button" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">×</span>
					</button>
				</div>
				<div class="modal-body">Seleccione "Salir" a continuación si
					está listo para finalizar su sesión actual.</div>
				<div class="modal-footer">
					<button class="btn btn-secondary" type="button"
						data-dismiss="modal">Cancelar</button>
					<form method="get" action="LoginController">
						<button class="btn btn-danger" type="submit">Salir</button>
					</form>
				</div>
			</div>
		</div>
	</div>
	<!-- Bootstrap core JavaScript-->
	<script src="vendor/jquery/jquery.js"></script>
	<script src="vendor/bootstrap/js/bootstrap.bundle.js"></script>
	<!-- Core plugin JavaScript-->
	<script src="vendor/jquery-easing/jquery.easing.js"></script>
	<!-- Page level plugin JavaScript-->
	<script src="vendor/datatables/jquery.dataTables.js"></script>
	<script src="vendor/datatables/dataTables.bootstrap4.js"></script>
	<!-- Custom scripts for all pages-->
	<script src="js/sb-admin.js"></script>
	<!-- Custom scripts for this page-->
	<script src="js/sb-admin-datatables.js"></script>
</body>
</html>