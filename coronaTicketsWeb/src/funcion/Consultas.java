package funcion;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import publicadores.ControladorEspectaculoPublish;
import publicadores.ControladorEspectaculoPublishService;
import publicadores.ControladorEspectaculoPublishServiceLocator;
import publicadores.ControladorUsuarioPublish;
import publicadores.ControladorUsuarioPublishService;
import publicadores.ControladorUsuarioPublishServiceLocator;
import publicadores.DtEspectaculo;
import publicadores.DtUsuario;

@WebServlet("/Consultas")
public class Consultas extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public Consultas() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		DtUsuario dtUserLogueado = (DtUsuario) session.getAttribute("user");
		ArrayList<DtEspectaculo> listEspectaculos = null;
		ArrayList<String> listArtistas = null;

		try {
			listEspectaculos = obtenerTodosEspectaculos(dtUserLogueado.getNickname());
		} catch (Exception e1) {
			e1.printStackTrace();
		}
		try {
			listArtistas = obtenerNicknameArtistas();
		} catch (Exception e) {
			e.printStackTrace();
		}

		session.setAttribute("usuario", listArtistas);
		session.setAttribute("espectaculo", listEspectaculos);
		RequestDispatcher rd = request.getRequestDispatcher("/altaFuncionEspectaculo.jsp");
		rd.forward(request, response);
	}

	public ArrayList<DtEspectaculo> obtenerTodosEspectaculos(String nickname) throws Exception {
		ControladorEspectaculoPublishService cps = new ControladorEspectaculoPublishServiceLocator();
		ControladorEspectaculoPublish port = cps.getControladorEspectaculoPublishPort();
		DtEspectaculo[] espectaculos = port.obtenerAllDtEspectaculos(nickname);
		ArrayList<DtEspectaculo> lstEspectaculo = new ArrayList<>();
		for (int i = 0; i < espectaculos.length; ++i) {
			lstEspectaculo.add(espectaculos[i]);
		}
		return lstEspectaculo;
	}

	public ArrayList<String> obtenerNicknameArtistas() throws Exception {
		ControladorUsuarioPublishService cps = new ControladorUsuarioPublishServiceLocator();
		ControladorUsuarioPublish port = cps.getControladorUsuarioPublishPort();
		String[] artistas = port.listarNicknameArtistas();
		ArrayList<String> lstArtistas = new ArrayList<>();
		for (int i = 0; i < artistas.length; ++i) {
			lstArtistas.add(artistas[i]);
		}
		return lstArtistas;
	}

}