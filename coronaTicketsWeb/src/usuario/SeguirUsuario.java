package usuario;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import publicadores.DtUsuario;

@WebServlet("/SeguirUsuario")
public class SeguirUsuario extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public SeguirUsuario() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
	//	IControladorUsuario iconU = Fabrica.getInstancia().getIControladorUsuario();
		HttpSession sesion = request.getSession();
		DtUsuario dtUsuLogueado = (DtUsuario) sesion.getAttribute("user");
		String usuarioASeguir = request.getParameter("nomUsuario");
		RequestDispatcher rd;
		//iconU.seguirUsuario(dtUsuLogueado.getNickname(), usuarioASeguir);
		request.setAttribute("mensaje", "Ahora sigues al usuario " + usuarioASeguir);
		rd = request.getRequestDispatcher("/notificacion.jsp");
		rd.forward(request, response);
	}
}