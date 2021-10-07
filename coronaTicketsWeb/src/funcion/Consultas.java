package funcion;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import interfaces.Fabrica;
import interfaces.IControladorUsuario;
import logica.Espectaculo;
import manejadores.ManejadorEspectaculo;

@WebServlet("/Consultas")
public class Consultas extends HttpServlet{
   private static final long serialVersionUID = 1L;

   public Consultas(){
      super();
   }

   protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
      response.getWriter().append("Served at: ").append(request.getContextPath());
   }

   protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
      IControladorUsuario iconU = Fabrica.getInstancia().getIControladorUsuario();
      List<String> listArtistas = new ArrayList<String>();
      ManejadorEspectaculo mE = ManejadorEspectaculo.getInstancia();
      List<Espectaculo> listEspectaculos = mE.obtenerEspectaculo();
      try{
	  listArtistas = iconU.listarNicknameArtistas();
      }catch(Exception e){
	  e.printStackTrace();
      }
      RequestDispatcher rd;
      request.setAttribute("usuario", listArtistas);
      request.setAttribute("espectador", listEspectaculos);
      rd = request.getRequestDispatcher("/altaFuncionEspectaculo.jsp");
      rd.forward(request, response);
   }
}