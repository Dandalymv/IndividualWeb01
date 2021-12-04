package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.Oficina;
import model.Usuario;
import model.DAO.OficinaDAOImpl;

/**
 * Servlet implementation class ActualizarOficinaUpdate
 */
@WebServlet("/ActualizarOficinaUpdate")
public class ActualizarOficinaUpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ActualizarOficinaUpdateServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		getServletContext().getRequestDispatcher("/views/actualizarOficina.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		OficinaDAOImpl oDAO = new OficinaDAOImpl();
		Oficina o = new Oficina();
		
		int idoficinas = Integer.parseInt(request.getParameter("idoficinas"));
		String nombreOficina = request.getParameter("nombreOficina");
		String direccion = request.getParameter("direccion");
		String comuna = request.getParameter("comuna");
		String region = request.getParameter("region");
		String telefono = request.getParameter("telefono");
		String correo = request.getParameter("correo");
		String espacios = request.getParameter("espacios");
		
		o.setId(idoficinas);
		o.setNombreOficina(nombreOficina);
		o.setDireccion(direccion);
		o.setComuna(comuna);
		o.setRegion(region);
		o.setTelefono(telefono);
		o.setCorreo(correo);
		o.setEspacios(espacios);
		
		oDAO.update(o);
		
		response.sendRedirect("ListadoOficinas");
		
		
		
	}

}
