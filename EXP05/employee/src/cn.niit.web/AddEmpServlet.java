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
		//设置请求参数的编码格式
		request.setCharacterEncoding("utf-8");

		//接收请求的参数    request请求     一个name对应一个value
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
		//xxxDao方法 传入相对于的参数  就可以进行交互
		employeedao ed=new employeedao();
		//将用户的请求信息封装成用户对象
		employee emp=new employee(0,EMP_NAME,JOB,SALARY,DEPT);
		//调用方法 返回受影响行数
		int result=ed.saveemployee(emp);

		if(result>0){
			
			//添加员工成功后
			try {
				//添加员工成功 
				//跳转 到addempsuccess.jsp
				request.getRequestDispatcher("/addempsuccess.jsp").forward(request, response);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
		}else{
			//失败的
			//携带信息   
			request.setAttribute("AddEmp","添加失败!");
			//跳转
			request.getRequestDispatcher("/addemp.jsp").forward(request, response);
		}
	}
}