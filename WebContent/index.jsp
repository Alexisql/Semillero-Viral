<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
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
<jsp:useBean id="pDao" class="model.ProyectoDao" scope="request">
					</jsp:useBean>
					<jsp:useBean id="nDao" class="model.NovedadDao" scope="request">
					</jsp:useBean>
	<div class="navbar">
		<div class="navbar-inner">
			<div class="container">
				<a href="index.jsp" class="brand"> <img src="images/viral.jpg"
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
						<li class="active"><a href="#home"><span
								class='fa fa-home'></span> Home</a></li>
						<li><a href="#proyectos"><span class='fa fa-folder-open'></span>
								Proyectos</a></li>
						<li><a href="#eventos"><span
								class='fa fa-calendar-check-o'></span> Eventos</a></li>
						<li><a href="#contact"><span class='fa fa-phone-square'></span>
								Contact</a></li>
						<li><a href="info.jsp"><span class='fa fa-info-circle'></span>
								Info</a></li>
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


	<div id="da-slider" class="da-slider">
		<div class="triangle"></div>
		<!-- mask elemet use for masking background image -->
		<div class="mask"></div>
		<!-- All slides centred in container element -->
		<div class="container">
			<!-- Start first slide -->

			<div class="da-slide">
				<h2>VIRAL</h2>
				<p>SEMILLERO DE INVESTIGACIÓN DE VIDEOJUEGOS Y REALIDAD VIRTUAL</p>
				<div class="da-img">
					<img
						src="https://i2.wp.com/gepea.com.br/wp-content/uploads/2017/01/space-rocket_icon-icons.com_55296.png"
						width="320" alt="image02">
				</div>
			</div>
			<!-- End first slide -->
			<!-- Start second slide -->
			<div class="da-slide">
				<h2 class="fittext2">METODOLOGÍA DE TRABAJO</h2>
				<h4>Unity</h4>
				<p>FORTALECIMIENTO EN CONOCIMIENTOS TECNICOS GRUPO DE ESTUDIO
					UNITY</p>
				<div class="da-img">
					<img src="https://k39.kn3.net/BE1270E95.png" width="320">
				</div>
			</div>
			<!-- End second slide -->
			<!-- Start third slide -->
			<div class="da-slide">
				<h2>CAPACITACIONES</h2>
				<p>Desarrollo de videojuegos y mundos virtuales (SketchUp y
					Realidad Aumentada)</p>
				<div class="da-img">
					<img src="https://upload.wikimedia.org/wikipedia/commons/9/9c/SketchUp-Logo.png" width="320" alt="image03">
				</div>
			</div>
			<!-- Start third slide -->
			<!-- Start cSlide navigation arrows -->
			<div class="da-arrows">
				<span class="da-arrows-prev"></span> <span class="da-arrows-next"></span>
			</div>
			<!-- End cSlide navigation arrows -->
		</div>
	</div>

	<!-- Sección Proyectos -->
	
	<div class="section secondary-section " id="proyectos">
		<div class="triangle"></div>
		<div class="container">
			<div class=" title">
				<h1>PROYECTOS</h1>
				<p>---------------</p>
			</div>
			<c:forEach var="proyecto" items="${pDao.list()}">
			<div id="single-project">
				<div  id="slidingDiv<c:out value="${proyecto.idProyecto}"/>" class="toggleDiv row-fluid single-project">
					<div class="span6">
						<img src="images/proyectos/proyecto<c:out value="${proyecto.idProyecto}"/>.png" alt="project <c:out value="${proyecto.idProyecto}"/>" />
					</div>
					<div class="span6">
						<div class="project-description">
							<div class="project-title clearfix">
								<h3><c:out value="${proyecto.nombre}"/></h3>
								<span class="show_hide close"> <i class="icon-cancel"></i>
								</span>
							</div>
							<div class="project-info">
								<div>
									<span>Clasificación:</span></div>
									<div>
									<span>
									<c:out value="${proyecto.clasificacion}"/></span>
								</div>								
							</div>
							<p>Descripción :</p>
							<p><c:out value="${proyecto.descripcion}"/></p>
						</div>
					</div>
				</div>

				<ul id="portfolio-grid" class="thumbnails row">
					<li class="span4">
						<div class="thumbnail">
							<img
								src="images/proyectos/proyecto<c:out value="${proyecto.idProyecto}"/>.png"
								style="height: 230px" alt="project <c:out value="${proyecto.idProyecto}"/>"> <a
								href="#single-project" class="more show_hide" rel="#slidingDiv<c:out value="${proyecto.idProyecto}"/>">
								<i class="icon-plus"></i>
							</a>
							<h3><c:out value="${proyecto.nombre}"/></h3>
							<p><c:out value="${proyecto.clasificacion}"/></p>
							<div class="mask"></div>
						</div>
					</li>
				</ul>
			</div>
			</c:forEach>
		</div>
	</div>


	<!-- Sección Eventos -->
	<div class="section primary-section" id="eventos">
            <div class="triangle"></div>
            <div class="container">
                <div class="title">
                    <h1>Eventos</h1>
                    <p>--------------------</p>
                </div>
                
                <div class="row-fluid team">
                <c:forEach var="novedad" items="${nDao.list()}">
                    <div class="span4" id="first-person">
                        <div class="thumbnail">
                            <img src="images/calendar.png" alt="team 1">
                            <h3><c:out value="${novedad.titulo}"/></h3>
                            <ul class="social">
                                <li>
                                    <a href="">
                                        <span class="icon-facebook-circled"></span>
                                    </a>
                                </li>
                                <li>
                                    <a href="">
                                        <span class="icon-twitter-circled"></span>
                                    </a>
                                </li>
                                <li>
                                    <a href="">
                                        <span class="icon-linkedin-circled"></span>
                                    </a>
                                </li>
                            </ul>
                            <div class="mask">
                                <h2><c:out value="${novedad.titulo}"/></h2>
                                <p><c:out value="${novedad.descripcion}"/></p>
                            </div>
                        </div>
                    </div>
                    </c:forEach>
                </div>
                
            </div>
        </div>
	<%-- <div class="section primary-section" id="eventos">
		<div class="triangle"></div>
		<div class="container">
			<!-- Start title section -->
			<div class="title">
				<h1>Eventos</h1>
				<!-- Section's title goes here -->
				<p>----------------</p>
				<!--Simple description for section goes here. -->
			</div>
			<div class="row-fluid">
				<c:forEach var="novedad" items="${nDao.list()}">
				<div class="span4">
					<div class="centered service">
						<div class="circle-border zoom-in">
						<img class="img-circle" src="images/evento.png" alt="service 1">
						</div>
						<h3><c:out value="${novedad.titulo}"/></h3>
						<p><c:out value="${novedad.descripcion}"/></p>
					</div>
				</div>
				</c:forEach>
			</div>
		</div>
	</div> --%>
	<!-- Contact section start -->
	<div class="section secondary-section" id="contact">
		<div class="triangle"></div>
		<div class="container">
			<div class="title">
				<h1>Contactenos</h1>
			</div>
		</div>
		<div class="container">
			<div class="span9 center contact-info">
				<p>Directora: Claudia Yamile Gómez Llanez</p>
				<p>Email: claudiaygomez@ufps.edu.co</p>
				<p>Líder: Denis Isidro González</p>
				<p>Email: xer131@hotmail.com</p>
				<p>semilleroviral.com</p>
				<p>Reuniones: Viernes 2:00 PM - 4:00 PM</p>
				<div class="title">
					<h3>Redes Sociales</h3>
				</div>
			</div>
			<div class="row-fluid centered">
				<ul class="social">
					<li><a href="https://www.facebook.com/"> <span class="icon-facebook-circled"></span>
					</a></li>
					<li><a href="https://twitter.com/?lang=es"> <span class="icon-twitter-circled"></span>
					</a></li>
					<li><a href="https://co.linkedin.com/"> <span class="icon-linkedin-circled"></span>
					</a></li>
					<li><a href="https://accounts.google.com/"> <span class="icon-gplus-circled"></span>
					</a></li>
				</ul>
			</div>
		</div>
	</div>
	
	<!-- Contact section edn -->
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