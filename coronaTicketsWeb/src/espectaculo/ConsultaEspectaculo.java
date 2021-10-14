package espectaculo;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import datatypes.DtEspectaculo;
import datatypes.DtFuncion;
import datatypes.DtPaqueteEspectaculo;
import interfaces.Fabrica;
import interfaces.IControladorEspectaculo;
import interfaces.IControladorPlataforma;
import logica.Artista;
import logica.Funcion;
import manejadores.ManejadorFuncion;
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
		System.out.println("asdeadasdad");
		IControladorEspectaculo iconE = Fabrica.getInstancia().getIControladorEspectaculo();
		String strPlataforma = request.getParameter("nomPlataforma");
		String strEspectaculo = request.getParameter("nomEspectaculo");
		List<DtEspectaculo> listEspectaculosDt = new ArrayList<DtEspectaculo>();
		List<DtFuncion> listDtFuncion = new ArrayList<DtFuncion>();
		List<DtPaqueteEspectaculo> listDtPaquete = new ArrayList<DtPaqueteEspectaculo>();
		
		if(strPlataforma != null) {
		if(request.getParameter("boton").equals("btnPlataformas")){
			listEspectaculosDt = iconE.listarEspectaculos(strPlataforma);
			if(request.getParameter("boton").equals("btnEspectaculos")){
				listDtFuncion = iconE.obtenerEspectaculo(strEspectaculo).getFuncionesDt();
				listDtPaquete = iconE.obtenerEspectaculo(strEspectaculo).getPaqueteEspectaculoDt();
			}
		}
		}

		request.setAttribute("espectaculos", listEspectaculosDt);
		request.setAttribute("funciones", listDtFuncion);
		request.setAttribute("paquetes", listDtPaquete);
		response.sendRedirect("consultaEspectaculo.jsp");
		RequestDispatcher rd;
		rd = request.getRequestDispatcher("/consultaEspectaculo.jsp");
		rd.forward(request, response);
	
	}
}