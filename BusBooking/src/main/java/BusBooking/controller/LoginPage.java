package BusBooking.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import BusBooking.Dao.UserDao;
import BusBooking.Dto.UserDto;


	@WebServlet("/login")
	public class LoginPage extends HttpServlet {
	    private static final long serialVersionUID = 1L;

	    @Override
	    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	        String email = req.getParameter("email");
	        String pwd = req.getParameter("pwd");
	        
	        UserDao userdao = new UserDao();
	        UserDto user = userdao.findByEmailAndPassword(email, pwd);

	        if (user != null) {
	            HttpSession session = req.getSession();
	            session.setAttribute("user", user);
	            resp.sendRedirect("index.jsp");
	        } else {
	            resp.sendRedirect("login.jsp?error=Invalid email or password");
	        }
	    }
}
