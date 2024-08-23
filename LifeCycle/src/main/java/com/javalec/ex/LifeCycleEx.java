package com.javalec.ex;

import jakarta.annotation.PostConstruct;
import jakarta.annotation.PreDestroy;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/")
public class LifeCycleEx extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public LifeCycleEx() {
        super();
    }
    
    @Override
    public void init() throws ServletException {
    	System.out.println("init");
    }
    
    @Override
    public void destroy() {
    	System.out.println("destroy");
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("doGet");
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("doPost");
	}
	
	@PostConstruct
	private void postConstruct() {
		System.out.println("postConstruct");
	}
	
	@PreDestroy
	private void preDestroy() {
		System.out.println("preDestroy");
	}

}
