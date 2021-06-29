package controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.PersonDAO;
import dto.PersonDTO;


@WebServlet("/PersonController")
public class PersonController extends HttpServlet {
	private static final long serialVersionUID = 1L;



	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String requestURI = request.getRequestURI();
		String ctxPath = request.getContextPath();
		String url = requestURI.substring(ctxPath.length());

		PersonDAO dao = PersonDAO.getInstance();

		try {

			if(url.contentEquals("/inputform.person")) {

				response.sendRedirect("addform.jsp");

			}else if(url.contentEquals("/inputProc.person")){

				String name = request.getParameter("name");
				String contact = request.getParameter("contact");
				PersonDTO dto = new PersonDTO(0, name, contact);

				int result = dao.insert(dto);

				request.setAttribute("result", result);

				RequestDispatcher rd = request.getRequestDispatcher("index.jsp");
				rd.forward(request, response);


			}

		} catch(Exception e) {
			e.printStackTrace();
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
