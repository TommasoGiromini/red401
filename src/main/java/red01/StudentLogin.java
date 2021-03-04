package red01;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

@WebServlet("/student/login")
public class StudentLogin extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private static final Logger log = LoggerFactory.getLogger(StudentLogin.class);

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		log.trace("enter");
		String user = request.getParameter("user");
		String password = request.getParameter("password");
		StudentDao dao = new StudentDao();
		Student student = dao.read(user, password);
		if (student != null) {
			request.getSession().setAttribute("logged", student);
			String url = "/pickRoom.jsp";
			request.getRequestDispatcher(url).forward(request, response);
		} else {
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
