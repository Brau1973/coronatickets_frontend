package funcion;

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

import interfaces.Fabrica;
import interfaces.IControladorPlataforma;

@WebServlet("/ConsultaPlataforma")
public class ConsultaPlataforma extends HttpServlet{
	private static final long serialVersionUID = 1L;

	public ConsultaPlataforma(){
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		IControladorPlataforma iconP = Fabrica.getInstancia().getIControladorPlataforma();
		List<String> listPlataformas = new ArrayList<String>();
		String strEs = request.getParameter("btnOpcion");

		try{
			listPlataformas = iconP.listarPlataformasStr();
		}catch(Exception e){
			e.printStackTrace();
		}

		RequestDispatcher rd;
		HttpSession session = request.getSession();
		session.setAttribute("allPlataformas", listPlataformas);
		switch(strEs){
		case "opConsultaFuncionEsp":
			rd = request.getRequestDispatcher("/consultaFuncionEspectaculo.jsp");
			rd.forward(request, response);
			break;
		default:
			rd = request.getRequestDispatcher("/index.jsp");
			rd.forward(request, response);
			break;
		}
	}
}