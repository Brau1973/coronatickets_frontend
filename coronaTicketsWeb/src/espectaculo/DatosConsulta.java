package espectaculo;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import interfaces.Fabrica;
import interfaces.IControladorPlataforma;

/**
 * Servlet implementation class DatosConsulta
 */
@WebServlet("/DatosConsulta")
public class DatosConsulta extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
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
		IControladorPlataforma iconP = Fabrica.getInstancia().getIControladorPlataforma();
		  List<String> listPlataformas = new ArrayList<String>();
		  listPlataformas = iconP.listarPlataformasStr();
	      RequestDispatcher rd;
	      request.setAttribute("plataformas", listPlataformas);
	      rd = request.getRequestDispatcher("/ConsultaEspectaculo");
	      rd.forward(request, response);
	}

}
