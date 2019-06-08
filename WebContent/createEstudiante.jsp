<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<div class="container-fluid">
<ol class="breadcrumb">
        <li class="breadcrumb-item">
          <a >ESTUDIANTES</a>
        </li>
      </ol>
      <div class="modal-dialog modal-lg"  role="document">
        <div class="modal-content">
          <div class="modal-header">
            <h5 class="modal-title">Registrar Estudiante</h5>
          </div>
          <div class="modal-body">
          <form method="post" action="EstudianteController">
				<div class="row">
				
					<div class="col-md-6">

						<div class="form-group">
							<label><strong style="color:red;">* </strong><strong>Nombre(s)
							</strong></label>
							<div class="input-group">
								<div class="input-group-prepend">
									<span class="input-group-text"><span class="fa fa-user"></span></span>
								</div>
								<input type="text" name="nombre" class="form-control" required>
							</div>
						</div>

						<div class="form-group">
							<label><strong style="color:red;">* </strong><strong>Codigo
							</strong></label>
							<div class="input-group">
								<div class="input-group-prepend">
									<span class="input-group-text"><span class="fa fa-qrcode"></span></span>
								</div>
								<input type="text" name="codigo" class="form-control" required>
							</div>
						</div>
						
						<div class="form-group">
							<label><strong style="color:red;">* </strong><strong>E-mail</strong></label>
							<div class="input-group">
								<div class="input-group-prepend">
									<span class="input-group-text"><span class="fa fa-at"></span></span>
								</div>
								<input type="email" name="email" class="form-control" required>
							</div>
						</div>
					</div>

					<div class="col-md-6">
					
						<div class="form-group">
							<label><strong>Teléfono</strong></label>
							<div class="input-group">
								<div class="input-group-prepend">
									<span class="input-group-text"><span class="fa fa-phone"></span></span>
								</div>
								<input type="text" name="telefono" class="form-control">
							</div>
						</div>

						<div class="form-group">
							<label><strong style="color:red;">* </strong><strong>Cargo</strong></label>
							<div class="input-group">
								<div class="input-group-prepend">
									<span class="input-group-text"><span class="fa fa-address-book"></span></span>
								</div>
								<select class="form-control" name="cargo" required>
                                    <option value="Estudiante">Estudiante</option>
                                    <option value="Lider">Lider</option>
                                </select>
							</div>
						</div>

						<div class="form-group">
							<label><strong style="color:red;">* </strong><strong>Rol</strong></label>
							<div class="input-group">
								<div class="input-group-prepend">
									<span class="input-group-text"><span class="fa fa-id-card"></span></span>
								</div>
								<select class="form-control" name="rol" required>
                                    <option value="Historiador">Historiador</option>
                                    <option value="Artista">Artista</option>
                                    <option value="Modelador">Modelador</option>
                                    <option value="Programador">Programador</option>
                                    <option value="Tester">Tester</option>
                                </select>
							</div>
						</div>
						
						
					</div>
				</div><br>  
				<spand><h4>Los campos con <strong style="color:red;"> * </strong> son obligatorios</h4></spand><hr>
				<div class="pull-right">
							<a href="admin.jsp" class="btn btn-default">Atras</a>
							<button type="submit" class="btn btn-primary">Guardar</button>
						</div>
				</form>     
          </div>
            
        </div>
      </div>
    </div>
