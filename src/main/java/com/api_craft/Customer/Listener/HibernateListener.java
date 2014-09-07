package com.api_craft.Customer.Listener;

import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import java.net.URL;

/**
 * Created by benjamin on 9/7/14.
 */
public class HibernateListener implements ServletContextListener {

	private Configuration config;
	private SessionFactory factory;
	private String path = "/hibernate.cfg.xml";
	private static Class clazz = HibernateListener.class;

	public static final String KEY_NAME = clazz.getName();

	public void contextDestroyed(ServletContextEvent event) {
		//
	}

	public void contextInitialized(ServletContextEvent event) {

		try {
			URL url = HibernateListener.class.getResource(path);
			config = new Configuration().configure(url);
			factory = config.buildSessionFactory();

			//save the Hibernate session factory into serlvet context
			event.getServletContext().setAttribute(KEY_NAME, factory);
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
	}
}
