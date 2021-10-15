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

@WebServlet("/GetUsuariosSeguidos")
public class GetUsuariosSeguidos extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public GetUsuariosSeguidos() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
	  IControladorUsuario iconU = Fabrica.getInstancia().getIControladorUsuario();
	  List<String> listUsuariosSeguidos = new ArrayList<String>();
	  HttpSession sesion = request.getSession();
	  DtUsuario dtUsuLogueado = (DtUsuario) sesion.getAttribute("user");
	  listUsuariosSeguidos = iconU.listarNicknameUsuariosSeguidos(dtUsuLogueado.getNickname());
	  RequestDispatcher rd;
	  for (String nomUsuario : listUsuariosSeguidos) {
		  System.out.println(nomUsuario);
	  }
	  System.out.println(listUsuariosSeguidos);
      request.setAttribute("usuariosSeguidos", listUsuariosSeguidos);
      rd = request.getRequestDispatcher("/dejarDeSeguirUsuario.jsp");
      rd.forward(request, response);
	}
	
}