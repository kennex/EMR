package com.Api_Craft.interceptor;

import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.interceptor.Interceptor;

import java.util.Map;

/**
 * Created by benjamin on 9/13/14.
 */
public class LoginInterceptor implements Interceptor {
	private static final long serialVersionUID = 1L;

	@Override
	public void destroy() {
		// TODO Auto-generated method stub
	}

	@Override
	public void init() {
		// TODO Auto-generated method stub
	}

	@Override
	public String intercept(ActionInvocation invocation) throws Exception {
		Map<String, Object> sessionAttributes = invocation.getInvocationContext().getSession();

		if (sessionAttributes == null || sessionAttributes.get("loggedin") == null) {
			return "login";
		} else {
			if (!sessionAttributes.get("loggedin").equals(null)) {
				return invocation.invoke();
			} else {
				return "login";
			}
		}

	}
}
