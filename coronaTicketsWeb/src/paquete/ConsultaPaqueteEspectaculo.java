package paquete;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import datatypes.DtPaqueteEspectaculo;
import interfaces.Fabrica;
import interfaces.IControladorEspectaculo;
import logica.PaqueteEspectaculos;
import manejadores.ManejadorPaquete;

@WebServlet("/ConsultaPaqueteEspectaculo")
public class ConsultaPaqueteEspectaculo extends HttpServlet{
	private static final long serialVersionUID = 1L;

	public ConsultaPaqueteEspectaculo(){
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		IControladorEspectaculo iconE = Fabrica.getInstancia().getIControladorEspectaculo();
		String strPaquete = request.getParameter("nomPaquete");
		// String strEspectaculo = "";
		// List<DtEspectaculo> listEspectaculos = new ArrayList<DtEspectaculo>();
		DtPaqueteEspectaculo listPaquetess = null;
		PaqueteEspectaculos listPaquetes = new PaqueteEspectaculos();

		RequestDispatcher rd;
		if(strPaquete != null){
			if(request.getParameter("boton").equals("selPaquete")){
				// listEspectaculos = iconE.listarEspectaculos(strPaquete);
				// strEspectaculo = request.getParameter("nomEsp");
				// listFunciones = iconE.obtenerEspectaculo(strEspectaculo).getFuncionesDt();
				ManejadorPaquete mP = ManejadorPaquete.getInstancia();
				listPaquetes = mP.buscarPaquete(strPaquete);
				listPaquetess = new DtPaqueteEspectaculo(listPaquetes.getNombre(), listPaquetes.getDescripcion(), listPaquetes.getFechaInicio(), listPaquetes.getFechaFin(), listPaquetes.getFechaAlta(), listPaquetes.getDescuento());
				// session.setAttribute("paqueteSelected", strPaquete);
			}
		}
		HttpSession session = request.getSession();
		session.setAttribute("paquetesEspec", listPaquetess);
		session.setAttribute("paqueteSelected", strPaquete);
		rd = request.getRequestDispatcher("/consultaPaqueteEspectaculo.jsp");
		rd.forward(request, response);
	}
}