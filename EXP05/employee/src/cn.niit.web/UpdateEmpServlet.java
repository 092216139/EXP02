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

		//根据EMP_ID查询对应的用户
		
		//获得对应的EMP_ID
		String emp_id=request.getParameter("EMP_ID");
		int EMP_ID=0;
		if(emp_id!=null) {
			EMP_ID=Integer.parseInt(emp_id);
		}
		//调用dao层的方法进行查询
		employeedao ed=new employeedao();
		ArrayList<employee> emps=ed.selectEmpById(EMP_ID);
		
		//将获取的用户信息丢到修改页
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
		//设置请求参数的编码格式
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
		//xxxDao方法 传入相对于的参数  就可以进行交互
		employeedao ed=new employeedao();
		//将用户的请求信息封装成用户对象
		employee emp=new employee(EMP_ID,EMP_NAME,JOB,SALARY,DEPT);
		//调用方法
		int result=ed.updateEmp(emp);
		
		if(result>0){
			//修改成功
			//重新查一遍  将新的数据传入到empdata.jsp
			ArrayList<employee> empAll=ed.selectAll();
			request.setAttribute("empAll", empAll);
			//跳转empdata.jsp
			request.getRequestDispatcher("allempdata.jsp").forward(request, response);
			
		}
			
	}

}
