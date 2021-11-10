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
import publicadores.DtUsuario;
import publicadores.*;
// import interfaces.Fabrica;
// import interfaces.IControladorUsuario;

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
		//	IControladorUsuario iconU = Fabrica.getInstancia().getIControladorUsuario();
		DtUsuario dtu = null;
		DtArtista dt = null;
		if (userName.contains("@")) {
			try {
				dtu = getLoginUsuarioMail(userName);
			} catch (Exception e) {
				e.printStackTrace();
			}
		} else {
			try {	
				System.out.println("1:"+userName);
				dt = getLoginDtArtista(userName);
				System.out.println("1:"+userName);
				System.out.println("1.1:"+dt.getNickname());
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		System.out.println("ac2"+userPass);

		if (dt != null) {// && dt.getContrasenia().equals(userPass)) {
			System.out.println("1");
			HttpSession session = request.getSession();
			session.setAttribute("user", dt);
			session.setAttribute("loged", true);
			System.out.println("2");
		if (dt.getImagen() != null) {
				System.out.println("3");
				byte[] foto = dt.getImagen();
				BufferedImage image = null;
				InputStream in = new ByteArrayInputStream(foto);
				try {
					image = ImageIO.read(in);
				} catch (IOException e1) {
					e1.printStackTrace();
				}
				System.out.println("4");
				ByteArrayOutputStream output = new ByteArrayOutputStream();
				ImageIO.write(image, "jpg", output);
				String imageBase64 = Base64.getEncoder().encodeToString(output.toByteArray());
				session.setAttribute("imgUser", imageBase64);
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

	public DtArtista getLoginDtArtista(String userName) throws Exception {
		ControladorUsuarioPublishService cps = new ControladorUsuarioPublishServiceLocator();
		ControladorUsuarioPublish port = cps.getControladorUsuarioPublishPort();
		return port.getLoginArtista(userName);
	}
	
	public DtUsuario getLoginUsuarioMail(String userName) throws Exception {
		ControladorUsuarioPublishService cps = new ControladorUsuarioPublishServiceLocator();
		ControladorUsuarioPublish port = cps.getControladorUsuarioPublishPort();
		return port.getLoginUsuarioMail(userName);
	}
}
