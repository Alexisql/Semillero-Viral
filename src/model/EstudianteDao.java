package model;

import entities.Estudiante;
import util.Conexion;

public class EstudianteDao extends Conexion<Estudiante> implements GenericDao<Estudiante> {

	public EstudianteDao() {
		super(Estudiante.class);
	}

	public boolean existe(Estudiante e) {
		Estudiante estu = this.find(e.getCodigo());
		if (estu != null) {
			return true;
		}
		return false;
	}
}
