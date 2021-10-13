package funcion;

import java.io.FileOutputStream;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import datatypes.DtEspectaculo;
import datatypes.DtFuncion;
import interfaces.Fabrica;
import interfaces.IControladorEspectaculo;
import logica.Artista;
import logica.Funcion;
import manejadores.ManejadorFuncion;

@WebServlet("/ConsultaFuncionEspectaculo")
public class ConsultaFuncionEspectaculo extends HttpServlet{
	private static final long serialVersionUID = 1L;

	public ConsultaFuncionEspectaculo(){
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	@SuppressWarnings("deprecation")
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		// System.out.print(strPlataforma + " PLATAFORMA ");
		// System.out.print(strEspectaculo + " esPEC ");
		IControladorEspectaculo iconE = Fabrica.getInstancia().getIControladorEspectaculo();
		String strPlataforma = request.getParameter("nomPlataforma");
		String strEspectaculo = request.getParameter("nomEspectaculo");
		List<DtEspectaculo> listEspectaculosDt = new ArrayList<DtEspectaculo>();

		List<DtFuncion> dtfun = new ArrayList<DtFuncion>();
		List<Artista> dtArt = new ArrayList<Artista>();
		Funcion func = new Funcion();

		if(strPlataforma != null){
			listEspectaculosDt = iconE.listarEspectaculos(strPlataforma);
			if(request.getParameter("boton").equals("selEspectaculo")){
				dtfun = iconE.obtenerEspectaculo(strEspectaculo).getFuncionesDt();
			}else if(request.getParameter("boton").equals("selFuncion")){
				String strFuncion = request.getParameter("nomFuncion");
				ManejadorFuncion mF = ManejadorFuncion.getInstancia();
				func = mF.buscarFuncion(strFuncion);
				SimpleDateFormat formato = new SimpleDateFormat("yyyy-MM-dd");
				int anio = func.getFecha().getYear() + 1900;
				int anio2 = func.getRegistro().getYear() + 1900;
				request.setAttribute("mostrarFunciones", "Nombre: " + func.getNombre() + "<br/>Fecha: " + func.getFecha().getDay() + "/" + func.getFecha().getMonth() + "/" + anio + "<br/>Hora: " + func.getHoraInicio() + "<br/>Registro: " + func.getRegistro().getDay() + "/" + func.getRegistro().getMonth() + "/" + anio2);
				dtArt = func.getArtistas();
				List<String> listArtistas = new ArrayList<String>();
				for(Artista artistai :dtArt){
					listArtistas.add(artistai.getNombre());
				}
				request.setAttribute("mostrarArtistas", listArtistas);

				byte[] foto = func.getImagen();
				String selectedImagePath = new String(foto);
				
				  try (FileOutputStream fos = new FileOutputStream(selectedImagePath)) {
			            fos.write(foto);
			        }
				
				request.setAttribute("mostrarFoto", selectedImagePath);

				RequestDispatcher rd;
				rd = request.getRequestDispatcher("/datosFunciones.jsp");
				rd.forward(request, response);
			}
		}

		request.setAttribute("espectaculos", listEspectaculosDt);
		request.setAttribute("funciones", dtfun);
		RequestDispatcher rd;
		rd = request.getRequestDispatcher("/consultaFuncionEspectaculo.jsp");
		rd.forward(request, response);
	}

}
