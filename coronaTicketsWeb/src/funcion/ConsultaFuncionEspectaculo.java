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

import datatypes.DtEspectaculo;
import datatypes.DtFuncion;
import interfaces.Fabrica;
import interfaces.IControladorEspectaculo;
import interfaces.IControladorPlataforma;

@WebServlet("/ConsultaFuncionEspectaculo")
public class ConsultaFuncionEspectaculo extends HttpServlet{
   private static final long serialVersionUID = 1L;

   public ConsultaFuncionEspectaculo(){
      super();
   }

   protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
      response.getWriter().append("Served at: ").append(request.getContextPath());
   }

   protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
      IControladorPlataforma iconP = Fabrica.getInstancia().getIControladorPlataforma();
      IControladorEspectaculo iconE = Fabrica.getInstancia().getIControladorEspectaculo();
      String strPlataforma = request.getParameter("nomPlataforma");
      List<String> listPlataformas = new ArrayList<String>();
      String strEspectaculo = request.getParameter("nomEspectaculos");
      List<DtEspectaculo> listEspectaculosDt = new ArrayList<DtEspectaculo>();
      List<DtFuncion> dtfun = new ArrayList<DtFuncion>();
      // System.out.print(pla + " <--ACA ");
      RequestDispatcher rd;
      if(strPlataforma != null){
	  if(request.getParameter("boton").equals("btnEspectaculos")){
	     listEspectaculosDt = iconE.listarEspectaculos(strPlataforma);
	  }else if(request.getParameter("boton").equals("btnFunciones")){
	     listEspectaculosDt = iconE.listarEspectaculos(strPlataforma);
	     dtfun = iconE.obtenerEspectaculo(strEspectaculo).getFuncionesDt();
	  }else if(request.getParameter("boton").equals("btnDatosFunciones")){
	      String strFuncion = request.getParameter("nomFuncion");
	     request.setAttribute("mensaje", "Se ha ingresado correctamente la funcion " + strFuncion);
	     rd = request.getRequestDispatcher("/notificacion.jsp");
	     rd.forward(request, response);
	  }
      }
      // if(strEspectaculo == null){
      try{
	  listPlataformas = iconP.listarPlataformasStr();
      }catch(Exception e){
	  e.printStackTrace();
      }
      // }
      request.setAttribute("plataformas", listPlataformas);
      request.setAttribute("espectador", listEspectaculosDt);
      request.setAttribute("funciones", dtfun);

      rd = request.getRequestDispatcher("/consultaFuncionEspectaculo.jsp");
      rd.forward(request, response);
   }

}
