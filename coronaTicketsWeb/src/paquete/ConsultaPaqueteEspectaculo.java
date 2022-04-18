package paquete;

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

import publicadores.DtEspectaculo;
import publicadores.DtPaqueteEspectaculo;
//import interfaces.Fabrica;
//import interfaces.IControladorEspectaculo;
//import interfaces.IControladorPaquete;


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
	//	IControladorEspectaculo iconE = Fabrica.getInstancia().getIControladorEspectaculo();
	//	IControladorPaquete iconPaq = Fabrica.getInstancia().getIControladorPaquete();
		String strPaquete = request.getParameter("nomPaquete");
	 String strEspectaculo = "";
		//List<Espectaculo> listEspectaculos = new ArrayList<Espectaculo>();
		List<DtEspectaculo> listDtEspectaculos = new ArrayList<DtEspectaculo>();

		//PaqueteEspectaculos listPaquetes = new PaqueteEspectaculos();
		DtPaqueteEspectaculo dtPaqueteEsp = null;

		RequestDispatcher rd;
		if(strPaquete != null){
			if(request.getParameter("boton").equals("selPaquete")){

			strEspectaculo = request.getParameter("nomEsp");
				// listFunciones = iconE.obtenerEspectaculo(strEspectaculo).getFuncionesDt();
				// listDtEspectaculos = iconE.listarEspectaculos("Youtube");

			//	ManejadorPaquete mP = ManejadorPaquete.getInstancia();
		//		listPaquetes = mP.buscarPaquete(strPaquete);
		//		dtPaqueteEsp = new DtPaqueteEspectaculo(listPaquetes.getNombre(), listPaquetes.getDescripcion(), listPaquetes.getFechaInicio(), listPaquetes.getFechaFin(), listPaquetes.getFechaAlta(), listPaquetes.getDescuento());

			//	listDtEspectaculos = iconPaq.mapEntityToDt(listPaquetes).getEspectaculos();
				// listEspectaculos = listPaquetes.getEspectaculos();
				// listDtEspectaculos=listPaquetess.getEspectaculos();
				// listDtEspectaculos=new DtEspectaculo(listEspectaculos.ge, plataforma, nombre, descripcion, duracion, cantMin, cantMax, url, costo, registro)
				//session.setAttribute("paqueteSelected", strPaquete);
			}
		}
		HttpSession session = request.getSession();
		session.setAttribute("paquetesEspec", dtPaqueteEsp);
		session.setAttribute("listEspecPaquete", listDtEspectaculos);
		session.setAttribute("paqueteSelected", strPaquete);
		rd = request.getRequestDispatcher("/consultaPaqueteEspectaculo.jsp");
		rd.forward(request, response);
	}
}