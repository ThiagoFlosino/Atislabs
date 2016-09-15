package main.java.controladores;


import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import main.java.conexao.AtasDAO;

import org.neo4j.driver.v1.Record;
import org.neo4j.driver.v1.StatementResult;

@WebServlet("/ControladorNode")
public class ControladorNode extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/*
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Node ambiente = new Node();
		String acao = (String) request.getParameter("acao");

		if (acao != null){
			switch (acao) {
			case "editar":
				ambiente = new Node();
				int ambienteId = Integer.parseInt( request.getParameter("id"));
				NodeVO mvo = ambiente.buscaId(ambienteId);
				request.setAttribute("ambienteValue", mvo);
				request.getRequestDispatcher("CriarNode.jsp").forward(request,response);
				break;
			case "":
				int aid = Integer.parseInt( request.getParameter("ambienteid"));
				request.setAttribute("mobilias", new Mobilia().listar());
				request.setAttribute("ambienteId", aid);
				request.getRequestDispatcher("CriarItem.jsp").forward(request,response);
				break;
			default:
				  
			}
		}else{
			//request.getRequestDispatcher("WEB-INF/CriarCurso.jsp").forward(request,response);	
		}
	}
*/
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String acao = (String) request.getParameter("acao");
		String query = (String) request.getParameter("query");
		
		if (acao != null){
			switch (acao) {
			case "buscar":
				request.setAttribute("resultSet", new AtasDAO().buscar(query));
				request.getRequestDispatcher("resultado.jsp").forward(request,response);
				break;
			default:
			}
		}else{
			//request.getRequestDispatcher("WEB-INF/CriarCurso.jsp").forward(request,response);	
		}
	}

}
