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

public class SelectServlet extends HttpServlet {	
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		//�����������
		request.setCharacterEncoding("utf-8");
		String JOB=request.getParameter("JOB");
		//�������ݷ��ʵķ��� ���е�¼
		employeedao ed=new employeedao();
		ArrayList<employee> emps=ed.selectEmpByJob(JOB);
		//Я�����е��û���Ϣ����   �����Ȼ�����е��û���Ϣ
		request.setAttribute("empAll", emps);
		//��ת
		request.getRequestDispatcher("/jobempdata.jsp").forward(request, response);
	}
}

