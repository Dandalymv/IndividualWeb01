package controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mysql.cj.x.protobuf.MysqlxDatatypes.Array;

import model.Oficina;
import model.DAO.OficinaDAOImpl;

/**
 * Servlet implementation class ActualizarOficina
 */
@WebServlet("/ActualizarOficina")
public class ActualizarOficinaServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ActualizarOficinaServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int id = Integer.parseInt(request.getParameter("id"));
		OficinaDAOImpl listDAO = new OficinaDAOImpl();
		Oficina o = listDAO.readOne(id);
		listDAO.readOne(id);
		
		ArrayList<Oficina> offices = new ArrayList<Oficina>();
		
		offices.add(o);
		
		request.setAttribute("offices", offices);
		
		
		getServletContext().getRequestDispatcher("/views/actualizarOficina.jsp").forward(request, response);
		
	}

}
