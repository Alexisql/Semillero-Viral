package util;

import entities.Administrador;
import entities.Estudiante;
import model.AdministradorDao;
import model.EstudianteDao;

public class Prueba {
	public static void main(String[] args) {
		
		AdministradorDao aDao = new AdministradorDao();
		Administrador a = new Administrador();
		a.setCodigo("1151230");
		a.setNombre("Alexis");
		a.setContrasenia("123456");
		
		aDao.insert(a);
		
		/*
		EstudianteDao eDao = new EstudianteDao();
		Estudiante e = new Estudiante();
		e.setCodigo("1151232");
		e.setCargo("Estudiente");
		e.setCorreo("miguel@gmail.com");
		e.setNombre("Miguel");
		e.setRol("Diseñador");
		e.setTelefono("3122346785");
		e.setAdministrador(aDao.find("1151230"));
	
		eDao.update(e);*/
		/*
		EntityManagerFactory emf =
		Persistence.createEntityManagerFactory("mensajemodel");
		EntityManager em = emf.createEntityManager();
		try {
			em.getTransaction().begin();
			em.persist(c);
			em.getTransaction().commit();
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			em.close();
		}
*/
 /*
		// imprimir los clientes
		System.out.println("*****");
		clienteDao.obtenerClientes().forEach(System.out::println);
		*/
	}
}
