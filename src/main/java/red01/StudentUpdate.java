package red01;


	import java.io.IOException;

	import javax.servlet.ServletException;
	import javax.servlet.annotation.WebServlet;
	import javax.servlet.http.HttpServlet;
	import javax.servlet.http.HttpServletRequest;
	import javax.servlet.http.HttpServletResponse;

	import org.slf4j.Logger;
	import org.slf4j.LoggerFactory;

	

	@WebServlet("/student/update")
	public class StudentUpdate extends HttpServlet {
	    private static final long serialVersionUID = 1L;
	    private static final Logger log = LoggerFactory.getLogger(StudentUpdate.class);

	    @Override
	    protected void doGet(HttpServletRequest request, HttpServletResponse response)
	            throws ServletException, IOException {
	        log.trace("enter");
	        
	        Integer roomid = Integer.parseInt(request.getParameter("roomid"));
	        Integer slotid = Integer.parseInt(request.getParameter("slotid"));
	       

	        Student student = new Student (slotid, roomid);
	        if (new NewStudentDao().update(student)) {
	            log.debug("Student merged with id " + student.getId());
	            request.setAttribute("student", student);
	        } else {
	            log.info("Can't merge " + student);
	        }

	        request.getRequestDispatcher("/").forward(request, response);
	    }

	    @Override
	    protected void doPost(HttpServletRequest request, HttpServletResponse response)
	            throws ServletException, IOException {
	        doGet(request, response);
	    }
	}


