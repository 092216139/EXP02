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
		//解决乱码问题
		request.setCharacterEncoding("utf-8");
		String JOB=request.getParameter("JOB");
		//调用数据访问的方法 进行登录
		employeedao ed=new employeedao();
		ArrayList<employee> emps=ed.selectEmpByJob(JOB);
		//携带所有的用户信息数据   必须先获得所有的用户信息
		request.setAttribute("empAll", emps);
		//跳转
		request.getRequestDispatcher("/jobempdata.jsp").forward(request, response);
	}
}

