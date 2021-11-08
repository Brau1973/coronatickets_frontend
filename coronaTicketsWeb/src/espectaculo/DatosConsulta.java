package espectaculo;

import java.io.IOException;
//import java.util.ArrayList;
//import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

//import interfaces.Fabrica;
//import interfaces.IControladorPlataforma;
//import publicadores.ControladorEspectaculoPublish;
//import publicadores.ControladorEspectaculoPublishService;
//import publicadores.ControladorEspectaculoPublishServiceLocator;
import publicadores.ControladorPlataformaPublish;
import publicadores.ControladorPlataformaPublishService;
import publicadores.ControladorPlataformaPublishServiceLocator;
//import publicadores.DtEspectaculo;

/**
 * Servlet implementation class DatosConsulta
 */
@WebServlet("/DatosConsulta")
public class DatosConsulta extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public DatosConsulta() {
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
//		IControladorPlataforma iconP = Fabrica.getInstancia().getIControladorPlataforma();
		//List<String> listPlataformas = new ArrayList<String>();
	String[] listPlataformas=null;
	try {
		listPlataformas = consultaPlat();
	} catch (Exception e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
		//  listPlataformas = iconP.listarPlataformasStr();
	      RequestDispatcher rd;
	     
	      HttpSession ses = request.getSession();
	      ses.setAttribute("allPlataformas",listPlataformas);// listPlataformas);
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
