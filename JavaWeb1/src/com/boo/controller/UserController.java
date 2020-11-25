package com.boo.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.boo.dao.UserDao;
import com.boo.model.User;

/**
 * Servlet implementation class UserController
 */
@WebServlet("/UserController")  // This is important
public class UserController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    private UserDao userDao;
    
    public UserController() {
        this.userDao = new UserDao();
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String userIDStr = request.getParameter("userid");
		System.out.println(userIDStr);
		
		int userid = Integer.parseInt(userIDStr);
		User user = this.userDao.getUserById(userid);
		
		System.out.println(user);
		
		request.setAttribute("user", user);
		RequestDispatcher view = request.getRequestDispatcher("showUser.jsp");
		view.forward(request, response);
		
		
		//response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
	}

}
