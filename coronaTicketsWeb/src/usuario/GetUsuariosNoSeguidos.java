package usuario;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import publicadores.DtUsuario;

@WebServlet("/GetUsuariosNoSeguidos")
public class GetUsuariosNoSeguidos extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public GetUsuariosNoSeguidos() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		List<String> listUsuariosNoSeguidos = new ArrayList<String>();
		HttpSession sesion = request.getSession();
		DtUsuario dtUsuLogueado = (DtUsuario) sesion.getAttribute("user");
		//  listUsuariosNoSeguidos = iconU.listarNicknameUsuariosNoSeguidos(dtUsuLogueado.getNickname());
		//	  for (String nomUsuario : listUsuariosNoSeguidos) {
		//		  System.out.println(nomUsuario);
		//	  }
		System.out.println(listUsuariosNoSeguidos);
		RequestDispatcher rd;
		if (!listUsuariosNoSeguidos.isEmpty()) {
			request.setAttribute("usuariosNoSeguidos", listUsuariosNoSeguidos);
			rd = request.getRequestDispatcher("/seguirUsuario.jsp");
		} else {
			request.setAttribute("mensaje", "Estimado " + dtUsuLogueado.getNickname() + " , usted ya sigue a todos los usuarios del sistema");
			rd = request.getRequestDispatcher("/notificacion.jsp");
		}
		rd.forward(request, response);
	}

}