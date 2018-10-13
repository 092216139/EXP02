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

public class DeleteServlet extends HttpServlet {

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
		//ɾ��
		
		//�Ȼ�ȡɾ�����ݵ�Ψһ��ʾ  EMP_ID
		String emp_id=request.getParameter("EMP_ID");
		int EMP_ID=0;
		if(emp_id!=null) {
			EMP_ID=Integer.parseInt(emp_id);
		}
		//����dao���ɾ������
		employeedao ed=new employeedao();
		int result=ed.deleteEmpById(EMP_ID);//�ַ���ת��int����
		if(result>0){
			//ɾ���ɹ�
			//��ѯ���µ�����  ��ת��empdata.jsp
			ArrayList<employee> empAll=ed.selectAll();
			request.setAttribute("empAll", empAll);
			//��תempdata.jsp
			request.getRequestDispatcher("allempdata.jsp").forward(request, response);
			
		}
		
	}

}
