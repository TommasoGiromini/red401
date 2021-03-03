package red01;

import java.util.List;


import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;



public class RoomDao {
    static private final Logger log = LoggerFactory.getLogger(RoomDao.class);

    public List<Room> readAll() {
        EntityManager em = null;

        try {
            em = JpaUtil.createEntityManager();
            String jpql = "SELECT r FROM Rooms r";
            return em.createQuery(jpql, Room.class).getResultList();
        } finally {
            if (em != null) {
                em.close();
            }
        }
    }

    public Room readID(Integer id) {
		EntityManager em = null;
		try {
			em = JpaUtil.createEntityManager();
			
			String jpql = "select Name FROM Room where Room_ID='" + id + "'";
			return (Room) em.createQuery(jpql).getSingleResult();
		} catch (Exception e) {
			return null;
		} finally {
			if (em != null) {
				em.close();
			}
		}
    }

    public boolean create(Room room) {
        log.trace("enter");
        EntityManager em = null;
        EntityTransaction tx = null;

        try {
            em = JpaUtil.createEntityManager();
            tx = em.getTransaction();
            tx.begin();
            em.persist(room);
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
