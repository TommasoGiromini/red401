package red01;

import java.io.IOException;


import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

@WebServlet("/homepage")
public class StudentAll extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private static final Logger log = LoggerFactory.getLogger(StudentAll.class);

	 @Override
	 protected void doGet(HttpServletRequest request, HttpServletResponse
	 response)
	 throws ServletException, IOException {
	log.trace("enter");

	// StudentDao dao = new StudentDao();
	// List<Student> students = dao.readAll();
	// request.setAttribute("student", students);

	// request.getRequestDispatcher("/student.jsp").forward(request, response);
	// }

	
	// String user = request.getParameter("user");
	// String password = request.getParameter("password");

	String url = "pickRoom.jsp";
	request.getRequestDispatcher(url).forward(request,response);
}

	@Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doGet(request, response);
    }
}
