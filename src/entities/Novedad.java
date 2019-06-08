package entities;

import java.io.Serializable;
import javax.persistence.*;


/**
 * The persistent class for the novedad database table.
 * 
 */
@Entity
@NamedQuery(name="Novedad.findAll", query="SELECT n FROM Novedad n")
public class Novedad implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int idNovedad;

	private String descripcion;

	private String imagen;

	private String titulo;

	//bi-directional many-to-one association to Administrador
	@ManyToOne
	@JoinColumn(name="codAdmin")
	private Administrador administrador;

	public Novedad() {
	}

	public int getIdNovedad() {
		return this.idNovedad;
	}

	public void setIdNovedad(int idNovedad) {
		this.idNovedad = idNovedad;
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

	public String getTitulo() {
		return this.titulo;
	}

	public void setTitulo(String titulo) {
		this.titulo = titulo;
	}

	public Administrador getAdministrador() {
		return this.administrador;
	}

	public void setAdministrador(Administrador administrador) {
		this.administrador = administrador;
	}

}