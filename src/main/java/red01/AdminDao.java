package red01;

import java.util.List;


import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

public class AdminDao {
	static private final Logger log = LoggerFactory.getLogger(AdminDao.class);

	public List<Manager> readAll() {
		EntityManager em = null;

		try {
			em = JpaUtil.createEntityManager();
			String jpql = "SELECT m FROM Manager m";
			return em.createQuery(jpql, Manager.class).getResultList();
		} finally {
			if (em != null) {
				em.close();
			}
		}
	}

	public Manager read(String email, String password) {
		EntityManager em = null;

		try {
			em = JpaUtil.createEntityManager();
			String jpql = "FROM Manager where email='" + email + "'  and password='" + password + "'";
			return (Manager) em.createQuery(jpql).getSingleResult();
		} catch (Exception e) {
			return null;
		} finally {
			if (em != null) {
				em.close();
			}
		}
	}
	

	
	public boolean create(Manager manager) {
		log.trace("enter");
		EntityManager em = null;
		EntityTransaction tx = null;

		try {
			em = JpaUtil.createEntityManager();
			tx = em.getTransaction();
			tx.begin();
			em.persist(manager);
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
