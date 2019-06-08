package entities;

import java.io.Serializable;
import javax.persistence.*;


/**
 * The persistent class for the estudiantexproyecto database table.
 * 
 */
@Entity
@NamedQuery(name="Estudiantexproyecto.findAll", query="SELECT e FROM Estudiantexproyecto e")
public class Estudiantexproyecto implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int idEstudxProy;

	//bi-directional many-to-one association to Estudiante
	@ManyToOne
	@JoinColumn(name="codEstud")
	private Estudiante estudiante;

	//bi-directional many-to-one association to Proyecto
	@ManyToOne
	@JoinColumn(name="idProyecto")
	private Proyecto proyecto;

	public Estudiantexproyecto() {
	}

	public int getIdEstudxProy() {
		return this.idEstudxProy;
	}

	public void setIdEstudxProy(int idEstudxProy) {
		this.idEstudxProy = idEstudxProy;
	}

	public Estudiante getEstudiante() {
		return this.estudiante;
	}

	public void setEstudiante(Estudiante estudiante) {
		this.estudiante = estudiante;
	}

	public Proyecto getProyecto() {
		return this.proyecto;
	}

	public void setProyecto(Proyecto proyecto) {
		this.proyecto = proyecto;
	}

}