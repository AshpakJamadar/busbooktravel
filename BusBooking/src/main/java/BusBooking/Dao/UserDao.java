package BusBooking.Dao;

import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;
import javax.persistence.NoResultException;

import BusBooking.Dto.UserDto;

public class UserDao {

	 public void create(UserDto d) {
	        EntityManager em = PersistenceManager.getEntityManagerFactory().createEntityManager();
	        EntityTransaction et = em.getTransaction();
	        
	        try {
	            et.begin();
	            em.persist(d);
	            et.commit();
	        } catch (Exception e) {
	            if (et.isActive()) {
	                et.rollback();
	            }
	            throw e; 
	        } finally {
	            em.close(); 
	        }
	    }
	    
	    public UserDto findByEmailAndPassword(String email, String password) {
	        EntityManager em = PersistenceManager.getEntityManagerFactory().createEntityManager();
	        UserDto user = null;
	        
	        try {
	        	user = em.createQuery("SELECT u FROM UserDto u WHERE u.emailid = :email AND u.pwd = :pwd", UserDto.class)
	                     .setParameter("email", email)
	                     .setParameter("pwd", password)
	                     .getSingleResult();
	        } catch (Exception e) {
	            // Handle exceptions (e.g., no result)
	            System.out.println("User not found with mobile");

	        } finally {
	            em.close();
	        }
	        
	        return user;
	    }
	  
	    
	 
	   
	    
	    public UserDto findByMobile(String mobile) {
	        EntityManager em = PersistenceManager.getEntityManagerFactory().createEntityManager();
	        UserDto user = null;
	        
	        try {
	            user = em.createQuery("SELECT u FROM UserDto u WHERE u.mobileno = :mobile", UserDto.class).setParameter("mobile", mobile).getSingleResult();
	            
	        } catch (NoResultException e) {
	            user = null;  // No user found
	        } finally {
	            em.close();
	        }
	        
	        return user;
	    }
	    
	    public void updatePassword(String mobile, String newPassword) {
	        EntityManager em = PersistenceManager.getEntityManagerFactory().createEntityManager();
	        EntityTransaction et = em.getTransaction();
	        try {
	            et.begin();
	            UserDto user = em.createQuery("SELECT u FROM UserDto u WHERE u.mobileno = :mobile", UserDto.class).setParameter("mobile", mobile).getSingleResult();
	            if (user != null) {
	                user.setPwd(newPassword);
	                em.merge(user);
	                et.commit();
	            }
	        } catch (Exception e) {
	            if (et.isActive()) {
	                et.rollback();
	            }
	            throw e;  
	        } finally {
	            em.close();
	        }
	    }
}
