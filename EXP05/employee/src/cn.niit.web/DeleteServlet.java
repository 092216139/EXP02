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
		//删除
		
		//先获取删除数据的唯一标示  EMP_ID
		String emp_id=request.getParameter("EMP_ID");
		int EMP_ID=0;
		if(emp_id!=null) {
			EMP_ID=Integer.parseInt(emp_id);
		}
		//调用dao层的删除方法
		employeedao ed=new employeedao();
		int result=ed.deleteEmpById(EMP_ID);//字符串转成int类型
		if(result>0){
			//删除成功
			//查询最新的数据  跳转到empdata.jsp
			ArrayList<employee> empAll=ed.selectAll();
			request.setAttribute("empAll", empAll);
			//跳转empdata.jsp
			request.getRequestDispatcher("allempdata.jsp").forward(request, response);
			
		}
		
	}

}
