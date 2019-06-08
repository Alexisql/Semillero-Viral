package model;

import entities.Administrador;
import util.Conexion;

public class AdministradorDao extends Conexion<Administrador> implements GenericDao<Administrador> {

	public AdministradorDao() {
		super(Administrador.class);
	}
	public String validarAdmin(Administrador a){
		Administrador admin = this.find(a.getCodigo());
		if(admin != null)
			if (admin.getContrasenia().contentEquals(a.getContrasenia())){
				return "SUCCESS";
			}
		return "ERROR";
	}
}
