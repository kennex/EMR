package com.Api_Craft.dao;

import com.Api_Craft.model.User;

public interface UserDAO {

	User getUserByCredentials(String name, String passcode);
}
