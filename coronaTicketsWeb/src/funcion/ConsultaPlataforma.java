package funcion;

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

import publicadores.ControladorPlataformaPublish;
import publicadores.ControladorPlataformaPublishService;
import publicadores.ControladorPlataformaPublishServiceLocator;

@WebServlet("/ConsultaPlataforma")
public class ConsultaPlataforma extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public ConsultaPlataforma() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String strEs = request.getParameter("btnOpcion");
		ArrayList<String> listPlataformas = null;
		try {
			listPlataformas = obtenerPlataformasStr();
		} catch (Exception e) {
			e.printStackTrace();
		}

		RequestDispatcher rd;
		HttpSession session = request.getSession();
		session.setAttribute("allPlataformas", listPlataformas);
		switch (strEs) {
		case "opConsultaFuncionEsp":
			rd = request.getRequestDispatcher("/consultaFuncionEspectaculo.jsp");
			rd.forward(request, response);
			break;
		default:
			rd = request.getRequestDispatcher("/index.jsp");
			rd.forward(request, response);
			break;
		}
	}

	public ArrayList<String> obtenerPlataformasStr() throws Exception {
		ControladorPlataformaPublishService cps = new ControladorPlataformaPublishServiceLocator();
		ControladorPlataformaPublish port = cps.getControladorPlataformaPublishPort();
		String[] plataformas = port.listarPlataformasStr();
		ArrayList<String> lstPlataforma = new ArrayList<>();
		for (int i = 0; i < plataformas.length; ++i) {
			lstPlataforma.add(plataformas[i]);
		}
		return lstPlataforma;
	}
}
