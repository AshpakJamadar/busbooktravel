package BusBooking.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import BusBooking.Dao.UserDao;
import BusBooking.Dto.UserDto;


	@WebServlet("/ForgetForm")
	public class ForgotForm extends HttpServlet {
	    protected void doPost(HttpServletRequest request, HttpServletResponse response)
	            throws ServletException, IOException {
	        String mobile = request.getParameter("mobile");
	        UserDao userDao = new UserDao();
	        UserDto user = userDao.findByMobile(mobile);

        if (user != null) {

        	request.getSession().setAttribute("mobile", mobile);
            request.getSession().setAttribute("username", user.getFname());
            response.sendRedirect("reset.jsp");
        	
        } else {
            response.sendRedirect("forgot.jsp?error=User not found");
        }
 
	    }
}
