package usuario;

import java.awt.image.BufferedImage;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.Base64;

import javax.imageio.ImageIO;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import publicadores.ControladorUsuarioPublish;
import publicadores.ControladorUsuarioPublishService;
import publicadores.ControladorUsuarioPublishServiceLocator;
import publicadores.DtArtista;
import publicadores.DtUsuario;

@WebServlet("/Login")
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public Login() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		RequestDispatcher rd = request.getRequestDispatcher("/index.jsp");
		HttpSession session = request.getSession();
		session.setAttribute("user", null);
		rd.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		RequestDispatcher rd = request.getRequestDispatcher("login.jsp");
		String userName = request.getParameter("user_name");
		String userPass = request.getParameter("user_pass");
		System.out.println("Login servlet");
		DtUsuario dtu = null;
		DtArtista dt = null;
		if (userName.contains("@")) {
			try {
				//	System.out.println("Logueo con mail: " + userName);
				dtu = getLoginUsuarioMail(userName);
			} catch (Exception e) {
				e.printStackTrace();
			}
		} else {
			try {
				//System.out.println("Logueo con nickname:" + userName+"passwors"+userPass);	
				//dt=getLoginDtArtista(userName);
				dtu = getLoginUsuario(userName);
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		//	System.out.println("DtUsuario Retornado: " + dtu.getContrasenia());
		if (dtu != null) {// && dtu.getContrasenia()==(userPass)) {
			System.out.println("Retorno usuario con nombre: " + dtu.getNombre() + " // Apellido: " + dtu.getApellido());
			System.out.println("Retorno usuario con pass: " + dtu.getContrasenia());
			HttpSession session = request.getSession();
			session.setAttribute("user", dtu);
			session.setAttribute("loged", true);
			if (dtu.getImageName()!= null) {
				System.out.println("IF IMAGEN: ");
				session.setAttribute("userImageName",dtu.getImageName());
				System.out.println("imagen seteada");
			}
			rd = request.getRequestDispatcher("/index.jsp");
		} else {
			request.setAttribute("message", "No existe el usuario y contraseña.");
		}
		rd.forward(request, response);
	}

	public DtUsuario getLoginUsuario(String userName) throws Exception {
		ControladorUsuarioPublishService cps = new ControladorUsuarioPublishServiceLocator();
		ControladorUsuarioPublish port = cps.getControladorUsuarioPublishPort();
		return port.getLoginUsuario(userName);
	}

//	public DtArtista getLoginDtArtista(String userName) throws Exception {
//		ControladorUsuarioPublishService cps = new ControladorUsuarioPublishServiceLocator();
//		ControladorUsuarioPublish port = cps.getControladorUsuarioPublishPort();
//		return port.getLoginArtista(userName);
//	}

	public DtUsuario getLoginUsuarioMail(String userName) throws Exception {
		ControladorUsuarioPublishService cps = new ControladorUsuarioPublishServiceLocator();
		ControladorUsuarioPublish port = cps.getControladorUsuarioPublishPort();
		return port.getLoginUsuarioMail(userName);
	}
}
