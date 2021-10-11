package espectaculo;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import datatypes.DtEspectaculo;
import excepciones.EspectaculoRepetidoExcepcion;
import interfaces.Fabrica;
import interfaces.IControladorEspectaculo;
import interfaces.IControladorPlataforma;

/**
 * Servlet implementation class AltaEspectaculo
 */
@WebServlet("/AltaEspectaculo")
public class AltaEspectaculo extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public AltaEspectaculo() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	    IControladorEspectaculo iconE = Fabrica.getInstancia().getIControladorEspectaculo();
		String plataforma = request.getParameter("nomPlataforma");
		String artista = "aRose"; //pasar artista con el q ingresó al sistema
		String nombre = request.getParameter("nomEspectaculo");
		String descripcion = request.getParameter("descEspectaculo");
		Integer duracion = Integer.valueOf(request.getParameter("durEspectaculo"));
		Integer espectadoresMin= Integer.valueOf(request.getParameter("espectadoresMin"));
		Integer espectadoresMax= Integer.valueOf(request.getParameter("espectadoresMax"));
		String url = request.getParameter("urlEspectaculo");
		Integer costo = Integer.valueOf(request.getParameter("costoEspectaculo"));
		Date fechaAlta = new Date();
		DtEspectaculo dte = new DtEspectaculo(artista, plataforma, nombre, descripcion, duracion, espectadoresMin, espectadoresMax, url, costo, fechaAlta);
		RequestDispatcher rd;
			if(request.getParameter("boton").equals("alta")) {
				try {
					iconE.altaEspectaculo(dte, plataforma);
				} catch (EspectaculoRepetidoExcepcion e) {
					request.setAttribute("mensaje", e.getMessage());
				}
				request.setAttribute("mensaje", "Se ha ingresado correctamente al sistema, el espectáculo");
				rd = request.getRequestDispatcher("/notificacion.jsp");
				rd.forward(request, response);
			}
	}
}