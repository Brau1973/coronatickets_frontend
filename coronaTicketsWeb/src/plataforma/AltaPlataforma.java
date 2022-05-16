package plataforma;

import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

import publicadores.DtPlataforma;
import publicadores.ControladorPlataformaPublish;
import publicadores.ControladorPlataformaPublishService;
import publicadores.ControladorPlataformaPublishServiceLocator;

@MultipartConfig
@WebServlet("/AltaPlataforma")
public class AltaPlataforma extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private String pathFiles = "C:\\Users\\Braulio\\Documents\\Brau2015\\Desarrollo\\Portfolio\\coronatickets_frontend\\coronaTicketsWeb\\WebContent\\imagenes\\";
	private File uploads = new File(pathFiles);
	private String[] extens = {".ico", ".png", ".jpg", ".jpeg"};
	
	public AltaPlataforma() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		String nombre = request.getParameter("nomPla");
		String desc = request.getParameter("descPla");
		String url = request.getParameter("urlPla");
		String photo = "";
		
		try {
			Part part = request.getPart("imagenPlataforma");
			
			if(part == null) {
				part = (Part) session.getAttribute("imagenPlataforma");
				System.out.println("No ha seleccionado un archivo");
				return;
			}
			
			if(isExtension(part.getSubmittedFileName(), extens)) {
				photo = saveFile(part, uploads); // imagePath
			}
		
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		DtPlataforma dtp = new DtPlataforma(nombre, desc, url, photo, null);
		try {
			agregarPlataforma(dtp);
			request.setAttribute("mensaje", "Plataforma "+dtp.getNombre()+" ingresada con exito.");
			RequestDispatcher rd;
			rd = request.getRequestDispatcher("/notificacion.jsp");
			rd.forward(request, response);
		} catch (Exception e) {
			request.setAttribute("mensaje", "La Plataforma "+dtp.getNombre()+" ya existe.");
			RequestDispatcher rd;
			rd = request.getRequestDispatcher("/notificacion.jsp");
			rd.forward(request, response);
			//e.printStackTrace();
		}

	}

	// OPERACIÓN CONSUMIDA
	public void agregarPlataforma(DtPlataforma dtp) throws Exception {
		ControladorPlataformaPublishService cps = new ControladorPlataformaPublishServiceLocator();
		ControladorPlataformaPublish port = cps.getControladorPlataformaPublishPort();
		port.altaPlataforma(dtp);
	}
	
	private boolean isExtension(String fileName, String[] extensions) {
		for(String et : extensions) {
			if(fileName.toLowerCase().endsWith(et)) {
				return true;
			}
		}
		
		return false;
	}
	
	private String saveFile(Part part, File pathUploads) {
		//String pathAbsolute = "";
		String fileName = "";
		try {
			
			Path path = Paths.get(part.getSubmittedFileName());
			fileName = path.getFileName().toString();
			InputStream input = part.getInputStream();
			
			if(input != null) {
				File file = new File(pathUploads, fileName);
				//pathAbsolute = file.getAbsolutePath();
				Files.copy(input, file.toPath());
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return fileName;
	}
}