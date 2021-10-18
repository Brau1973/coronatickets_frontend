package usuario;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import datatypes.DtUsuario;
import interfaces.Fabrica;
import interfaces.IControladorUsuario;

/**
 * Servlet implementation class Login
 */
@WebServlet("/Login")
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Login() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		RequestDispatcher rd = request.getRequestDispatcher("/index.jsp") ;
		HttpSession session = request.getSession();
		session.setAttribute("user", null);
		rd.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		RequestDispatcher rd = request.getRequestDispatcher("login.jsp") ;
		String userName = request.getParameter("user_name");
		String userPass = request.getParameter("user_pass");
		System.out.println("Login servlet");
		IControladorUsuario iconU = Fabrica.getInstancia().getIControladorUsuario();
		DtUsuario dt= iconU.getLoginUsuario(userName);
		if(dt != null) {
			HttpSession session = request.getSession();
			session.setAttribute("user", dt);
			session.setAttribute("loged", true);
			rd = request.getRequestDispatcher("/index.jsp");
		}else {
			System.out.println("No existe usuario y contraseña.");
		}
		rd.forward(request, response);
	}

}
