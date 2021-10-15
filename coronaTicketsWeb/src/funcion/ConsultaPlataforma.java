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
		String strEs = request.getParameter("btnConsultaFuncion");

		try{
			listPlataformas = iconP.listarPlataformasStr();
		}catch(Exception e){
			e.printStackTrace();
		}

		RequestDispatcher rd;
		if(strEs.equals("opConsultaFuncion")){
			request.setAttribute("plataformas", listPlataformas);
			rd = request.getRequestDispatcher("/consultaFuncionEspectaculo.jsp");
		}else{
			rd = request.getRequestDispatcher("/index.jsp");
		}
		rd.forward(request, response);
	}


	private void ListarPlataformas(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{ // ver desp
		String action = request.getServletPath();
		try{
			switch(action){
			case "/consultarPlataforma":
				// ListarPlataformas(request, response);
				break;
			default:
				RequestDispatcher dispatcher = request.getRequestDispatcher("index.jsp");
				dispatcher.forward(request, response);
				break;
			}
		}catch(Exception ex){
			throw new ServletException(ex);
		}

	}
}
