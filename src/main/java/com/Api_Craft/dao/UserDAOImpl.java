package com.Api_Craft.dao;

import com.Api_Craft.model.User;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

public class UserDAOImpl implements UserDAO {

	private SessionFactory sf;

	public UserDAOImpl(SessionFactory sf) {
		this.sf = sf;
	}

	@Override
	public User getUserByCredentials(String name, String passcode) {
		Session session = sf.openSession();
		Transaction tx = session.beginTransaction();
		Query query = session.createQuery("from User where name=:name and pwd=:pwd");
		query.setString("name", name);
		query.setString("pwd", passcode);
		User user = (User) query.uniqueResult();
		if (user != null) {
			System.out.println("User Retrieved from DB::" + user);
		}
		tx.commit();
		session.close();
		return user;
	}

}
