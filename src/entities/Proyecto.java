package entities;

import java.io.Serializable;
import javax.persistence.*;
import java.util.List;


/**
 * The persistent class for the proyecto database table.
 * 
 */
@Entity
@NamedQuery(name="Proyecto.findAll", query="SELECT p FROM Proyecto p")
public class Proyecto implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int idProyecto;

	private String clasificacion;

	private String descripcion;

	private String imagen;

	private String nombre;

	//bi-directional many-to-one association to Estudiantexproyecto
	@OneToMany(mappedBy="proyecto")
	private List<Estudiantexproyecto> estudiantexproyectos;

	//bi-directional many-to-one association to Administrador
	@ManyToOne
	@JoinColumn(name="codAdmin")
	private Administrador administrador;

	public Proyecto() {
	}

	public int getIdProyecto() {
		return this.idProyecto;
	}

	public void setIdProyecto(int idProyecto) {
		this.idProyecto = idProyecto;
	}

	public String getClasificacion() {
		return this.clasificacion;
	}

	public void setClasificacion(String clasificacion) {
		this.clasificacion = clasificacion;
	}

	public String getDescripcion() {
		return this.descripcion;
	}

	public void setDescripcion(String descripcion) {
		this.descripcion = descripcion;
	}

	public String getImagen() {
		return this.imagen;
	}

	public void setImagen(String imagen) {
		this.imagen = imagen;
	}

	public String getNombre() {
		return this.nombre;
	}

	public void setNombre(String nombre) {
		this.nombre = nombre;
	}

	public List<Estudiantexproyecto> getEstudiantexproyectos() {
		return this.estudiantexproyectos;
	}

	public void setEstudiantexproyectos(List<Estudiantexproyecto> estudiantexproyectos) {
		this.estudiantexproyectos = estudiantexproyectos;
	}

	public Estudiantexproyecto addEstudiantexproyecto(Estudiantexproyecto estudiantexproyecto) {
		getEstudiantexproyectos().add(estudiantexproyecto);
		estudiantexproyecto.setProyecto(this);

		return estudiantexproyecto;
	}

	public Estudiantexproyecto removeEstudiantexproyecto(Estudiantexproyecto estudiantexproyecto) {
		getEstudiantexproyectos().remove(estudiantexproyecto);
		estudiantexproyecto.setProyecto(null);

		return estudiantexproyecto;
	}

	public Administrador getAdministrador() {
		return this.administrador;
	}

	public void setAdministrador(Administrador administrador) {
		this.administrador = administrador;
	}

}