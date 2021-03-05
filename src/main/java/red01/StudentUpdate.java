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

		
		SlotDao dao = new SlotDao();
		Slot slot = dao.read(roomid,slotid);
		
		int seats = slot.getSeats(roomid, slotid);

		if (seats == 0) {
			request.getRequestDispatcher("/noFreeSeats.jsp").forward(request, response);
		} else {
			int freeseats = seats - 1;
			slot.setSeats(freeseats);
			if (dao.update(slot)) {
				request.setAttribute("seats", slot);
			} else {
				log.info("Can't merge " + seats);
			}

			Student student = (Student) request.getSession().getAttribute("logged");
			if (student != null) {
				student.setSlotId(slotid);
				student.setRoomId(roomid);
				if (new NewStudentDao().update(student)) {
					log.debug("Student merged with id " + student.getId());
					request.setAttribute("student", student);
				} else {
					log.info("Can't merge " + student);
				}

			} else {
				String url = "/unknown.jsp";
				request.getRequestDispatcher(url).forward(request, response);
				return;
			}

			// RoomDao dao = new RoomDao();
			// Room room = dao.read(roomid);
			// String name = room.getName();
			switch (roomid) {
			case 1:
				request.setAttribute("name", "Opera");
				break;
			case 2:
				request.setAttribute("name", "Verdi");
				break;
			case 3:
				request.setAttribute("name", "Politecnico");
				break;
			case 4:
				request.setAttribute("name", "Campus Einaudi");
				break;
			default:
				request.setAttribute("name", "Palazzo nuovo");
			}

			switch (slotid) {
			case 1:
				request.setAttribute("ora", "mattina");
				break;
			default:
				request.setAttribute("ora", "pomeriggio");
			}

			request.getRequestDispatcher("/succeded.jsp").forward(request, response);
		}
	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}
}
