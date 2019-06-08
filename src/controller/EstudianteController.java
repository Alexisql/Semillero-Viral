package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.hibernate.boot.spi.AdditionalJaxbMappingProducer;

import entities.Administrador;
import entities.Estudiante;
import model.AdministradorDao;
import model.EstudianteDao;

/**
 * Servlet implementation class EstudianteController
 */
@WebServlet("/EstudianteController")
public class EstudianteController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public EstudianteController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession(true);
		String codigo = request.getParameter("codigo");
		if(request.getParameter("ed").contentEquals("1")) {
			EstudianteDao eDao = new EstudianteDao();
			Estudiante e = eDao.find(codigo);	
			request.setAttribute("estudiante", e);
			request.getRequestDispatcher("/editEstudiante.jsp").forward(request, response);//RequestDispatcher is used to send the control to the invoked page.
			
		}else {
		
		String adminSession = (String) session.getAttribute("admin");
		AdministradorDao adminDao = new AdministradorDao();
		Administrador a = adminDao.find(adminSession);
		EstudianteDao eDao = new EstudianteDao();
		eDao.delete(eDao.find(codigo));
		response.sendRedirect("admin.jsp");
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		HttpSession session = request.getSession(true);
		
		String nombre = request.getParameter("nombre");
		String codigo = request.getParameter("codigo");
		String telefono = request.getParameter("telefono");
		String cargo = request.getParameter("cargo");
		String email = request.getParameter("email");
		String rol = request.getParameter("rol");
		
		String adminSession = (String) session.getAttribute("admin");
		AdministradorDao adminDao = new AdministradorDao();
		Administrador a = adminDao.find(adminSession);
		EstudianteDao eDao = new EstudianteDao();
		Estudiante estu = new Estudiante();	
		
		estu.setNombre(nombre);
		estu.setCodigo(codigo);
		estu.setTelefono(telefono);
		estu.setCargo(cargo);
		estu.setCorreo(email);
		estu.setRol(rol);
		estu.setAdministrador(a);
		
		boolean existe = eDao.existe(estu);
		if(!existe) {
			eDao.insert(estu);
		}else {
			eDao.update(estu);
		}
		
		request.setAttribute("msgResultado", "El estudiante ha sido creado correctamente"); //with setAttribute() you can define a "key" and value pair so that you can get it in future using getAttribute("key")
		response.sendRedirect("admin.jsp");		
	}

}
