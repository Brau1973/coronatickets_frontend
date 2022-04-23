package usuario;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import publicadores.ControladorUsuarioPublish;
import publicadores.ControladorUsuarioPublishService;
import publicadores.ControladorUsuarioPublishServiceLocator;
import publicadores.DtUsuario;



@WebServlet("/DejarDeSeguirUsuario")
public class DejarDeSeguirUsuario extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public DejarDeSeguirUsuario() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession sesion = request.getSession();
		DtUsuario dtUsuLogueado = (DtUsuario) sesion.getAttribute("user");
		String nicknameUsuarioLogueado = dtUsuLogueado.getNickname();
		String nicknameUsuarioADejarDeSeguir = request.getParameter("nomUsuario");
		RequestDispatcher rd;
		try {
			UsuarioNoSeguir(nicknameUsuarioLogueado, nicknameUsuarioADejarDeSeguir);
		} catch (Exception e) {
			e.printStackTrace();
		}

		request.setAttribute("mensaje", "Ya no sigues a " + nicknameUsuarioADejarDeSeguir);
		rd = request.getRequestDispatcher("/notificacion.jsp");
		rd.forward(request, response);
	}

	public void UsuarioNoSeguir(String nicknameUsuarioLogueado, String nicknameUsuarioADejarDeSeguir) throws Exception {
		ControladorUsuarioPublishService cps = new ControladorUsuarioPublishServiceLocator();
		ControladorUsuarioPublish port = cps.getControladorUsuarioPublishPort();
		port.dejarDeSeguirUsuario(nicknameUsuarioLogueado, nicknameUsuarioADejarDeSeguir);
	}

}