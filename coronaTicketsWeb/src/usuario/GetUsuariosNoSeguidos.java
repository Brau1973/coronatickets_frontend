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

import publicadores.ControladorUsuarioPublish;
import publicadores.ControladorUsuarioPublishService;
import publicadores.ControladorUsuarioPublishServiceLocator;
import publicadores.DtUsuario;

@WebServlet("/GetUsuariosNoSeguidos")
public class GetUsuariosNoSeguidos extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public GetUsuariosNoSeguidos() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ArrayList<DtUsuario> listUsuariosNoSeguidos = null;
		HttpSession sesion = request.getSession();
		DtUsuario dtUsuLogueado = (DtUsuario) sesion.getAttribute("user");
		//	  for (String nomUsuario : listUsuariosNoSeguidos) {
		//		  System.out.println(nomUsuario);
		//	  }
		
		try {
			listUsuariosNoSeguidos = obtenerUsuariosNoSeguidos(dtUsuLogueado.getNickname());
		} catch (Exception e) {
			e.printStackTrace();
		}
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

	public ArrayList<DtUsuario> obtenerUsuariosNoSeguidos(String userName) throws Exception {
		ControladorUsuarioPublishService cps = new ControladorUsuarioPublishServiceLocator();
		ControladorUsuarioPublish port = cps.getControladorUsuarioPublishPort();
		DtUsuario[] usuarios = port.listarUsuariosNoSeguidos(userName);
		ArrayList<DtUsuario> lstUsuarios = new ArrayList<>();
		for (int i = 0; i < usuarios.length; ++i) {
			lstUsuarios.add(usuarios[i]);
		}
		return lstUsuarios;
	}

}