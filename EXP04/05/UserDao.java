package dao;

import Users.User;

public class UserDao {
	//�ж��Ƿ��¼�ɹ�
	public boolean userLogin(User user) {
		if("��С��".equals(user.getUsername())&&"123456".equals(user.getPassword())&&"123456".equals(user.getConfirmpsw())){
			return true;
		}
		else {
			return false;
		}
	}
}
