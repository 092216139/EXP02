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
		//解决乱码问题
		request.setCharacterEncoding("utf-8");
		//调用数据访问的方法 进行登录
		employeedao ed=new employeedao();
		//携带所有的用户信息数据   必须先获得所有的用户信息
		ArrayList<employee> empAll=ed.selectAll();//直接调用数据访问接口的查询全部的方法
		request.setAttribute("empAll", empAll);
		//跳转
		request.getRequestDispatcher("/allempdata.jsp").forward(request, response);
	}
}
