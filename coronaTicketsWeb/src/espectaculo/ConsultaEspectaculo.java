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

import publicadores.DtEspectaculo;
import publicadores.DtFuncion;
import publicadores.DtPaqueteEspectaculos;
import publicadores.ControladorEspectaculoPublish;
import publicadores.ControladorEspectaculoPublishService;
import publicadores.ControladorEspectaculoPublishServiceLocator;

@WebServlet("/ConsultaEspectaculo")
public class ConsultaEspectaculo extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public ConsultaEspectaculo() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	//	IControladorEspectaculo iconE = Fabrica.getInstancia().getIControladorEspectaculo();
		System.out.println("Servlet consultaEspectaculo");
		String strPlataforma = request.getParameter("nomPlataforma");
		String strEspectaculo = "";
		List<DtEspectaculo> listEspectaculos = new ArrayList<DtEspectaculo>();
		List<DtFuncion> listFunciones = new ArrayList<DtFuncion>();
		List<DtPaqueteEspectaculos> listPaquetes = new ArrayList<DtPaqueteEspectaculos>();
		RequestDispatcher rd;
		if (strPlataforma != null) {
			if (request.getParameter("boton").equals("botonPlataformas")) {
				try {
					listEspectaculos = listarEspectaculos(strPlataforma);
				} catch (Exception e) {
					e.printStackTrace();
				}
				strEspectaculo = request.getParameter("nomEsp");
			} else if (request.getParameter("boton").equals("botonEspectaculos")) {
				try {
					listEspectaculos = listarEspectaculos(strPlataforma);
				} catch (Exception e) {
					e.printStackTrace();
				}
				strEspectaculo = request.getParameter("nomEsp");
				try {
					listFunciones = listarEspectaculoFunciones(strEspectaculo);
				} catch (Exception e) {
					e.printStackTrace();
				}
				try {
					listPaquetes = listEspectaculoPaquetes(strEspectaculo);
				} catch (Exception e) {
					e.printStackTrace();
				}

			}
		}
		 HttpSession s = request.getSession();
		 s.setAttribute("allEspectaculos", listEspectaculos);
	     s.setAttribute("plataformaSelected", strPlataforma);
	     s.setAttribute("espectaculoSelected", strEspectaculo);
	     s.setAttribute("funciones", listFunciones);
	     s.setAttribute("paquetes", listPaquetes);
		rd = request.getRequestDispatcher("/consultaEspectaculo.jsp");
		rd.forward(request, response);
	}
	
	// OPERACIÓN CONSUMIDA
	public List<DtEspectaculo> listarEspectaculos(String strPlataforma) throws Exception {
		ControladorEspectaculoPublishService cps = new ControladorEspectaculoPublishServiceLocator();
		ControladorEspectaculoPublish port = cps.getControladorEspectaculoPublishPort();
		DtEspectaculo[] arrayEspectaculos = port.listarEspectaculos(strPlataforma);
		
		List<DtEspectaculo> listEspectaculos = new ArrayList<DtEspectaculo>();
		for(int i = 0;i<arrayEspectaculos.length;i++) {
			listEspectaculos.add(arrayEspectaculos[i]);		
		}
		return listEspectaculos;
	}
	
	public List<DtFuncion> listarEspectaculoFunciones(String strEspectaculo) throws Exception {
		ControladorEspectaculoPublishService cps = new ControladorEspectaculoPublishServiceLocator();
		ControladorEspectaculoPublish port = cps.getControladorEspectaculoPublishPort();
		DtFuncion[] arrayFunciones = port.obtenerEspectaculoFunciones(strEspectaculo);
		
		List<DtFuncion> listFunciones = new ArrayList<DtFuncion>();
		for(int i = 0;i<arrayFunciones.length;i++) {
			listFunciones.add(arrayFunciones[i]);		
		}
		return listFunciones;
	}
	
	public List<DtPaqueteEspectaculos> listEspectaculoPaquetes(String strEspectaculo) throws Exception {
		ControladorEspectaculoPublishService cps = new ControladorEspectaculoPublishServiceLocator();
		ControladorEspectaculoPublish port = cps.getControladorEspectaculoPublishPort();
		DtPaqueteEspectaculos[] arrayPaquetesEspectaculo = port.obtenerEspectaculoPaquetes(strEspectaculo);
		
		List<DtPaqueteEspectaculos> listPaquetesEspectaculo = new ArrayList<DtPaqueteEspectaculos>();
		for(int i = 0;i<arrayPaquetesEspectaculo.length;i++) {
			listPaquetesEspectaculo.add(arrayPaquetesEspectaculo[i]);		
		}
		return listPaquetesEspectaculo;
	}
}