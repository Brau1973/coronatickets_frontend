package funcion;

import java.awt.image.BufferedImage;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Base64;
import java.util.List;

import javax.imageio.ImageIO;
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
		IControladorEspectaculo iconE = Fabrica.getInstancia().getIControladorEspectaculo();
		String strPlataforma = request.getParameter("nomPlataforma");
		String strEspectaculo = request.getParameter("nomEspectaculo");
		List<DtEspectaculo> listEspectaculosDt = new ArrayList<DtEspectaculo>();

		List<DtFuncion> dtfun = new ArrayList<DtFuncion>();
		List<Artista> dtArt = new ArrayList<Artista>();
		Funcion func = new Funcion();
		request.setAttribute("espectaculos", listEspectaculosDt);
		request.setAttribute("funciones", dtfun);
		System.out.print("51 ");
		if(strPlataforma != null){
			listEspectaculosDt = iconE.listarEspectaculos(strPlataforma);
			request.setAttribute("espectaculos", listEspectaculosDt);
			System.out.print(" 6 ");
			if(request.getParameter("boton").equals("selEspectaculo")){
				dtfun = iconE.obtenerEspectaculo(strEspectaculo).getFuncionesDt();
				request.setAttribute("funciones", dtfun);
				System.out.print(" 7 ");
			}else if(request.getParameter("boton").equals("selFuncion")){
				System.out.print("8 ");
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
				BufferedImage image = null;
				InputStream in = new ByteArrayInputStream(foto);
				try{
					image = ImageIO.read(in);
				}catch(IOException e1){
					e1.printStackTrace();
				}
				ByteArrayOutputStream output = new ByteArrayOutputStream();
				ImageIO.write(image, "jpg", output);
				String imageBase64 = Base64.getEncoder().encodeToString(output.toByteArray());
				request.setAttribute("mostrarFoto", imageBase64);
				System.out.print("9 ");
				RequestDispatcher rd;
				rd = request.getRequestDispatcher("/datosFunciones.jsp");
				rd.forward(request, response);
			}
		}
		System.out.print(" 10 ");
		request.setAttribute("espectaculos", listEspectaculosDt);
		RequestDispatcher rd;
		rd = request.getRequestDispatcher("/consultaFuncionEspectaculo.jsp");
		rd.forward(request, response);

	}
}
