package BusBooking.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import BusBooking.Dao.UserDao;

	@WebServlet("/ResetPassword")
	public class ResetPassword extends HttpServlet {
	    protected void doPost(HttpServletRequest request, HttpServletResponse response)
	            throws ServletException, IOException {
	        String mobile = (String) request.getSession().getAttribute("mobile");
	        String newPassword = request.getParameter("newPassword");
	        String confirmPassword = request.getParameter("confirmPassword");
	        
	        
	        System.out.println(newPassword);
	        System.out.println(confirmPassword);

	        if (mobile == null || newPassword == null || confirmPassword == null || !newPassword.equals(confirmPassword)) {
	            response.sendRedirect("reset.jsp?error=Passwords do not match or session expired");
	            return;
	        }

	        UserDao userDao = new UserDao();
	        userDao.updatePassword(mobile, newPassword);
	        response.sendRedirect("login.jsp?message=Password reset successfully");
	    }
	}

