package plataforma;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import publicadores.DtPlataforma;
import publicadores.ControladorPlataformaPublish;
import publicadores.ControladorPlataformaPublishService;
import publicadores.ControladorPlataformaPublishServiceLocator;

@WebServlet("/AltaPlataforma")
public class AltaPlataforma extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public AltaPlataforma() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String nombre = request.getParameter("nomPla");
		String desc = request.getParameter("descPla");
		String url = request.getParameter("urlPla");

		DtPlataforma dtp = new DtPlataforma(nombre, desc, url, null);
		try {
			agregarPlataforma(dtp);
		} catch (Exception e) {
			e.printStackTrace();
		}

		RequestDispatcher rd;
		request.setAttribute("mensaje", "Se ha ingresado correctamente la Plataforma al sistema.");
		rd = request.getRequestDispatcher("/notificacion.jsp");
		rd.forward(request, response);
	}

	// OPERACIÓN CONSUMIDA
	public void agregarPlataforma(DtPlataforma dtp) throws Exception {
		ControladorPlataformaPublishService cps = new ControladorPlataformaPublishServiceLocator();
		ControladorPlataformaPublish port = cps.getControladorPlataformaPublishPort();
		port.altaPlataforma(dtp);
	}
}