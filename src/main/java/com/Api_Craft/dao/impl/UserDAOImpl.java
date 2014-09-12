package com.Api_Craft.dao.impl;

import com.Api_Craft.dao.UserDAO;
import com.Api_Craft.model.User;
import org.apache.log4j.Logger;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

public class UserDAOImpl implements UserDAO {
	static final Logger logs= Logger.getLogger(UserDAOImpl.class);

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
			logs.info("Retrieved user " + user + " from the database ");
		}
		tx.commit();
		session.close();
		return user;
	}

}
