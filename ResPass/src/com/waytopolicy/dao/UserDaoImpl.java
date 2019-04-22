package com.waytopolicy.dao;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.util.SystemPropertyUtils;

import com.waytopolicy.model.User;

public class UserDaoImpl implements UserDao {

	@Autowired
	private SessionFactory sessionFactory;
	
	
	@Override
	public User findById(String emailId) {
		System.out.println("iside fndbyid**********************************************");
		try {
			System.out.println("printing user :: ------------------" + emailId);
			//User user =  (User) sessionFactory.getCurrentSession().load(User.class, emailId);
			
			Criteria criteria =  sessionFactory.getCurrentSession().createCriteria(User.class);
			System.out.println("updated....2");
			List<User> users =  criteria.add(Restrictions.like("emailId", emailId.trim())).list();
			
			/*String hql = "FROM User u where u.emailId = :mail";
			Query query = session.createQuery(hql);
			query.setParameter("mail", emailId.trim());*/
			//query.setParameter(0, emailId.trim());
			
			User user = users.get(0);
			System.out.println(user);
			return user;
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}

	}
	/*
	 * public User verifyLogin(User user) { Session
	 * session=this.sessionFactory.openSession();
	 * System.err.println(user.getEmailId());
	 * System.err.println(user.getPassword());
	 * 
	 * 
	 * User verify; try {
	 * 
	 * verify=(User)session.load(User.class,user.getEmailId()); return verify;
	 * 
	 * } catch(Exception e) {
	 * 
	 * return null; }
	 * 
	 * 
	 * 
	 * 
	 * 
	 * 
	 * }
	 */

	/*@Override
	public User findById(String emailId) {
		try {
			return (User) sessionFactory.getCurrentSession().load(User.class, emailId);
		} catch (Exception e) {
			System.out.println(e);
			return null;
		}

	}

	@Override
	public void saveNewUser(User user) {
		sessionFactory.getCurrentSession().save(user);
		System.err.println("Saving New User Data Successfull!");

	}

	@Override
	public List<PolicyDetails> getPolicyByCategory() {
		Session session = sessionFactory.getCurrentSession();
		List<PolicyDetails> policyDetails = session.createQuery("select distinct e.policyType from PolicyDetails e")
				.list();
		return policyDetails;
	}

	@Override
	public List<PolicyDetails> checkPolicyCategory(String policyType, Integer durationOfPolicy) {
		System.err.println("Inside Check policy Category DAO");
		Session session = sessionFactory.getCurrentSession();
		Query q = session.createQuery("from PolicyDetails p where p.policyType=:pT and p.durationOfPolicy=:dOP");
		q.setParameter("pT", policyType);
		q.setParameter("dOP", durationOfPolicy);
		List<PolicyDetails> l = q.list();
		System.err.println(l);
		System.err.println("Search policy By category successfull!");
		return l;
	}

	@Override
	public PolicyDetails checkPolicyById(Integer id) {

		PolicyDetails policyInfo = (PolicyDetails) this.sessionFactory.getCurrentSession().get(PolicyDetails.class,
				new Integer(id));
		System.err.println(policyInfo);

		return policyInfo;
	}*/
	///*************************ETA AMAR BANANO****************************////////
	@Transactional
	@Override
	public void updatePassword(User dbUser) {
		// TODO Auto-generated method stub
		System.out.println("In dao : " + dbUser.getEmailId() +" -------" + dbUser.getPassword());
		Session session = null;
		Transaction t = null;
		Query q = null;
		try {
			session = sessionFactory.openSession();
			t = session.beginTransaction();
			q = session.createQuery("UPDATE User u set u.password=:pass where emailId=:mail");
			q.setParameter("pass", dbUser.getPassword());
			q.setParameter("mail", dbUser.getEmailId());
			int i = q.executeUpdate();
			System.out.println(i + "  rows affected");
			t.commit();
		} catch (Exception e) {
			System.out.println(e);
		} finally {
			session.close();
		}

	}
	///*************************EI OBDI************************///////
}
