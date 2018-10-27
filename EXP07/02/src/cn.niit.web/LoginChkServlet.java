package cn.niit.web;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cn.niit.dao.Userdao;
import cn.niit.pojo.User;

public class LoginChkServlet extends HttpServlet {

	private static final long serialVersionUID = 1L;
	
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		//��¼
		
		//�����������
		request.setCharacterEncoding("utf-8");
		//��ȡ�������
		String username=request.getParameter("username");
		String password=request.getParameter("password");
		//�������ݷ��ʵķ��� ���е�¼
		Userdao ud=new Userdao();
		//���÷��� ���ز�ѯ�Ľ����
		ArrayList<User> users=ud.login(username, password);
		//�жϽ�����Ƿ����0 
		if(users.size()>0){
			//�ɹ� 
			//��ת
			request.getRequestDispatcher("/welcome.jsp").forward(request, response);
		}else{
			//ʧ��
			//��ת
			request.getRequestDispatcher("/error.jsp").forward(request, response);
		}
	}

}
