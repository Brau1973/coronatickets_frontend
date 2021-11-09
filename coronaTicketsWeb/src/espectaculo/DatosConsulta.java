package espectaculo;

import java.io.IOException;

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

@WebServlet("/DatosConsulta")
public class DatosConsulta extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public DatosConsulta() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//List<String> listPlataformas = new ArrayList<String>();
		String[] listPlataformas = null;
		try {
			listPlataformas = consultaPlat();
		} catch (Exception e) {
			e.printStackTrace();
		}
		//  listPlataformas = iconP.listarPlataformasStr();
		RequestDispatcher rd;

		HttpSession ses = request.getSession();
		ses.setAttribute("allPlataformas", listPlataformas);// listPlataformas);
		String page = (String) request.getParameter("pageNavega");
		switch (page) {
		case "MenuConsultaEspectaculo":
			rd = request.getRequestDispatcher("/consultaEspectaculo.jsp");
			break;
		case "MenuAltaEspectaculo":
			rd = request.getRequestDispatcher("/altaEspectaculo.jsp");
			break;

		default:
			rd = request.getRequestDispatcher("/index.jsp");
			break;
		}
		rd.forward(request, response);
	}

	public String[] consultaPlat() throws Exception {
		ControladorPlataformaPublishService cps = new ControladorPlataformaPublishServiceLocator();
		ControladorPlataformaPublish port = cps.getControladorPlataformaPublishPort();
		return port.listarPlataformasStr();
	}
}
