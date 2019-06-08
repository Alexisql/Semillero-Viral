<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
<meta charset=utf-8>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>VIRAL</title>
<!-- Load Roboto font -->
<link
	href='http://fonts.googleapis.com/css?family=Roboto:400,300,700&amp;subset=latin,latin-ext'
	rel='stylesheet' type='text/css'>
<!-- Load css styles -->
<link rel="stylesheet" type="text/css" href="css/bootstrap.css" />
<link rel="stylesheet" type="text/css"
	href="css/bootstrap-responsive.css" />
<link rel="stylesheet" type="text/css" href="css/style.css" />
<link rel="stylesheet" type="text/css" href="css/pluton.css" />
<link rel="stylesheet" type="text/css" href="css/jquery.cslider.css" />
<link rel="stylesheet" type="text/css" href="css/jquery.bxslider.css" />
<link rel="stylesheet" type="text/css" href="css/animate.css" />
<!-- Custom fonts for this template-->
<link href="vendor/font-awesome/css/font-awesome.css" rel="stylesheet"
	type="text/css">
<!-- Fav and touch icons -->
<link rel="apple-touch-icon-precomposed" sizes="144x144"
	href="images/ico/apple-touch-icon-144.png">
<link rel="apple-touch-icon-precomposed" sizes="114x114"
	href="images/ico/apple-touch-icon-114.png">
<link rel="apple-touch-icon-precomposed" sizes="72x72"
	href="images/apple-touch-icon-72.png">
<link rel="apple-touch-icon-precomposed"
	href="images/ico/apple-touch-icon-57.png">
<link rel="shortcut icon" href="images/ico/favicon.ico">
</head>

<body>
	<div class="navbar">
		<div class="navbar-inner">
			<div class="container">
				<a href="#" class="brand"> <img src="images/viral.jpg"
					width="120" height="40" alt="Logo" /> <!-- This is website logo -->
				</a>
				<!-- Navigation button, visible on small resolution -->
				<button type="button" class="btn btn-navbar" data-toggle="collapse"
					data-target=".nav-collapse">
					<i class="icon-menu"></i>
				</button>
				<!-- Main navigation -->
				<div class="nav-collapse collapse pull-right">
					<ul class="nav" id="top-navigation">
						<li ><a href="index.jsp"><span
								class='fa fa-home'></span> Home</a></li>
						<%
							if (request.getSession().getAttribute("admin") != null) {
								out.println("<li><a href='admin.jsp'><span class='fa fa-cogs'></span> Admin</a></li>");
							} else {
								out.println("<li><a href='login.jsp'><span class='fa fa-sign-in'></span> Login</a></li>");
							}
						%>
					</ul>
				</div>
				<!-- End main navigation -->
			</div>
		</div>
	</div>


	<div class="section primary-section">
		<div class="triangle"></div>
		<div class="container">
			<div class="title">
				<h1>MISIÓN</h1>
				<p>Servir de plataforma para la formación investigativa de los
					estudiantes en la aplicación de videojuegos y realidad mixta con
					fines académicos y sociales. Esto orientado a fortalecer el
					programa de Ingeniería de Sistemas en su compromiso alta calidad.</p>
				<h1>VISIÓN</h1>
				<p>El Semillero de Investigación VIRAL será reconocido
					regionalmente como pionero en la formación en investigación
					aplicada al uso de los videojuegos y realidad mixta con fines
					sociales y académicos.</p>
			</div>
		</div>
	</div>


	<div class="section secondary-section ">
		<div class="triangle"></div>
		<div class="container">
			<div class="title">
				<h1>OBJETIVO GENERAL</h1>
				<p>Ofrecer un espacio para que los estudiantes puedan aprender y
					desarrollar juegos, mientras llevan a cabo un proceso de
					investigación formativa.</p>
				<h1>OBJETIVOS ESPECIFICOS</h1>
				<p>Ofrecer un espacio de intercambio de conocimiento para que
					personas con experiencia en el desarrollo de videojuegos compartan
					con personas que comienzan esta labor.</p>
				<p>Fomentar en los participantes el desarrollo de habilidades
					básicas de investigación en temas relacionados con el desarrollo de
					videojuegos.</p>
				<p>Organizar capacitaciones en desarrollo de videojuegos y
					mundos virtuales.</p>
				<p>Brindar un espacio donde confluyan personas con diferentes
					habilidades para desarrollar videojuegos.</p>
			</div>
		</div>
	</div>


	
	<div class="section primary-section">
		<div class="triangle"></div>
		<div class="container">
			<div class="title">
				<h1>¿Qué se piensa hacer?</h1>
				<p>Proyecto de investigación formativa.</p>
				<p>Desarrollo de juegos y de mundos virtuales</p>
				<p>Prototipo de un videojuego que apoye el proceso de
					clasificación de las basuras.</p>
				<p>Diseño de un videojuego como estrategia de apoyo al proceso
					de acreditación institucional.</p>
				<h1>Capacitaciones</h1>
				<p>Desarrollo de videojuegos y mundos virtuales (SketchUp y
					Realidad Aumentada).</p>
				<p>Capacitación en Instrumentos de recolección de datos e
					información.</p>
				<p>Participar en congresos y eventos académicos para socializar
					trabajos en curso y realizados.</p>
			</div>
		</div>
	</div>

	<!-- Footer section start -->
	<div class="footer">
		<p>
			&copy; 2013 Theme by <a href="http://www.graphberry.com">GraphBerry</a>,
			<a href="http://goo.gl/NM84K2">Documentation</a>
		</p>
	</div>
	<!-- Footer section end -->
	<!-- ScrollUp button start -->
	<div class="scrollup">
		<a href="#"> <i class="icon-up-open"></i>
		</a>
	</div>
	<!-- ScrollUp button end -->
	<!-- Include javascript -->
	<script src="js/jquery.js"></script>
	<script type="text/javascript" src="js/jquery.mixitup.js"></script>
	<script type="text/javascript" src="js/bootstrap.js"></script>
	<script type="text/javascript" src="js/modernizr.custom.js"></script>
	<script type="text/javascript" src="js/jquery.bxslider.js"></script>
	<script type="text/javascript" src="js/jquery.cslider.js"></script>
	<script type="text/javascript" src="js/jquery.placeholder.js"></script>
	<script type="text/javascript" src="js/jquery.inview.js"></script>
	<script type="text/javascript" src="js/app.js"></script>
</body>
</html>