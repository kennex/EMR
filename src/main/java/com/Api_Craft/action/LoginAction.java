package com.Api_Craft.action;

import com.Api_Craft.dao.UserDAO;
import com.Api_Craft.dao.impl.UserDAOImpl;
import com.Api_Craft.model.User;
import com.opensymphony.xwork2.Action;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import org.apache.log4j.Logger;
import org.apache.struts2.interceptor.SessionAware;
import org.apache.struts2.util.ServletContextAware;
import org.hibernate.SessionFactory;

import javax.servlet.ServletContext;
import java.util.Map;

public class LoginAction extends ActionSupport implements Action, ModelDriven<User>, ServletContextAware, SessionAware {
	static final Logger logs = Logger.getLogger(LoginAction.class);
	private static final long serialVersionUID = 1L;
	private Map<String, Object> session;
	private User user = new User();
	private ServletContext ctx;

	@Override
	public void validate() {
		String name = user.getName();
		String password = user.getPwd();
		if (name.trim().equalsIgnoreCase("") && password.trim().equalsIgnoreCase("")) {
			addActionError("Username and Password are required");
		} else if (name.trim().equalsIgnoreCase("")) {
			addActionError("Username is required");
		} else if (password.trim().equalsIgnoreCase("")) {
			addActionError("Password is required");
		}
	}

	@Override
	public String execute() throws Exception {
		SessionFactory sf = (SessionFactory) ctx.getAttribute("SessionFactory");
		UserDAO userDAO = new UserDAOImpl(sf);
		User userDB = userDAO.getUserByCredentials(user.getName(), user.getPwd());
		if (userDB == null) {
			addActionError("Could not authenticate name with username " + user.getName());
			logs.info("Could not authenticate name with username " + user.getName());
			return ERROR;
		} else {
			session.put("loggedin", user.getName());
			addActionMessage("User with username " + user.getName() + "was authenticated");
			logs.info("User with username " + user.getName() + "was authenticated");
			return SUCCESS;
		}
	}

	@Override
	public User getModel() {
		return user;
	}

	public Map<String, Object> getSession() {
		return session;
	}

	public void setSession(Map<String, Object> session) {
		this.session = session;
	}

	@Override
	public void setServletContext(ServletContext sc) {
		this.ctx = sc;
	}

}
