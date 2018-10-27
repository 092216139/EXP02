package cn.niit.utils;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import cn.niit.pojo.User;

//�������ݿ�Ĺ�������
public class DBUtlis {
	//�������
	public Connection getConnection(){
		try {
			//1.����jar��  
			 Class.forName("com.mysql.cj.jdbc.Driver");//�������ݿ�������ע�ᵽ����������
			//2.�������
			return DriverManager.getConnection("jdbc:mysql://localhost:3306/db_user?useUnicode=true&characterEncoding=utf8&serverTimezone=GMT%2B8&useSSL=false", "root", "123456");
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
	}
	
	
	//�����Ĺر�
	public void closeAll(Connection conn,PreparedStatement ps,ResultSet rs){
		try {
			if(rs!=null){
				rs.close();
			}
			if(ps!=null){
				ps.close();
			}
			if(conn!=null){
				conn.close();
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
	}
	
	
	//��������ɾ�ĵķ���
	public int executeUpdate(String sql,Object...param){
		Connection conn=null;
		PreparedStatement ps=null;
		try {
			//�������
			conn=getConnection();
			//��sql
			ps = conn.prepareStatement(sql);
			
			//������ע��
			for(int i=0;i<param.length;i++){
				//Ϊռλ��ƴ�Ӳ���  ռλ��1��ʼ
				ps.setObject((i+1),param[i]);
			}
			
			//ִ��sql
			return ps.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			//�ر�����
			closeAll(conn, ps, null);
		}
		return 0;
	}
	
	
	//��ѯ
	public ArrayList<User> executeQuery(String sql,Object...param){
		//����һ������ ����װ��ѯ��������������
		ArrayList<User> users=new ArrayList<User>();
		
		Connection conn=null;
		PreparedStatement ps=null;
		ResultSet rs=null;
		try {
			//�������
			conn=getConnection();
			//��sql
			ps = conn.prepareStatement(sql);
			
			//������ע��
			for(int i=0;i<param.length;i++){
				//Ϊռλ��ƴ�Ӳ���  ռλ��1��ʼ
				ps.setObject((i+1),param[i]);
			}
			
			
			//ִ��sql
			rs=ps.executeQuery();
			
			//������ȡ��ѯ�Ľ����
			while(rs.next()){
				//��ȡ��ǰ�е����� ���Ը��������������ڵ�λ������ȡ��Ӧ��ֵ
				//��װ��һ��Ա������
				User user=new User(rs.getInt(1),rs.getString(2),rs.getString(3));
				//����װ�õ�Ա������ ���뼯����
				users.add(user);
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			//�ر�����
			closeAll(conn, ps, rs);
		}

		return users;

	}
	
	
	
	//��ѯ���е��е�
	public int executeQueryUnique(String sql){		
		Connection conn=null;
		PreparedStatement ps=null;
		ResultSet rs=null;
		try {
			//�������
			conn=getConnection();
			//��sql
			ps = conn.prepareStatement(sql);
			
		
			//ִ��sql
			rs=ps.executeQuery();
			
			//������ȡ��ѯ�Ľ����
			if(rs.next()){
				return rs.getInt(1);
			}
			
			
			
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			//�ر�����
			closeAll(conn, ps, rs);
		}
		return 0;
	}
	
	
	

	
}
