package red01;

import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

public class NewStudentDao {
	static private final Logger log = LoggerFactory.getLogger(NewStudentDao.class);
	public boolean create(Student student) {
		log.trace("enter");
		EntityManager em = null;
		EntityTransaction tx = null;

		try {
			em = JpaUtil.createEntityManager();
			tx = em.getTransaction();
			tx.begin();
			em.persist(student);
			tx.commit();
			return true;
		} catch (Exception ex) {
			log.warn("Can't persist entity", ex);
			try {
				if (tx != null && tx.isActive()) {
					tx.rollback();
				}
			} catch (Exception e) {
				log.warn("Can't rollback transaction", e);
			}

			return false;
		} finally {
			if (em != null) {
				em.close();
			}
		}
	}
}
