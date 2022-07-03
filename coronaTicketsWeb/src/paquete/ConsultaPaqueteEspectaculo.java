package paquete;

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

import publicadores.ControladorPaquetePublish;
import publicadores.ControladorPaquetePublishService;
import publicadores.ControladorPaquetePublishServiceLocator;
import publicadores.ControladorPlataformaPublish;
import publicadores.ControladorPlataformaPublishService;
import publicadores.ControladorPlataformaPublishServiceLocator;
import publicadores.DtEspectaculo;
import publicadores.DtPaqueteEspectaculos;
import publicadores.DtPlataforma;

@WebServlet("/ConsultaPaqueteEspectaculo")
public class ConsultaPaqueteEspectaculo extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public ConsultaPaqueteEspectaculo() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String strPaquete = request.getParameter("nomPaquete");
		String strEspectaculo = "";
		List<DtEspectaculo> listDtEspectaculos = new ArrayList<DtEspectaculo>();
		DtPaqueteEspectaculos dtPaqueteEsp = null;
		HttpSession session = request.getSession();
		RequestDispatcher rd;
		if (strPaquete != null) {
			if (request.getParameter("boton").equals("selPaquete")) {
				//Buscar paquete
				try {
					dtPaqueteEsp = getInfoPaquete(strPaquete);
				} catch (Exception e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				// Paquete.getEspectaculos...?
				try {
					listDtEspectaculos = getEspectaculosDePaquete(strPaquete);
				} catch (Exception e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				
				session.setAttribute("paqueteSelected", strPaquete);
			}
		}
		session.setAttribute("paqueteEspec", dtPaqueteEsp);
		session.setAttribute("listEspecPaquete", listDtEspectaculos);
		session.setAttribute("paqueteSelected", strPaquete);
		rd = request.getRequestDispatcher("/consultaPaqueteEspectaculo.jsp");
		rd.forward(request, response);
	}
	
	public DtPaqueteEspectaculos getInfoPaquete(String nomPaquete) throws Exception {
		ControladorPaquetePublishService cps = new ControladorPaquetePublishServiceLocator();
		ControladorPaquetePublish port = cps.getControladorPaquetePublishPort();
		DtPaqueteEspectaculos paquete = port.getInfoPaquete(nomPaquete);
		return paquete;
	}
	
	public ArrayList<DtEspectaculo> getEspectaculosDePaquete(String nomPaquete) throws Exception {
		ControladorPaquetePublishService cps = new ControladorPaquetePublishServiceLocator();
		ControladorPaquetePublish port = cps.getControladorPaquetePublishPort();
		DtEspectaculo[] espectaculos = port.getEspectaculosDePaquete(nomPaquete);
		ArrayList<DtEspectaculo> lstEspectaculos = new ArrayList<>();
		for (int i = 0; i < espectaculos.length; ++i) {
			lstEspectaculos.add(espectaculos[i]);
		}
		return lstEspectaculos;
	}
}