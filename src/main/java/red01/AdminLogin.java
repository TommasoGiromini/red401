package red01;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

@WebServlet("/admin/login")
public class AdminLogin extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private static final Logger log = LoggerFactory.getLogger(AdminLogin.class);

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		log.trace("enter");
		String useradm = request.getParameter("useradm");
		String password = request.getParameter("password");
		AdminDao dao = new AdminDao();
		Manager manager = dao.read(useradm,password);
		if (manager != null) {
			request.getSession().setAttribute("logged", manager);
			String url = "/adminlog.jsp";
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
