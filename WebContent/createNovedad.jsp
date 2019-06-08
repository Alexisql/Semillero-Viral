<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<div class="container-fluid">
<ol class="breadcrumb">
        <li class="breadcrumb-item">
          <a >NOVEDADES</a>
        </li>
      </ol>
      <div class="modal-dialog modal-lg"  role="document">
        <div class="modal-content">
          <div class="modal-header">
            <h5 class="modal-title">Registrar Novedad</h5>
          </div>
          <div class="modal-body">
          <form method="post" action="NovedadController">
				<div class="row">
				
					<div class="col-md-6">

						<div class="form-group">
							<label><strong style="color:red;">* </strong><strong>Titulo
							</strong></label>
							<div class="input-group">
								<div class="input-group-prepend">
									<span class="input-group-text"><span class="fa fa-book"></span></span>
								</div>
								<input type="text" name="titulo" class="form-control" required>
							</div>
						</div>
						<div class="form-group">
							<label><strong>Imagen</strong></label>
							<div class="input-group">
								<input type="file" class="form-control-file border" name="file" >
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
							<a href="adminNovedad.jsp" class="btn btn-default">Atras</a>
							<button type="submit" class="btn btn-primary">Guardar</button>
						</div>
				</form> 
          </div>	
        </div>
      </div>
    </div>