package dao;

import com.Users;

public class UserDao {
	//�ж��Ƿ��¼�ɹ�
	public boolean userLogin(Users user) {
		if("becky".equals(user.getUsername())&&"092216139".equals(user.getPassword())){
			return true;
		}
		else {
			return false;
		}
	}
}
