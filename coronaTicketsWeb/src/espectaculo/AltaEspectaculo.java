package espectaculo;

import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.Calendar;
import java.util.Date;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

import publicadores.ControladorEspectaculoPublish;
import publicadores.ControladorEspectaculoPublishService;
import publicadores.ControladorEspectaculoPublishServiceLocator;

import publicadores.DtEspectaculo;
import publicadores.DtUsuario;

@MultipartConfig
@WebServlet("/AltaEspectaculo")
public class AltaEspectaculo extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private String pathFiles = "C:\\Users\\Braulio\\Documents\\Brau2015\\Desarrollo\\Portfolio\\coronatickets_frontend\\coronaTicketsWeb\\WebContent\\imagenes\\Espectaculos\\";
	private File uploads;
	private String[] extens = {".ico", ".png", ".jpg", ".jpeg"};
	private String photo;
	private Part part; 

	public AltaEspectaculo() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		RequestDispatcher rd = request.getRequestDispatcher("/altaEspectaculo.jsp");
		String plataforma = request.getParameter("nomPlataforma");
		HttpSession sesion = request.getSession();
		DtUsuario dtUsuLogueado = (DtUsuario) sesion.getAttribute("user");
		String artista = dtUsuLogueado.getNickname(); // pasar artista con el q ingresó al sistema
		String nombre = request.getParameter("nomEspectaculo");
		String descripcion = request.getParameter("descEspectaculo");
		Integer duracion = Integer.valueOf(request.getParameter("durEspectaculo"));
		Integer espectadoresMin = Integer.valueOf(request.getParameter("espectadoresMin"));
		Integer espectadoresMax = Integer.valueOf(request.getParameter("espectadoresMax"));
		String url = request.getParameter("urlEspectaculo");
		Integer costo = Integer.valueOf(request.getParameter("costoEspectaculo"));
		Calendar fechaAlta = Calendar.getInstance();
		
		processImage(request);

		DtEspectaculo dte = new DtEspectaculo();
		
		dte.setArtista(artista);
		dte.setPlataforma(plataforma);
		dte.setNombre(nombre);
		dte.setDescripcion(descripcion);
		dte.setDuracion(duracion);
		dte.setCantMin(espectadoresMin);
		dte.setCantMax(espectadoresMax);
		dte.setUrl(url);
		dte.setCosto(costo);
		dte.setRegistro(fechaAlta);
		dte.setImageName(photo);

		try {
			altaEspectaculo(dte, plataforma);
			if(!photo.isEmpty()) {
				uploads = new File(pathFiles);
				saveFile(part, uploads);
			}
			sesion.removeAttribute("plataformaSelected");
			sesion.removeAttribute("nombreEspectaculo");
			sesion.removeAttribute("descripcionEspectaculo");
			sesion.removeAttribute("duracionEspectaculo");
			sesion.removeAttribute("espectadoresMinEspectaculo");
			sesion.removeAttribute("espectadoresMaxEspectaculo");
			sesion.removeAttribute("urlEspectaculo");
			sesion.removeAttribute("costoEspectaculo");

			request.setAttribute("mensaje", "Espectaculo "+nombre+" ingresado con exito.");
			rd = request.getRequestDispatcher("/notificacion.jsp");
			rd.forward(request, response);
		} catch (Exception e) {
			//guardo los campos del formulario en la sesion
			sesion.setAttribute("plataformaSelected", plataforma);
			sesion.setAttribute("nombreEspectaculo", nombre);
			sesion.setAttribute("descripcionEspectaculo", descripcion);
			sesion.setAttribute("duracionEspectaculo", duracion);
			sesion.setAttribute("espectadoresMinEspectaculo", espectadoresMin);
			sesion.setAttribute("espectadoresMaxEspectaculo", espectadoresMax);
			sesion.setAttribute("urlEspectaculo", url);
			sesion.setAttribute("costoEspectaculo", costo);
			request.setAttribute("mensaje", "El espectaculo ya existe");
			rd = request.getRequestDispatcher("/notificacion.jsp");
			rd.forward(request, response);
		}
		//}
	}

	// OPERACIÓN CONSUMIDA
	public void altaEspectaculo(DtEspectaculo dte, String plataforma) throws Exception {
		ControladorEspectaculoPublishService cps = new ControladorEspectaculoPublishServiceLocator();
		ControladorEspectaculoPublish port = cps.getControladorEspectaculoPublishPort();
		port.altaEspectaculo(dte, plataforma);
	}
	
	private boolean isExtension(String fileName, String[] extensions) {
		for(String et : extensions) {
			if(fileName.toLowerCase().endsWith(et)) {
				return true;
			}
		}
		
		return false;
	}
	
	private void saveFile(Part part, File pathUploads) {
		//String pathAbsolute = "";
		//String fileName = "";
		try {
			//fileName = path.getFileName().toString();
			InputStream input = part.getInputStream();
			
			if(input != null) {
				File file = new File(pathUploads, photo);
				//pathAbsolute = file.getAbsolutePath();
				Files.copy(input, file.toPath());
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		//return fileName;
	}
	
	private void processImage(HttpServletRequest request) {
		photo = "";
		try {
			part = request.getPart("imagenEspectaculo");
		} catch (IOException | ServletException e1) {
			e1.printStackTrace();
		}
		
		try {
			if(part == null) {
				System.out.println("No ha seleccionado un archivo");
			}else {
				if(isExtension(part.getSubmittedFileName(), extens)) {
					Path path = Paths.get(part.getSubmittedFileName());
					photo = path.getFileName().toString();
				}
			}
		
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}