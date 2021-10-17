package espectaculo;

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
import interfaces.IControladorPlataforma;

@WebServlet("/Datos")
public class Datos extends HttpServlet{
   private static final long serialVersionUID = 1L;

   public Datos(){
      super();
   }

   protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
      response.getWriter().append("Served at: ").append(request.getContextPath());
   }

   protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
	  IControladorPlataforma iconP = Fabrica.getInstancia().getIControladorPlataforma();
	  List<String> listPlataformas = new ArrayList<String>();
	  listPlataformas = iconP.listarPlataformasStr();
      RequestDispatcher rd;
      request.setAttribute("plataformas", listPlataformas);
      rd = request.getRequestDispatcher("/altaEspectaculo.jsp");
      rd.forward(request, response);
   }
}