package cn.niit.dao;

import java.util.ArrayList;

import cn.niit.pojo.employee;
import cn.niit.utils.DBUtlis;

//���ݷ��ʵĽӿ�
public class employeedao {
	DBUtlis db=new DBUtlis();
	
	//���Ա��
	public int saveemployee(employee emp){
		//��дsql
		String sql="insert into employee values(?,?,?,?,?)";
		//�ռ�ռλ����Ӧ�Ĳ���
		Object [] param={emp.getEMP_ID(),emp.getEMP_NAME(),emp.getJOB(),emp.getSALARY(),emp.getDEPT()};
		//���ù�����ķ���
		return db.executeUpdate(sql, param);
	}
	//��ѯȫ��
		public ArrayList<employee> selectAll(){
			String sql="select * from employee";
			return db.executeQuery(sql);
		}
	//����EMP_IDɾ���û�
	public int deleteEmpById(int EMP_ID){
		String sql="delete from employee where EMP_ID=?";
		Object [] param={EMP_ID};
		return db.executeUpdate(sql, param);
	}
	
	//����EMP_ID��ѯ�û���Ϣ
	public ArrayList<employee> selectEmpById(int EMP_ID){
		String sql="select * from employee where EMP_ID=?";
		Object [] param={EMP_ID};
		return db.executeQuery(sql,param);
	}
	//����JOB��ѯ�û���Ϣ
		public ArrayList<employee> selectEmpByJob(String JOB){
			String sql="select * from employee where JOB=?";
			Object [] param={JOB};
			return db.executeQuery(sql,param);
		}
	//����ID�޸��û���Ϣ
	public int updateEmp(employee emp){
		String sql="UPDATE EMPLOYEE SET EMP_NAME=?,JOB=?,SALARY=?,DEPT=? WHERE EMP_ID=?";
		Object [] param={emp.getEMP_NAME(),emp.getJOB(),emp.getSALARY(),emp.getDEPT(),emp.getEMP_ID()};
		return db.executeUpdate(sql, param);
	}
	
	
	
}
