package espectaculo;

import java.io.IOException;
import java.util.Date;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import datatypes.DtEspectaculo;
import datatypes.DtUsuario;
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

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		IControladorEspectaculo iconE = Fabrica.getInstancia().getIControladorEspectaculo();
		String plataforma = request.getParameter("nomPlataforma");
		HttpSession sesion = request.getSession();
		DtUsuario dtUsuLogueado = (DtUsuario) sesion.getAttribute("user");
		String artista = dtUsuLogueado.getNickname(); // pasar artista con el q ingresó al sistema
		String nombre = request.getParameter("nomEspectaculo");
		String descripcion = request.getParameter("descEspectaculo");
		Integer duracion = Integer.valueOf(request.getParameter("durEspectaculo"));
		Integer espectadoresMin = Integer.valueOf(request.getParameter("espectadoresMin"));
		Integer espectadoresMax = Integer.valueOf(request.getParameter("espectadoresMax"));
		String url = request.getParameter("urlEspectaculo");
		Integer costo = Integer.valueOf(request.getParameter("costoEspectaculo"));
		Date fechaAlta = new Date();
		DtEspectaculo dte = new DtEspectaculo(artista, plataforma, nombre, descripcion, duracion, espectadoresMin,
				espectadoresMax, url, costo, fechaAlta);
		RequestDispatcher rd;
		try {
			iconE.altaEspectaculo(dte, plataforma);
			request.setAttribute("mensaje", "Se ha ingresado correctamente al sistema, el espectculo");
		} catch (Exception e) {
			//request.setAttribute("mensaje", e.getMessage());
			e.printStackTrace();
		}
		rd = request.getRequestDispatcher("/notificacion.jsp");
		rd.forward(request, response);
	}
}
