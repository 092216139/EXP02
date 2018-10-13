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

public class UpdateEmpServlet extends HttpServlet {

	/**
	 * The doGet method of the servlet. <br>
	 *
	 * This method is called when a form has its tag value method equals to get.
	 * 
	 * @param request the request send by the client to the server
	 * @param response the response send by the server to the client
	 * @throws ServletException if an error occurred
	 * @throws IOException if an error occurred
	 */
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		//����EMP_ID��ѯ��Ӧ���û�
		
		//��ö�Ӧ��EMP_ID
		String emp_id=request.getParameter("EMP_ID");
		int EMP_ID=0;
		if(emp_id!=null) {
			EMP_ID=Integer.parseInt(emp_id);
		}
		//����dao��ķ������в�ѯ
		employeedao ed=new employeedao();
		ArrayList<employee> emps=ed.selectEmpById(EMP_ID);
		
		//����ȡ���û���Ϣ�����޸�ҳ
		request.setAttribute("emp", emps.get(0));
		
		request.getRequestDispatcher("/updateemp.jsp").forward(request, response);
		
		
	}

	/**
	 * The doPost method of the servlet. <br>
	 *
	 * This method is called when a form has its tag value method equals to post.
	 * 
	 * @param request the request send by the client to the server
	 * @param response the response send by the server to the client
	 * @throws ServletException if an error occurred
	 * @throws IOException if an error occurred
	 */
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		//������������ı����ʽ
		request.setCharacterEncoding("utf-8");
	
		String emp_id=request.getParameter("EMP_ID");
		String EMP_NAME=request.getParameter("EMP_NAME");
		String JOB=request.getParameter("JOB");
		String salary=request.getParameter("SALARY");
		String dept=request.getParameter("DEPT");
		int EMP_ID=0;
		double SALARY=0;
		int DEPT=0;
		if(emp_id!=null&&salary!=null&&dept!=null) {
			EMP_ID=Integer.parseInt(emp_id);
			SALARY=Double.parseDouble(salary);
			DEPT=Integer.parseInt(dept);
		}
		//xxxDao���� ��������ڵĲ���  �Ϳ��Խ��н���
		employeedao ed=new employeedao();
		//���û���������Ϣ��װ���û�����
		employee emp=new employee(EMP_ID,EMP_NAME,JOB,SALARY,DEPT);
		//���÷���
		int result=ed.updateEmp(emp);
		
		if(result>0){
			//�޸ĳɹ�
			//���²�һ��  ���µ����ݴ��뵽empdata.jsp
			ArrayList<employee> empAll=ed.selectAll();
			request.setAttribute("empAll", empAll);
			//��תempdata.jsp
			request.getRequestDispatcher("allempdata.jsp").forward(request, response);
			
		}
			
	}

}
