package com.javalec.ex;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebInitParam;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

//@WebServlet(urlPatterns={"/InitParam"}, initParams= {@WebInitParam(name="id", value="aaaaa"), @WebInitParam(name="pw", value="9999")})
@WebServlet("/InitParam")
public class ServletInitParam extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public ServletInitParam() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("doGet");
		
//		String id = getInitParameter("id");
//		String pw = getInitParameter("pw");
//		
//		response.setContentType("text/html; charset=UTF-8");
//		
//		PrintWriter writer = response.getWriter();
//		writer.println("<html><head></head><body>");
//		writer.println("아이디 : " + id + "<br />");
//		writer.println("비밀번호 : " + pw + "<br />");
//		writer.println("</body></html>");
//		
//		writer.close();
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
