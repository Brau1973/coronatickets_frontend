package usuario;

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
import interfaces.IControladorUsuario;

/**
 * Servlet implementation class DejarDeSeguirUsuario
 */
@WebServlet("/DejarDeSeguirUsuario")
public class DejarDeSeguirUsuario extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public DejarDeSeguirUsuario() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		IControladorUsuario iconU = Fabrica.getInstancia().getIControladorUsuario();
		String usuarioLogueado = ""; // OBTENER VALOR DE LA SESION
		String usuarioASeguir = request.getParameter("nomUsuario");
		RequestDispatcher rd;
		iconU.seguirUsuario(usuarioLogueado,usuarioASeguir);
		request.setAttribute("mensaje", "Ahora sigues al usuario "+usuarioASeguir);
		rd = request.getRequestDispatcher("/notificacion.jsp");
		rd.forward(request, response);
	}
}