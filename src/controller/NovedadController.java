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

/**
 * Servlet implementation class NovedadController
 */
@WebServlet("/NovedadController")
public class NovedadController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public NovedadController() {
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

		if (request.getParameter("ed").contentEquals("1")) {
			NovedadDao nDao = new NovedadDao();
			Novedad n = nDao.find(Integer.parseInt(id));
			request.setAttribute("novedad", n);
			request.getRequestDispatcher("/editNovedad.jsp").forward(request, response);// RequestDispatcher is used to
																						// send the control to the
																						// invoked page.

		} else {

			String adminSession = (String) session.getAttribute("admin");
			AdministradorDao adminDao = new AdministradorDao();
			Administrador a = adminDao.find(adminSession);
			NovedadDao nDao = new NovedadDao();

			nDao.delete(nDao.find(Integer.parseInt(id)));
			response.sendRedirect("adminNovedad.jsp");
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
		if (op != null) {
			id = Integer.parseInt(op);
		}

		HttpSession session = request.getSession(true);
		String adminSession = (String) session.getAttribute("admin");
		AdministradorDao adminDao = new AdministradorDao();
		Administrador a = adminDao.find(adminSession);
		NovedadDao nDao = new NovedadDao();
		String titulo = request.getParameter("titulo");
		String descripcion = request.getParameter("descripcion");
		String imagen = request.getParameter("file");
		
		
		if(id>0) {
			Novedad n = nDao.find(id);
			n.setTitulo(titulo);
			n.setDescripcion(descripcion);
			n.setImagen(imagen);
			nDao.update(n);
			response.sendRedirect("adminNovedad.jsp");
		}else {
			Novedad novedad = new Novedad();
			novedad.setTitulo(titulo);
			novedad.setDescripcion(descripcion);
			novedad.setImagen(imagen);
			novedad.setAdministrador(a);
			nDao.insert(novedad);
			request.setAttribute("msgResultado", "El estudiante ha sido creado correctamente");
			response.sendRedirect("adminNovedad.jsp");
		}
	}

}
