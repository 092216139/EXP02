package cn.niit.web;


import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cn.niit.dao.employeedao;
import cn.niit.pojo.employee;

public class SelectAllServlet extends HttpServlet {	
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		//�����������
		request.setCharacterEncoding("utf-8");
		//�������ݷ��ʵķ��� ���е�¼
		employeedao ed=new employeedao();
		//Я�����е��û���Ϣ����   �����Ȼ�����е��û���Ϣ
		ArrayList<employee> empAll=ed.selectAll();//ֱ�ӵ������ݷ��ʽӿڵĲ�ѯȫ���ķ���
		request.setAttribute("empAll", empAll);
		//��ת
		request.getRequestDispatcher("/allempdata.jsp").forward(request, response);
	}
}
