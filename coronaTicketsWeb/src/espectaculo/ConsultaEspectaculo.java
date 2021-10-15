package espectaculo;

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

import datatypes.DtEspectaculo;
import datatypes.DtFuncion;
import datatypes.DtPaqueteEspectaculo;
import interfaces.Fabrica;
import interfaces.IControladorEspectaculo;
import interfaces.IControladorPlataforma;
import interfaces.IControladorFuncion;
import interfaces.IControladorPaquete;

/**
 * Servlet implementation class ConsultaEspectaculo
 */
@WebServlet("/ConsultaEspectaculo")
public class ConsultaEspectaculo extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public ConsultaEspectaculo() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		IControladorEspectaculo iconE = Fabrica.getInstancia().getIControladorEspectaculo();
		//IControladorFuncion iconF = Fabrica.getInstancia().getIControladorFuncion();
		//IControladorPaquete iconPq = Fabrica.getInstancia().getIControladorPaquete();
		//String dtEsp = null;
		System.out.println("Servlet consultaEspectaculo");
		String strPlataforma = request.getParameter("nomPlataforma");
		String strEspectaculo = "";
		List<DtEspectaculo> listEspectaculos = new ArrayList<DtEspectaculo>();
		List<DtFuncion> dtFun = new ArrayList<DtFuncion>();
		List<DtPaqueteEspectaculo> dtPaq = new ArrayList<DtPaqueteEspectaculo>();
		RequestDispatcher rd;
		if (strPlataforma != null) {
			if (request.getParameter("boton").equals("botonPlataformas")) {
				listEspectaculos = iconE.listarEspectaculos(strPlataforma);
				strEspectaculo = request.getParameter("nomEsp");
			} else if (request.getParameter("boton").equals("botonEspectaculos")) {
				listEspectaculos = iconE.listarEspectaculos(strPlataforma);
				strEspectaculo = request.getParameter("nomEsp");
				dtFun = iconE.obtenerEspectaculo(strEspectaculo).getFuncionesDt();
				dtPaq = iconE.obtenerEspectaculo(strEspectaculo).getPaqueteEspectaculoDt();
			}
		}
		HttpSession s = request.getSession();
	     s.setAttribute("allEspectaculos", listEspectaculos);
	     s.setAttribute("plataformaSelected", strPlataforma);
	     s.setAttribute("espectaculoSelected", strEspectaculo);
	     s.setAttribute("funciones", dtFun);
	     s.setAttribute("paquetes", dtPaq);
		rd = request.getRequestDispatcher("/consultaEspectaculo.jsp");
		rd.forward(request, response);
	}

}
