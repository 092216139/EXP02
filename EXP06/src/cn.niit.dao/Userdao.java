package cn.niit.dao;

import java.util.ArrayList;

import cn.niit.pojo.User;
import cn.niit.utils.DBUtlis;

//���ݷ��ʵĽӿ�
public class Userdao {
	DBUtlis db=new DBUtlis();
	//��¼
		public ArrayList<User> login(String username,String password){
			//��дsql
			String sql="select * from user where username=? and password=?";
			//�ռ�ռλ����Ӧ�Ĳ���
			Object [] param={username,password};
			//���ù�����ķ���
			return db.executeQuery(sql, param);
		}
}
