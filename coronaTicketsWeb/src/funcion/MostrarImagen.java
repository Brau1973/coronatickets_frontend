package funcion;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import logica.Funcion;
import manejadores.ManejadorFuncion;

@WebServlet("/MostrarImagen")
public class MostrarImagen extends HttpServlet{
	private static final long serialVersionUID = 1L;

	public MostrarImagen(){
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		ManejadorFuncion mF = ManejadorFuncion.getInstancia();
		String $id = request.getParameter("id");
		long id = Long.parseLong($id);
		Funcion func = new Funcion();
		func = mF.buscarFuncion("aikkk");
		byte[] foto =func.getImagen();
		response.getOutputStream().write(foto);
	}


}