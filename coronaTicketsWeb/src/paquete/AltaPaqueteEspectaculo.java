package paquete;

import java.io.IOException;
import java.util.Calendar;
import java.util.Date;
import java.util.GregorianCalendar;

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
import utils.DateFormatter;

/**
 * Servlet implementation class AltaPaqueteEspectaculo
 */
@WebServlet("/AltaPaqueteEspectaculo")
public class AltaPaqueteEspectaculo extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AltaPaqueteEspectaculo() {
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
		String nombre = request.getParameter("nomPaquete");
		String desc = request.getParameter("descripcionPaquete");
		String fechaInicio = request.getParameter("fechaInicioPaquete");
		String fechaFin = request.getParameter("fechaFinPaquete");
		Integer descuentoPaquete = Integer.valueOf(request.getParameter("descuentoPaquete"));
		
		Calendar fechaAlta = new GregorianCalendar();
		fechaAlta.setTime(new Date());
		
		DtPaqueteEspectaculos dtpaquete = new DtPaqueteEspectaculos(nombre, desc, DateFormatter.dateConverter(fechaInicio, 0, 0), DateFormatter.dateConverter(fechaFin, 0, 0),fechaAlta,descuentoPaquete.intValue(),null);
		try {
			agregarPaquete(dtpaquete);
			request.setAttribute("mensaje", "Paquete "+dtpaquete.getNombre()+" ingresado con exito.");
			RequestDispatcher rd;
			rd = request.getRequestDispatcher("/notificacion.jsp");
			rd.forward(request, response);
		} catch (Exception e) {
			request.setAttribute("mensaje", "El Paquete "+dtpaquete.getNombre()+" ya existe.");
			RequestDispatcher rd;
			rd = request.getRequestDispatcher("/notificacion.jsp");
			rd.forward(request, response);
			e.printStackTrace();
		}
	}
	
	// OPERACIÓN CONSUMIDA
	public void agregarPaquete(DtPaqueteEspectaculos dtpaquete) throws Exception {
		ControladorPaquetePublishService cpaquete = new ControladorPaquetePublishServiceLocator();
		ControladorPaquetePublish port = cpaquete.getControladorPaquetePublishPort();
		port.altaPaquete(dtpaquete);
	}

}
