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
import interfaces.IControladorUsuario;
import logica.Espectaculo;
import manejadores.ManejadorEspectaculo;

@WebServlet("/Consultas")
public class Consultas extends HttpServlet{
	private static final long serialVersionUID = 1L;

	public Consultas(){
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		IControladorUsuario iconU = Fabrica.getInstancia().getIControladorUsuario();
		List<String> listArtistas = new ArrayList<String>();
		ManejadorEspectaculo mE = ManejadorEspectaculo.getInstancia();
		List<Espectaculo> listEspectaculos = mE.obtenerEspectaculo();
		HttpSession session = request.getSession();
		try{
			listArtistas = iconU.listarNicknameArtistas();
		}catch(Exception e){
			e.printStackTrace();
		}
		session.setAttribute("usuario", listArtistas);
		session.setAttribute("espectaculo", listEspectaculos);
		 RequestDispatcher rd = request.getRequestDispatcher("/altaFuncionEspectaculo.jsp");
		rd.forward(request, response);
	}
}