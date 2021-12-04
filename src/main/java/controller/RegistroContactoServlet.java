package controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.Contacto;
import model.DAO.ContactoDAOImpl;

/**
 * Servlet implementation class RegistroContacto
 */
@WebServlet("/RegistroContacto")
public class RegistroContactoServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RegistroContactoServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		getServletContext().getRequestDispatcher("/views/contacto.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String nombre = request.getParameter("nombre");
		String apellido = request.getParameter("apellido");
		String telefono = request.getParameter("telefono");
		String correo = request.getParameter("correo");
		
		ContactoDAOImpl cDAO = new ContactoDAOImpl();
		Contacto c = new Contacto();
		c.setNombre(nombre);
		c.setApellido(apellido);
		c.setTelefono(telefono);
		c.setCorreo(correo);
		
		cDAO.create(c);
		
		List<Contacto> contactos = cDAO.readAll();
		System.out.print(cDAO.readAll());
		
		
		
		getServletContext().getRequestDispatcher("/views/contacto.jsp").forward(request, response);
	
		
		
	}

}
