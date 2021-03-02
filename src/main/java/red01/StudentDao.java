package red01;

import java.util.List;
import java.util.Optional;

import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;



public class StudentDao {
    static private final Logger log = LoggerFactory.getLogger(StudentDao.class);

    public List<Student> readAll() {
        EntityManager em = null;

        try {
            em = JpaUtil.createEntityManager();
            String jpql = "SELECT s FROM Student s";
            return em.createQuery(jpql, Student.class).getResultList();
        } finally {
            if (em != null) {
                em.close();
            }
        }
    }

    public String readMail(String email) {
    	EntityManager em = null;

        try {
            em = JpaUtil.createEntityManager();
            String jpql = "SELECT email FROM Student where email=" + email;
            return (String) em.createQuery(jpql).getSingleResult();
        } finally {
            if (em != null) {
                em.close();
            }
        }
    }
    
    public Optional<Student> read(int id) {
        EntityManager em = null;

        try {
            em = JpaUtil.createEntityManager();
            return Optional.ofNullable(em.find(Student.class, id));
        } finally {
            if (em != null) {
                em.close();
            }
        }
    }

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
