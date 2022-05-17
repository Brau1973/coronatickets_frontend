package plataforma;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import publicadores.DtPlataforma;
import publicadores.ControladorPlataformaPublish;
import publicadores.ControladorPlataformaPublishService;
import publicadores.ControladorPlataformaPublishServiceLocator;

/**
 * Servlet implementation class ConsultaPlataformas
 */
@WebServlet("/ConsultaPlataformas")
public class ConsultaPlataformas extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ConsultaPlataformas() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ArrayList<DtPlataforma> listPlataformas = new ArrayList<>();
		try {
			listPlataformas = obtenerPlataformasStr();
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		RequestDispatcher rd;
		HttpSession session = request.getSession();
		session.setAttribute("allPlataformas", listPlataformas);
		
		String page = (String) request.getParameter("pageNavega");
		switch (page) {
		case "MenuConsultaPlataformas":
			rd = request.getRequestDispatcher("/consultaPlataformas.jsp");
			break;
		case "MenuConsultaEspectaculoNew":
			rd = request.getRequestDispatcher("/consultaEspectaculosNew.jsp");
			break;

		default:
			rd = request.getRequestDispatcher("/index.jsp");
			break;
		}
		rd.forward(request, response);
	}

	public ArrayList<DtPlataforma> obtenerPlataformasStr() throws Exception {
		ControladorPlataformaPublishService cps = new ControladorPlataformaPublishServiceLocator();
		ControladorPlataformaPublish port = cps.getControladorPlataformaPublishPort();
		DtPlataforma[] plataformas = port.listarPlataformas();
		ArrayList<DtPlataforma> lstPlataforma = new ArrayList<>();
		for (int i = 0; i < plataformas.length; ++i) {
			lstPlataforma.add(plataformas[i]);
		}
		return lstPlataforma;
	}

}
