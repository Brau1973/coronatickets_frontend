package paquete;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import publicadores.ControladorPaquetePublish;
import publicadores.ControladorPaquetePublishService;
import publicadores.ControladorPaquetePublishServiceLocator;
import publicadores.DtPaqueteEspectaculos;

/**
 * Servlet implementation class AgregarEspectaculoAPaqueteOperation
 */
@WebServlet("/AgregarEspectaculoAPaqueteOperation")
public class AgregarEspectaculoAPaqueteOperation extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AgregarEspectaculoAPaqueteOperation() {
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
		String nombrePaquete = request.getParameter("basic-addon3-nomPaquete");
		String nombreEspectaculo = request.getParameter("nomEspectaculo");
		RequestDispatcher rd;
		
		try {
			agregarEspectaculoAPaquete(nombrePaquete,nombreEspectaculo);
			request.setAttribute("mensaje", "Espectaculo "+nombreEspectaculo+" agregado con exito al paquete "+nombrePaquete+".");
			rd = request.getRequestDispatcher("/notificacion.jsp");
			rd.forward(request, response);
		} catch (Exception e) {
			request.setAttribute("mensaje", "Error");
			rd = request.getRequestDispatcher("/notificacion.jsp");
			rd.forward(request, response);
			e.printStackTrace();
		}
	}
	
	public void agregarEspectaculoAPaquete(String nombrePaquete, String nombreEspectaculo) throws Exception {
		ControladorPaquetePublishService cpaquete = new ControladorPaquetePublishServiceLocator();
		ControladorPaquetePublish port = cpaquete.getControladorPaquetePublishPort();
		port.agregarEspectaculo(nombrePaquete, nombreEspectaculo);
	}

}
