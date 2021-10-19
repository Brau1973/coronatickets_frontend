package usuario;

import java.io.DataInputStream;
import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import datatypes.DtArtista;
import datatypes.DtEspectador;
import datatypes.DtUsuario;
import excepciones.UsuarioRepetidoExcepcion;
import interfaces.Fabrica;
import interfaces.IControladorUsuario;

@MultipartConfig
@WebServlet("/AltaUsuario")
public class AltaUsuario extends HttpServlet{
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public AltaUsuario(){
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		IControladorUsuario iconU = Fabrica.getInstancia().getIControladorUsuario();
		String nickname = request.getParameter("nickUsuario");
		String nombre = request.getParameter("nomUsuario");
		String apellido = request.getParameter("lastnUsuario");
		String contrasenia = request.getParameter("passUsuario");
		String contrasenia2 = request.getParameter("pass2Usuario");
		String correo = request.getParameter("emailUsuario");
		String fechaNac = request.getParameter("fechaUsuario");
		String imagen = request.getParameter("imagenUsuario");
		String descripcion = request.getParameter("descUsuario");
		String biografia = request.getParameter("bioUsuario");
		String url = request.getParameter("linkUsuario");
		String tipoU = request.getParameter("tipoUsuario");


		Part imagenFuncion = request.getPart("imagen");
		int sizeimg = (int) imagenFuncion.getSize();
		byte[] foto = null;

		foto = new byte[sizeimg];
		DataInputStream dis = new DataInputStream(imagenFuncion.getInputStream());
		dis.readFully(foto);

		// }
		try{
			// Date fecha = new SimpleDateFormat("dd/MM/yyyy").parse(fechaNac);
			SimpleDateFormat formato = new SimpleDateFormat("yyyy-MM-dd");
			Date fechaNacimiento = null;
			try{
				fechaNacimiento = formato.parse(fechaNac);
			}catch(ParseException e1){
				e1.printStackTrace();
			}

			if(tipoU.equals("Espectador")){
				System.out.println("aca estoy" + tipoU);
				DtUsuario dte = new DtEspectador(nickname, nombre, apellido, correo, fechaNacimiento, contrasenia, foto, null, null);
				iconU.altaUsuario(dte);
			}

			else if(tipoU.equals("Artista")){
				DtUsuario dta = new DtArtista(nickname, nombre, apellido, correo, fechaNacimiento, contrasenia, foto, null, null, descripcion, biografia, url);
				iconU.altaUsuario(dta);
			}
			request.setAttribute("mensaje", "Se ha ingresado correctamente al sistema, el usuario");
		}catch(UsuarioRepetidoExcepcion e){
			request.setAttribute("mensaje",e.getMessage());
		}

		RequestDispatcher rd;

		rd = request.getRequestDispatcher("/notificacion.jsp");
		rd.forward(request, response);

	}

}
