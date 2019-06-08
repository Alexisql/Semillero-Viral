package model;

import entities.Proyecto;
import util.Conexion;

public class ProyectoDao extends Conexion<Proyecto> implements GenericDao<Proyecto> {

	public ProyectoDao() {
		super(Proyecto.class);
	}
	public Proyecto existe(Proyecto p) {
		return this.find(p.getIdProyecto());
	}
}
