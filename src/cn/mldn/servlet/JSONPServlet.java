package cn.mldn.servlet;

import java.io.IOException;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cn.mldn.json.service.ProvinceService;
import net.sf.json.JSONObject;
@SuppressWarnings("serial")
@WebServlet("/JSONServlet") 
public class JSONPServlet extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		String jsonpcallback = request.getParameter("jsonpcallback") ;
		Map<String,Object> map = new ProvinceService().get(10002) ;
		JSONObject obj = new JSONObject() ;
		obj.putAll(map);
		response.getWriter().print(jsonpcallback + "(" + obj + ")");
	}
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		this.doGet(request, response);
	}
}
