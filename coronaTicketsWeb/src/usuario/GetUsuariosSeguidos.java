package usuario;

import java.io.IOException;
import java.util.ArrayList;

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

@WebServlet("/GetUsuariosSeguidos")
public class GetUsuariosSeguidos extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public GetUsuariosSeguidos() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ArrayList<DtUsuario> listUsuariosSeguidos = null;
		HttpSession sesion = request.getSession();
		DtUsuario dtUsuLogueado = (DtUsuario) sesion.getAttribute("user");

		try {
			listUsuariosSeguidos = obtenerUsuariosSeguidos(dtUsuLogueado.getNickname());
		} catch (Exception e) {
			e.printStackTrace();
		}

		RequestDispatcher rd;
		//	  for (String nomUsuario : listUsuariosSeguidos) {
		//		  System.out.println(nomUsuario);
		//	  }
		System.out.println(listUsuariosSeguidos);
		if (!listUsuariosSeguidos.isEmpty()) {
			request.setAttribute("usuariosSeguidos", listUsuariosSeguidos);
			rd = request.getRequestDispatcher("/dejarDeSeguirUsuario.jsp");
		} else {
			request.setAttribute("mensaje", "Estimado " + dtUsuLogueado.getNickname() + " , debe seguir a algun usuario antes de usar esta funcionalidad");
			rd = request.getRequestDispatcher("/notificacion.jsp");
		}
		rd.forward(request, response);
	}

	public ArrayList<DtUsuario> obtenerUsuariosSeguidos(String userName) throws Exception {
		ControladorUsuarioPublishService cps = new ControladorUsuarioPublishServiceLocator();
		ControladorUsuarioPublish port = cps.getControladorUsuarioPublishPort();
		DtUsuario[] usuarios = port.listarUsuariosSeguidos(userName);
		ArrayList<DtUsuario> lstUsuarios = new ArrayList<>();
		for (int i = 0; i < usuarios.length; ++i) {
			lstUsuarios.add(usuarios[i]);
		}
		return lstUsuarios;
	}

}