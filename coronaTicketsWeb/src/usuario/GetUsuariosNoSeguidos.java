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

import datatypes.DtUsuario;
import interfaces.Fabrica;
import interfaces.IControladorPlataforma;
import interfaces.IControladorUsuario;

@WebServlet("/GetUsuariosNoSeguidos")
public class GetUsuariosNoSeguidos extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public GetUsuariosNoSeguidos() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
	  IControladorUsuario iconU = Fabrica.getInstancia().getIControladorUsuario();
	  List<String> listUsuariosNoSeguidos = new ArrayList<String>();
	  HttpSession session = request.getSession();
	  DtUsuario dtUsuLogueado = (DtUsuario) session.getAttribute("usuLogueado");
	  listUsuariosNoSeguidos = iconU.listarNicknameUsuariosNoSeguidos(dtUsuLogueado.getNickname());
	  RequestDispatcher rd;
	  for (String nomUsuario : listUsuariosNoSeguidos) {
		  System.out.println(nomUsuario);
	  }
	  System.out.println(listUsuariosNoSeguidos);
      request.setAttribute("usuariosNoSeguidos", listUsuariosNoSeguidos);
      rd = request.getRequestDispatcher("/seguirUsuario.jsp");
      rd.forward(request, response);
	}
	
}