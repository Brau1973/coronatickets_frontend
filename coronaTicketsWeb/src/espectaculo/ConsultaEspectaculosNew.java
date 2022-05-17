
package espectaculo;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import publicadores.DtEspectaculo;
import publicadores.ControladorEspectaculoPublish;
import publicadores.ControladorEspectaculoPublishService;
import publicadores.ControladorEspectaculoPublishServiceLocator;


@WebServlet("/ConsultaEspectaculosNew")
public class ConsultaEspectaculosNew extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public ConsultaEspectaculosNew() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String strPlataforma = request.getParameter("nomPlataforma");
		ArrayList<DtEspectaculo> listEspectaculosDt = null;

		RequestDispatcher rd;
		if (strPlataforma != null) {
			if (request.getParameter("boton").equals("selPlataformas")) {
				try {
					listEspectaculosDt = obtenerEspectaculos(strPlataforma);	
				} catch (Exception e) {
					e.printStackTrace();
				}
			}
		}
		
		HttpSession session = request.getSession();
		session.setAttribute("espectaculos", listEspectaculosDt);
		session.setAttribute("plataformaSelected", strPlataforma);
		rd = request.getRequestDispatcher("/consultaEspectaculosNew.jsp");
		rd.forward(request, response);
	}

	public ArrayList<DtEspectaculo> obtenerEspectaculos(String strPlataforma) throws Exception {
		ControladorEspectaculoPublishService cps = new ControladorEspectaculoPublishServiceLocator();
		ControladorEspectaculoPublish port = cps.getControladorEspectaculoPublishPort();
		DtEspectaculo[] espectaculos = port.listarEspectaculos(strPlataforma);
		ArrayList<DtEspectaculo> lstEspectaculo = new ArrayList<>();
		for (int i = 0; i < espectaculos.length; ++i) {
			lstEspectaculo.add(espectaculos[i]);
		}
		return lstEspectaculo;
	}
}
