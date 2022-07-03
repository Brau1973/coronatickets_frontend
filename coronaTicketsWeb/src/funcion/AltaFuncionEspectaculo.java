package funcion;

import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;

import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.GregorianCalendar;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

import publicadores.ControladorFuncionPublish;
import publicadores.ControladorFuncionPublishService;
import publicadores.ControladorFuncionPublishServiceLocator;
import publicadores.DtFuncion;

@MultipartConfig
@WebServlet("/AltaFuncionEspectaculo")
public class AltaFuncionEspectaculo extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private String pathFiles = "C:\\Users\\Braulio\\Documents\\Brau2015\\Desarrollo\\Portfolio\\coronatickets_frontend\\coronaTicketsWeb\\WebContent\\imagenes\\";
	private File uploads = new File(pathFiles);
	private String[] extens = {".ico", ".png", ".jpg", ".jpeg"};

	public AltaFuncionEspectaculo() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	@SuppressWarnings("deprecation")
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		String espectaculo = request.getParameter("nomEspectaculo");
		String nombre = request.getParameter("nomFuncion");
		String fechaFuncion = request.getParameter("fechaFuncion");
		String horaInicio = request.getParameter("horaInicio");
		String photo = "";
		
		String[] parts = horaInicio.split(":", 2);
		String part1 = parts[0];
		String part2 = parts[1];
		int hs = Integer.parseInt(part1);
		int min = Integer.parseInt(part2);
		//Time horaInicioTime = new Time(min);
		
		SimpleDateFormat formato = new SimpleDateFormat("yyyy-MM-dd");
		Date fechaInicio = null;
		try {
			fechaInicio = formato.parse(fechaFuncion);
		} catch (Exception e1) {
			e1.printStackTrace();
		}
		fechaInicio.setHours(hs);
		fechaInicio.setMinutes(min);
		fechaInicio.setSeconds(0);
		Calendar fechaN = Calendar.getInstance();
		fechaN.setTime(fechaInicio);

		String[] artistasInvitados = request.getParameterValues("selArtista");

		/*
		 * try { Part part = request.getPart("imagen");
		 * 
		 * if(part == null) { System.out.println("No ha seleccionado un archivo");
		 * return; }
		 * 
		 * if(isExtension(part.getSubmittedFileName(), extens)) { photo = saveFile(part,
		 * uploads); // imagePath }
		 * 
		 * } catch (Exception e) { e.printStackTrace(); }
		 */
		
		RequestDispatcher rd;

		Calendar fechaAlta = new GregorianCalendar();
		fechaAlta.setTime(new Date());
		
		DtFuncion dtFuncion = new DtFuncion(nombre, fechaN, null, fechaAlta, artistasInvitados,"");
		//Date FechaFuncion = this.fechaFuncion.getDate();
		try {
			agregarFuncion(dtFuncion, espectaculo);
			request.setAttribute("mensaje", "Se ha ingresado correctamente la funcion " + nombre);
			rd = request.getRequestDispatcher("/notificacion.jsp");

			session.removeAttribute("nomFuncion");
			session.removeAttribute("fechaFuncion");
			session.removeAttribute("horaInicio");
			session.removeAttribute("nombreEspectaculoSelected");
			rd.forward(request, response);
			
		} catch (Exception e) {
			//guardo los campos del formulario en la sesion
			session.setAttribute("nomFuncion", nombre);
			session.setAttribute("fechaFuncion", fechaFuncion);
			session.setAttribute("horaInicio", horaInicio);
			session.setAttribute("nombreEspectaculoSelected", espectaculo);
			//	System.out.println(nombre);
			request.setAttribute("mensaje", "La funcion ya existe");
			rd = request.getRequestDispatcher("/notificacion.jsp");
			rd.forward(request, response);
		}
	}

	public void agregarFuncion(DtFuncion dtFuncion, String nombreEspectaculo) throws Exception {
		ControladorFuncionPublishService cps = new ControladorFuncionPublishServiceLocator();
		ControladorFuncionPublish port = cps.getControladorFuncionPublishPort();
		port.altaFuncion(dtFuncion, nombreEspectaculo);
	}
	
	/*
	 * private boolean isExtension(String fileName, String[] extensions) {
	 * for(String et : extensions) { if(fileName.toLowerCase().endsWith(et)) {
	 * return true; } }
	 * 
	 * return false; }
	 * 
	 * private String saveFile(Part part, File pathUploads) { //String pathAbsolute
	 * = ""; String fileName = ""; try {
	 * 
	 * Path path = Paths.get(part.getSubmittedFileName()); fileName =
	 * path.getFileName().toString(); InputStream input = part.getInputStream();
	 * 
	 * if(input != null) { File file = new File(pathUploads, fileName);
	 * //pathAbsolute = file.getAbsolutePath(); Files.copy(input, file.toPath()); }
	 * 
	 * } catch (Exception e) { e.printStackTrace(); }
	 * 
	 * return fileName; }
	 */

}