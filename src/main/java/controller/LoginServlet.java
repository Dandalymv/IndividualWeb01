package controller;


import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.Usuario;



/**
 * Servlet implementation class Login
 */
@WebServlet("/Login")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		getServletContext().getRequestDispatcher("/views/login.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String usuario = request.getParameter("usuario");
		String password = request.getParameter("password");
		
		HttpSession sesion = request.getSession(true);
		Usuario u = new Usuario();
		u.setNombre("Usuario");
		u.setTipo("Cliente");
		u.setRun(123456789);
		sesion.setAttribute("usuario", u);
		
		
		
		if(usuario.equals("admin") && password.equals("1234")){
			//response.sendRedirect("Home");
			getServletContext().getRequestDispatcher("/views/contacto.jsp").forward(request, response);
			
		} else {
			getServletContext().getRequestDispatcher("/views/login.jsp").forward(request, response);
		}
		
	}

}
