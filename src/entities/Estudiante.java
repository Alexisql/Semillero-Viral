package entities;

import java.io.Serializable;
import javax.persistence.*;
import java.util.List;


/**
 * The persistent class for the estudiante database table.
 * 
 */
@Entity
@NamedQuery(name="Estudiante.findAll", query="SELECT e FROM Estudiante e")
public class Estudiante implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	private String codigo;

	private String cargo;

	private String correo;

	private String nombre;

	private String rol;

	private String telefono;

	//bi-directional many-to-one association to Administrador
	@ManyToOne
	@JoinColumn(name="codAdmin")
	private Administrador administrador;

	//bi-directional many-to-one association to Estudiantexproyecto
	@OneToMany(mappedBy="estudiante")
	private List<Estudiantexproyecto> estudiantexproyectos;

	public Estudiante() {
	}

	public String getCodigo() {
		return this.codigo;
	}

	public void setCodigo(String codigo) {
		this.codigo = codigo;
	}

	public String getCargo() {
		return this.cargo;
	}

	public void setCargo(String cargo) {
		this.cargo = cargo;
	}

	public String getCorreo() {
		return this.correo;
	}

	public void setCorreo(String correo) {
		this.correo = correo;
	}

	public String getNombre() {
		return this.nombre;
	}

	public void setNombre(String nombre) {
		this.nombre = nombre;
	}

	public String getRol() {
		return this.rol;
	}

	public void setRol(String rol) {
		this.rol = rol;
	}

	public String getTelefono() {
		return this.telefono;
	}

	public void setTelefono(String telefono) {
		this.telefono = telefono;
	}

	public Administrador getAdministrador() {
		return this.administrador;
	}

	public void setAdministrador(Administrador administrador) {
		this.administrador = administrador;
	}

	public List<Estudiantexproyecto> getEstudiantexproyectos() {
		return this.estudiantexproyectos;
	}

	public void setEstudiantexproyectos(List<Estudiantexproyecto> estudiantexproyectos) {
		this.estudiantexproyectos = estudiantexproyectos;
	}

	public Estudiantexproyecto addEstudiantexproyecto(Estudiantexproyecto estudiantexproyecto) {
		getEstudiantexproyectos().add(estudiantexproyecto);
		estudiantexproyecto.setEstudiante(this);

		return estudiantexproyecto;
	}

	public Estudiantexproyecto removeEstudiantexproyecto(Estudiantexproyecto estudiantexproyecto) {
		getEstudiantexproyectos().remove(estudiantexproyecto);
		estudiantexproyecto.setEstudiante(null);

		return estudiantexproyecto;
	}

}