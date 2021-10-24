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
import javax.servlet.http.HttpSession;

import datatypes.DtEspectaculo;
import datatypes.DtFuncion;
import interfaces.Fabrica;
import interfaces.IControladorEspectaculo;
import interfaces.IControladorFuncion;
import logica.Artista;
import logica.Funcion;

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
		IControladorEspectaculo iconE = Fabrica.getInstancia().getIControladorEspectaculo();
		IControladorFuncion iconF = Fabrica.getInstancia().getIControladorFuncion();
		
		String strPlataforma = request.getParameter("nomPlataforma");
		String strEspectaculo = "";
		Funcion func = new Funcion();
		
		List<DtEspectaculo> listEspectaculosDt = new ArrayList<DtEspectaculo>();
		List<DtFuncion> listFunciones = new ArrayList<DtFuncion>();
		List<Artista> dtArt = new ArrayList<Artista>();

		RequestDispatcher rd;
		if(strPlataforma != null){
			if(request.getParameter("boton").equals("selPlataformas")){
				listEspectaculosDt = iconE.listarEspectaculos(strPlataforma);
				strEspectaculo = request.getParameter("nomEspectaculo");

			}else if(request.getParameter("boton").equals("selEspectaculo")){
				listEspectaculosDt = iconE.listarEspectaculos(strPlataforma);
				strEspectaculo = request.getParameter("nomEspectaculo");
				listFunciones = iconE.obtenerEspectaculo(strEspectaculo).getFuncionesDt();
			request.setAttribute("funciones", listFunciones);

			}else if(request.getParameter("boton").equals("selFuncion")){
				String strFuncion = request.getParameter("nomFuncion");
				func = iconF.obtenerFuncion(strFuncion);
				SimpleDateFormat formato = new SimpleDateFormat("dd/MM/yyyy");

				request.setAttribute("mostrarFunciones", "Nombre: " + func.getNombre() + "<br/>Fecha: " + formato.format(func.getFecha()) + "<br/>Hora: " + func.getHoraInicio() + "<br/>Registro: " + formato.format(func.getRegistro()));
				dtArt = func.getArtistas();
				List<String> listArtistas = new ArrayList<String>();
				for(Artista artistai :dtArt){
					listArtistas.add(artistai.getNombre());
				}
				request.setAttribute("mostrarArtistas", listArtistas);
				if(func.getImagen() != null) {
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
				}
				rd = request.getRequestDispatcher("/datosFunciones.jsp");
				rd.forward(request, response);
			}
		}

		HttpSession session = request.getSession();
		session.setAttribute("espectaculos", listEspectaculosDt);
		session.setAttribute("plataformaSelected", strPlataforma);
		session.setAttribute("espectaculoSelected", strEspectaculo);
		session.setAttribute("funciones", listFunciones);
		rd = request.getRequestDispatcher("/consultaFuncionEspectaculo.jsp");
		rd.forward(request, response);
	}
}