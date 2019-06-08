package entities;

import java.io.Serializable;
import javax.persistence.*;
import java.util.List;


/**
 * The persistent class for the administrador database table.
 * 
 */
@Entity
@NamedQuery(name="Administrador.findAll", query="SELECT a FROM Administrador a")
public class Administrador implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	private String codigo;

	private String contrasenia;

	private String nombre;

	//bi-directional many-to-one association to Estudiante
	@OneToMany(mappedBy="administrador")
	private List<Estudiante> estudiantes;

	//bi-directional many-to-one association to Novedad
	@OneToMany(mappedBy="administrador")
	private List<Novedad> novedads;

	//bi-directional many-to-one association to Proyecto
	@OneToMany(mappedBy="administrador")
	private List<Proyecto> proyectos;

	public Administrador() {
	}

	public String getCodigo() {
		return this.codigo;
	}

	public void setCodigo(String codigo) {
		this.codigo = codigo;
	}

	public String getContrasenia() {
		return this.contrasenia;
	}

	public void setContrasenia(String contrasenia) {
		this.contrasenia = contrasenia;
	}

	public String getNombre() {
		return this.nombre;
	}

	public void setNombre(String nombre) {
		this.nombre = nombre;
	}

	public List<Estudiante> getEstudiantes() {
		return this.estudiantes;
	}

	public void setEstudiantes(List<Estudiante> estudiantes) {
		this.estudiantes = estudiantes;
	}

	public Estudiante addEstudiante(Estudiante estudiante) {
		getEstudiantes().add(estudiante);
		estudiante.setAdministrador(this);

		return estudiante;
	}

	public Estudiante removeEstudiante(Estudiante estudiante) {
		getEstudiantes().remove(estudiante);
		estudiante.setAdministrador(null);

		return estudiante;
	}

	public List<Novedad> getNovedads() {
		return this.novedads;
	}

	public void setNovedads(List<Novedad> novedads) {
		this.novedads = novedads;
	}

	public Novedad addNovedad(Novedad novedad) {
		getNovedads().add(novedad);
		novedad.setAdministrador(this);

		return novedad;
	}

	public Novedad removeNovedad(Novedad novedad) {
		getNovedads().remove(novedad);
		novedad.setAdministrador(null);

		return novedad;
	}

	public List<Proyecto> getProyectos() {
		return this.proyectos;
	}

	public void setProyectos(List<Proyecto> proyectos) {
		this.proyectos = proyectos;
	}

	public Proyecto addProyecto(Proyecto proyecto) {
		getProyectos().add(proyecto);
		proyecto.setAdministrador(this);

		return proyecto;
	}

	public Proyecto removeProyecto(Proyecto proyecto) {
		getProyectos().remove(proyecto);
		proyecto.setAdministrador(null);

		return proyecto;
	}

}