package com.Api_Craft.action;

import com.Api_Craft.dao.UserDAO;
import com.Api_Craft.dao.impl.UserDAOImpl;
import com.Api_Craft.model.User;
import com.opensymphony.xwork2.Action;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import org.apache.struts2.util.ServletContextAware;
import org.hibernate.SessionFactory;

import javax.servlet.ServletContext;

public class LoginAction extends ActionSupport implements Action, ModelDriven<User>, ServletContextAware {

	@Override
	public void validate() {
		if (user.getName().trim().equalsIgnoreCase("") && user.getPwd().trim().equalsIgnoreCase("")) {
			addActionError("Username and Password are required");
		} else if (user.getName().trim().equalsIgnoreCase("")) {
			addActionError("Username is required");
		} else if (user.getPwd().trim().equalsIgnoreCase("")) {
			addActionError("Password is required");
		}
	}

	@Override
	public String execute() throws Exception {
		SessionFactory sf = (SessionFactory) ctx.getAttribute("SessionFactory");
		UserDAO userDAO = new UserDAOImpl(sf);
		User userDB = userDAO.getUserByCredentials(user.getName(), user.getPwd());
		if (userDB == null) {
			return ERROR;
		} else {
			user.setEmail(userDB.getEmail());
			user.setName(userDB.getName());
			return SUCCESS;
		}
	}

	@Override
	public User getModel() {
		return user;
	}

	private User user = new User();

	private ServletContext ctx;

	@Override
	public void setServletContext(ServletContext sc) {
		this.ctx = sc;
	}

}
