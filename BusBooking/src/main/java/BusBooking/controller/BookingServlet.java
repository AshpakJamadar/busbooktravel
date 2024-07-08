package BusBooking.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import BusBooking.Dto.UserDto;

	@WebServlet("/bookform")
	public class BookingServlet extends HttpServlet {

	   @Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		   try {
	           String fromPlace = request.getParameter("fromPlace");
	           String toPlace = request.getParameter("toPlace");
	           String choice=request.getParameter("bookingType");
	           String date = request.getParameter("date");

	           request.getSession().setAttribute("fromPlace", fromPlace);
	           request.getSession().setAttribute("toPlace", toPlace);
	           request.getSession().setAttribute("date", date);

	           
	           UserDto dto = (UserDto) request.getSession().getAttribute("user");

	            if (dto != null) {
	                String username = dto.getFname() + " " + dto.getLname();
	                String phone = dto.getMobileno();
	                String email = dto.getEmailid();

	                System.out.println(username);
	                System.out.println(phone);
	                System.out.println(email);

	                request.getSession().setAttribute("userName", username);
	                request.getSession().setAttribute("phone", phone);
	                request.getSession().setAttribute("email", email);

	                if ("self".equalsIgnoreCase(choice)) {
	                    response.sendRedirect("bookingbus.jsp");
	                } else {
	                    response.sendRedirect("passenger.jsp");
	                }
	            } else {

	            	response.sendError(HttpServletResponse.SC_UNAUTHORIZED, "User not logged in");
	            }
	        } catch (NumberFormatException e) {
	            response.sendError(HttpServletResponse.SC_BAD_REQUEST, "Invalid seat number");
	        }
	           
		   
	   }
	}
	
	   
	
