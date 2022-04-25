package com.indranil.web;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.indranil.web.dao.InventoryDao;
import com.indranil.web.dao.UserDao;
import com.indranil.web.model.Admin;
import com.indranil.web.model.Inventory;
import com.indranil.web.model.User;
import com.indranil.web.model.Userlist;

@WebServlet("/adminControl")
public class AdminController extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String userid = request.getParameter("userid");
		String pwd = request.getParameter("pwd");
		String action = request.getParameter("action");
		
		InventoryDao inventoryDao = new InventoryDao();
		
		if(action.equals("admin")) {

			if( userid.equals("sam") && pwd.equals("123")) {
				List<Admin> admin = inventoryDao.getInventories();
				
				HttpSession session = request.getSession();
				session.setAttribute("admin", admin);
				response.sendRedirect("users.jsp");
				return;
			}
			else {
				request.setAttribute("failed", "true");
				response.sendRedirect("login.jsp?login=failed");
				return;
			}
			
		}
		
		if(action.equals("update1")) {

			if( !userid.equals (" ") ) {
				List<Admin> admin = inventoryDao.getInventories1(userid);
				List<Admin> admin1 = inventoryDao.getInventories();
				
				HttpSession session = request.getSession();
				session.setAttribute("admin", admin1);
				response.sendRedirect("users.jsp");
				return;
			}
			else {
				request.setAttribute("failed", "true");
				response.sendRedirect("login.jsp?login=failed");
				return;
			}
			
		}
		
		else if(action.equals("logout")) {
			HttpSession session = request.getSession();
			session.removeAttribute("user");
			session.invalidate();
			response.sendRedirect("login.jsp");
			return;
		}
		
	}

}
