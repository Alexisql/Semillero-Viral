package model;

import entities.Novedad;
import util.Conexion;

public class NovedadDao extends Conexion<Novedad> implements GenericDao<Novedad> {

	public NovedadDao() {
		super(Novedad.class);
	}
	
	public Novedad existe(Novedad n) {
		return this.find(n.getIdNovedad());
	}
}
