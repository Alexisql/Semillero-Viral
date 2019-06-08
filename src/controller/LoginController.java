package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import entities.Administrador;
import model.AdministradorDao;


/**
 * Servlet implementation class LoginController
 */
@WebServlet("/LoginController")
public class LoginController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.getSession().invalidate();
		response.sendRedirect("index.jsp");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		HttpSession session = request.getSession(true);
		
		
		String codigo = request.getParameter("codigo");
		String clave = request.getParameter("contrasenia");
		 
		Administrador admin = new Administrador(); //creating object for LoginBean class, which is a normal java class, contains just setters and getters. Bean classes are efficiently used in java to access user information wherever required in the application.
		 
		admin.setCodigo(codigo); //setting the username and password through the loginBean object then only you can get it in future.
		admin.setContrasenia(clave);
		 
		AdministradorDao adminDao = new AdministradorDao(); //creating object for LoginDao. This class contains main logic of the application.
		String userValidate = adminDao.validarAdmin(admin); //Calling authenticateUser function
		
		if(userValidate.contentEquals("SUCCESS")) {
			
			session.setAttribute("admin", codigo); 
			request.setAttribute("msgResultado", "Usuario " + admin.getNombre() + " bienvenido a la plataforma viral");
			response.sendRedirect("admin.jsp");
			
		} else { 
			session.setAttribute("error", userValidate);
			request.setAttribute("msgResultado", "Hay un error en las credenciales, puedes intentar nuevamente");
			response.sendRedirect("error.jsp");
		}
	}

}
