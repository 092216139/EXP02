package cn.niit.web;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import cn.niit.dao.employeedao;
import cn.niit.pojo.employee;

public class AddEmpServlet extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		//������������ı����ʽ
		request.setCharacterEncoding("utf-8");

		//��������Ĳ���    request����     һ��name��Ӧһ��value
		String EMP_NAME=request.getParameter("EMP_NAME");
		String JOB=request.getParameter("JOB");
		String salary=request.getParameter("SALARY");
		String dept=request.getParameter("DEPT");
		double SALARY=0;
		int DEPT=0;
		if(salary!=null&&dept!=null) {
			SALARY=Double.parseDouble(salary);
			DEPT=Integer.parseInt(dept);
		}
		//xxxDao���� ��������ڵĲ���  �Ϳ��Խ��н���
		employeedao ed=new employeedao();
		//���û���������Ϣ��װ���û�����
		employee emp=new employee(0,EMP_NAME,JOB,SALARY,DEPT);
		//���÷��� ������Ӱ������
		int result=ed.saveemployee(emp);

		if(result>0){
			
			//���Ա���ɹ���
			try {
				//���Ա���ɹ� 
				//��ת ��addempsuccess.jsp
				request.getRequestDispatcher("/addempsuccess.jsp").forward(request, response);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
		}else{
			//ʧ�ܵ�
			//Я����Ϣ   
			request.setAttribute("AddEmp","���ʧ��!");
			//��ת
			request.getRequestDispatcher("/addemp.jsp").forward(request, response);
		}
	}
}