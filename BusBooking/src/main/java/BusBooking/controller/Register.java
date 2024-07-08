package BusBooking.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import BusBooking.Dao.UserDao;
import BusBooking.Dto.UserDto;

	@WebServlet("/signup")
	public class Register extends HttpServlet {

		@Override
		protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
			
			String fname=req.getParameter("fname");
			String lname=req.getParameter("lname");
			String pwd=req.getParameter("pwd");
			String cpwd=req.getParameter("cpwd");
			String email=req.getParameter("emailid");
			String mobile=req.getParameter("mobile");
			String gender=req.getParameter("gender");
		
			 if (!pwd.equals(cpwd)) {
		            resp.sendRedirect("login.jsp?error=Passwords do not match");
		            return;
		      }
			 
			UserDao u=new UserDao();
			UserDto d=new UserDto();
			d.setFname(fname);
			d.setLname(lname);
			d.setEmailid(email);
			d.setGender(gender);
			d.setPwd(pwd);
			d.setMobileno(mobile);
			u.create(d);
			
			resp.sendRedirect("login.jsp");
			
				
		}
}
