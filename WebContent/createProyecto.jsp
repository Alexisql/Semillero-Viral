<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<div class="container-fluid">
<ol class="breadcrumb">
        <li class="breadcrumb-item">
          <a >PROYECTOS</a>
        </li>
      </ol>
      <div class="modal-dialog modal-lg"  role="document">
        <div class="modal-content">
          <div class="modal-header">
            <h5 class="modal-title">Registrar Proyecto</h5>
          </div>
          <div class="modal-body">
          <form method="post" action="ProyectoController">
          <jsp:useBean id="eDao" class="model.EstudianteDao" scope="request">
					</jsp:useBean>
				<div class="row">
				
					<div class="col-md-6">

						<div class="form-group">
							<label><strong style="color:red;">* </strong><strong>Nombre
							</strong></label>
							<div class="input-group">
								<div class="input-group-prepend">
									<span class="input-group-text"><span class="fa fa-book"></span></span>
								</div>
								<input type="text" name="nombre" class="form-control" required>
							</div>
						</div>
						
						<div class="form-group">
							<label><strong style="color:red;">* </strong><strong>Clasificación</strong></label>
							<div class="input-group">
								<div class="input-group-prepend">
									<span class="input-group-text"><span class="fa fa-archive"></span></span>
								</div>
								<select class="form-control" name="clasificacion" required>
                                    <option value="Propuesta">Propuesta</option>
                                    <option value="Curso">En Curso</option>
                                    <option value="Finalizado">Finalizado</option>
                                </select>
							</div>
						</div>
						
						<div class="form-group">
							<label></strong><strong>Imagen</strong></label>
							<div class="input-group">
								<input type="file" class="form-control-file border" name="file">
							</div>
						</div>
						
					</div>

					<div class="col-md-6">
					
						<div class="form-group">
							<label><strong style="color:red;">* </strong><strong>Descripción</strong></label>
							<div class="input-group">
								<div class="input-group-prepend">
									<span class="input-group-text"><span class="fa fa-pencil"></span></span>
								</div>
								<textarea class="form-control" rows="5" name="descripcion" required></textarea>
							</div>
						</div>
					</div>
				</div><br>  
				<spand><h4>Los campos con <strong style="color:red;"> * </strong> son obligatorios</h4></spand><hr>
				<div class="pull-right">
							<a href="adminProyecto.jsp" class="btn btn-default">Atras</a>
							<button type="submit" class="btn btn-primary">Guardar</button>
						</div>
				</form>     
          </div>	
        </div>
      </div>
    </div>