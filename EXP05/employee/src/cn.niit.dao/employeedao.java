package cn.niit.dao;

import java.util.ArrayList;

import cn.niit.pojo.employee;
import cn.niit.utils.DBUtlis;

//数据访问的接口
public class employeedao {
	DBUtlis db=new DBUtlis();
	
	//添加员工
	public int saveemployee(employee emp){
		//编写sql
		String sql="insert into employee values(?,?,?,?,?)";
		//收集占位符对应的参数
		Object [] param={emp.getEMP_ID(),emp.getEMP_NAME(),emp.getJOB(),emp.getSALARY(),emp.getDEPT()};
		//调用公共类的方法
		return db.executeUpdate(sql, param);
	}
	//查询全部
		public ArrayList<employee> selectAll(){
			String sql="select * from employee";
			return db.executeQuery(sql);
		}
	//根据EMP_ID删除用户
	public int deleteEmpById(int EMP_ID){
		String sql="delete from employee where EMP_ID=?";
		Object [] param={EMP_ID};
		return db.executeUpdate(sql, param);
	}
	
	//根据EMP_ID查询用户信息
	public ArrayList<employee> selectEmpById(int EMP_ID){
		String sql="select * from employee where EMP_ID=?";
		Object [] param={EMP_ID};
		return db.executeQuery(sql,param);
	}
	//根据JOB查询用户信息
		public ArrayList<employee> selectEmpByJob(String JOB){
			String sql="select * from employee where JOB=?";
			Object [] param={JOB};
			return db.executeQuery(sql,param);
		}
	//根据ID修改用户信息
	public int updateEmp(employee emp){
		String sql="UPDATE EMPLOYEE SET EMP_NAME=?,JOB=?,SALARY=?,DEPT=? WHERE EMP_ID=?";
		Object [] param={emp.getEMP_NAME(),emp.getJOB(),emp.getSALARY(),emp.getDEPT(),emp.getEMP_ID()};
		return db.executeUpdate(sql, param);
	}
	
	
	
}
