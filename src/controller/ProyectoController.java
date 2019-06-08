package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import entities.Administrador;
import entities.Estudiante;
import entities.Novedad;
import entities.Proyecto;
import model.AdministradorDao;
import model.EstudianteDao;
import model.NovedadDao;
import model.ProyectoDao;

/**
 * Servlet implementation class ProyectoController
 */
@WebServlet("/ProyectoController")
public class ProyectoController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public ProyectoController() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		HttpSession session = request.getSession(true);
		String id = request.getParameter("id");
		
		if(request.getParameter("ed").contentEquals("1")) {
			ProyectoDao pDao = new ProyectoDao();
			Proyecto p = pDao.find(Integer.parseInt(id));	
			request.setAttribute("proyecto", p);
			request.getRequestDispatcher("/editProyecto.jsp").forward(request, response);//RequestDispatcher is used to send the control to the invoked page.
			
		}else {
		
		String adminSession = (String) session.getAttribute("admin");
		AdministradorDao adminDao = new AdministradorDao();
		Administrador a = adminDao.find(adminSession);
		ProyectoDao pDao = new ProyectoDao();
		
		pDao.delete(pDao.find(Integer.parseInt(id)));
		response.sendRedirect("adminProyecto.jsp");
	}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		String op = request.getParameter("ed");
		Integer id = 0;
		if (op!=null) {
			id = Integer.parseInt(op);
		}
		
		HttpSession session = request.getSession(true);
		
		String adminSession = (String) session.getAttribute("admin");
		AdministradorDao adminDao = new AdministradorDao();
		Administrador a = adminDao.find(adminSession);
		ProyectoDao pDao = new ProyectoDao();
		String nombre = request.getParameter("nombre");
		String descripcion = request.getParameter("descripcion");
		String imagen = request.getParameter("file");
		String clasificacion = request.getParameter("clasificacion");
		
		if(id>0) {
			Proyecto p = pDao.find(id);
			p.setNombre(nombre);
			p.setDescripcion(descripcion);
			p.setImagen(imagen);
			p.setClasificacion(clasificacion);
			pDao.update(p);
			response.sendRedirect("adminProyecto.jsp");
		}else {
		
		Proyecto proyecto = new Proyecto();

		proyecto.setNombre(nombre);
		proyecto.setDescripcion(descripcion);
		proyecto.setImagen(imagen);
		proyecto.setClasificacion(clasificacion);
		proyecto.setAdministrador(a);
		
			pDao.insert(proyecto);
			request.setAttribute("msgResultado", "El estudiante ha sido creado correctamente");
			response.sendRedirect("adminProyecto.jsp");
		}

		
	}

}
