package espectaculo;

import java.io.IOException;
import java.util.Date;

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
		String plataforma = request.getParameter("plataformaEspectaculo");
		System.out.println(plataforma);
		String artista = "aRose"; //pasar artista con el q ingresó al sistema
		String nombre = request.getParameter("nomEspectaculo");
		String descripcion = request.getParameter("descEspectaculo");
		int duracion = Integer.valueOf(request.getParameter("durEspectaculo"));
		int espectadoresMin= Integer.valueOf(request.getParameter("espectadoresMin"));
		int espectadoresMax= Integer.valueOf(request.getParameter("espectadoresMax"));
		String url = request.getParameter("urlEspectaculo");
		int costo = Integer.valueOf(request.getParameter("costoEspectaculo"));
		Date fechaAlta = new Date();
		Fabrica fabrica = Fabrica.getInstancia();
		IControladorEspectaculo iconE = fabrica.getIControladorEspectaculo();
		DtEspectaculo dte = new DtEspectaculo(artista, plataforma, nombre, descripcion, duracion, espectadoresMin, espectadoresMax, url, costo, fechaAlta);
		RequestDispatcher rd;
		if(request.getParameter("boton").equals("alta")) {
			try {
				iconE.altaEspectaculo(dte, plataforma);
			} catch (EspectaculoRepetidoExcepcion e) {
				request.setAttribute("mensaje", e.getMessage());
			}
			request.setAttribute("mensaje", "Se ha ingresado correctamente al sistema, el espectáculo");
		}
		rd = request.getRequestDispatcher("/notificacion.jsp");
		rd.forward(request, response);
		doGet(request, response);
	}

}