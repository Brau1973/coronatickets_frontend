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

/**
 * Servlet implementation class AgregarEspectaculoAPaquete
 */
@WebServlet("/AgregarEspectaculoAPaquete")
public class AgregarEspectaculoAPaquete extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AgregarEspectaculoAPaquete() {
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
		HttpSession s = request.getSession();
		
		//-----------------GET PAQUETES---------------------
		List<DtPaqueteEspectaculos> listPaquetes = new ArrayList<DtPaqueteEspectaculos>();
		try {
			listPaquetes = obtenerPaquetes();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		s.setAttribute("allPaquetes", listPaquetes);
		
		// -----------------GET PLATAFORMAS-----------------
		ArrayList<DtPlataforma> listPlataformas = new ArrayList<>();
		try {
			listPlataformas = obtenerPlataformasStr();
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		s.setAttribute("allPlataformas", listPlataformas);
		
		// END
		RequestDispatcher rd;
		rd = request.getRequestDispatcher("/agregarEspectaculoAPaquete.jsp");
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
