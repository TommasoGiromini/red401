package red01;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

@WebServlet("/student/mail")
public class StudentNew extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private static final Logger log = LoggerFactory.getLogger(StudentNew.class);

	@Override
		protected void doGet(HttpServletRequest request, HttpServletResponse response)
				throws ServletException, IOException {
			log.trace("enter");
			String user = request.getParameter("user");
			StudentDao dao= new StudentDao();
			
			if (dao.readMail(user) != null) {
				String url = "/pickRoom.jsp";
				request.getRequestDispatcher(url).forward(request, response);
		}
			else {
				String url = "/unknown.jsp";
				request.getRequestDispatcher(url).forward(request, response);
			}
	}
	
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}
}
