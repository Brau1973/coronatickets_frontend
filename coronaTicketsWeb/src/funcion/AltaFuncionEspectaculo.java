package funcion;

import java.io.DataInputStream;
import java.io.IOException;
import java.sql.Time;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

import publicadores.DtFuncion;


@MultipartConfig
@WebServlet("/AltaFuncionEspectaculo")
public class AltaFuncionEspectaculo extends HttpServlet{
	private static final long serialVersionUID = 1L;

	public AltaFuncionEspectaculo(){
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	@SuppressWarnings("deprecation")
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
	//	IControladorFuncion iconF = Fabrica.getInstancia().getIControladorFuncion();
		HttpSession session = request.getSession();
		String nombre = request.getParameter("nomFuncion");
		String espectaculo = request.getParameter("nomEspectaculo");

		String hora = request.getParameter("horaFuncion");
		String[] parts = hora.split(":", 2);
		String part1 = parts[0];
		String part2 = parts[1];
		int hs = Integer.parseInt(part1);
		int min = Integer.parseInt(part2);
		Time horaInicio = new Time(hs, min, 0);

		String fecha = request.getParameter("fechaFuncion");
		SimpleDateFormat formato = new SimpleDateFormat("yyyy-MM-dd");
		Date fechaInicio = null;
		try{
			fechaInicio = formato.parse(fecha);
		}catch(ParseException e1){
			e1.printStackTrace();
		}

		List<String> listArtistas = new ArrayList<String>();
		String[] artistasInvitados = request.getParameterValues("selArtista");
		if(artistasInvitados != null) {
			for(String artista :artistasInvitados){
				listArtistas.add(artista);
			}
		}

		Part imagenFuncion = request.getPart("imagen");
		int sizeimg = (int) imagenFuncion.getSize();
		byte[] foto = null;

		foto = new byte[sizeimg];
		DataInputStream dis = new DataInputStream(imagenFuncion.getInputStream());
		dis.readFully(foto);
		RequestDispatcher rd;
	//	DtFuncion dtFuncion = new DtFuncion(nombre, fechaInicio, horaInicio, new Date(), listArtistas);
		try{
		//	iconF.altaFuncion(dtFuncion, espectaculo, foto);
			request.setAttribute("mensaje", "Se ha ingresado correctamente la funcion" + nombre);
			rd = request.getRequestDispatcher("/notificacion.jsp");
			
			session.removeAttribute("nomFuncion");
			session.removeAttribute("fechaFuncion");
			session.removeAttribute("horaFuncion");
			session.removeAttribute("nombreEspectaculoSelected");
			
			rd.forward(request, response);
		}catch(Exception e){
			request.setAttribute("message", e.getMessage());
			
			//guardo los campos del formulario en la sesion
			session.setAttribute("nomFuncion",nombre);
			session.setAttribute("fechaFuncion",fecha);
			session.setAttribute("horaFuncion",hora);
			session.setAttribute("nombreEspectaculoSelected",espectaculo);
			
			
			System.out.println(nombre);
			rd = request.getRequestDispatcher("/altaFuncionEspectaculo.jsp");
			rd.forward(request, response);
		}
	}
}