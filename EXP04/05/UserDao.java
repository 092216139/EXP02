package dao;

import Users.User;

public class UserDao {
	//判断是否登录成功
	public boolean userLogin(User user) {
		if("张小美".equals(user.getUsername())&&"123456".equals(user.getPassword())&&"123456".equals(user.getConfirmpsw())){
			return true;
		}
		else {
			return false;
		}
	}
}
