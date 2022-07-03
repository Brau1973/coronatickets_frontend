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
import publicadores.DtPaqueteEspectaculos;
import publicadores.DtPlataforma;

@WebServlet("/DatosConsultaPaquete")
public class DatosConsultaPaquete extends HttpServlet{
	private static final long serialVersionUID = 1L;

	public DatosConsultaPaquete(){
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
	//	IControladorPaquete iconPaq = Fabrica.getInstancia().getIControladorPaquete();
		List<DtPaqueteEspectaculos> listPaquetes = new ArrayList<DtPaqueteEspectaculos>();
		RequestDispatcher rd;
		
		try {
			listPaquetes = obtenerPaquetes();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		HttpSession s = request.getSession();
		s.setAttribute("allPaquetes", listPaquetes);
		String page = (String) request.getParameter("pageNavega");
		switch(page){
		case "MenuConsultaPaqEspectaculo":
			rd = request.getRequestDispatcher("/consultaPaqueteEspectaculo.jsp");
		rd.forward(request, response);
			break;
		default:
			rd = request.getRequestDispatcher("/index.jsp");
			break;
		}
		rd = request.getRequestDispatcher("/consultaPaqueteEspectaculo.jsp");
		rd.forward(request, response);

	}
	
	public ArrayList<DtPaqueteEspectaculos> obtenerPaquetes() throws Exception {
		ControladorPaquetePublishService cps = new ControladorPaquetePublishServiceLocator();
		ControladorPaquetePublish port = cps.getControladorPaquetePublishPort();
		DtPaqueteEspectaculos[] paquetes = port.obtenerPaquetes();
		ArrayList<DtPaqueteEspectaculos> lstPaquetes = new ArrayList<>();
		for (int i = 0; i < paquetes.length; ++i) {
			lstPaquetes.add(paquetes[i]);
		}
		return lstPaquetes;
	}
	
}