package com.org;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;
import java.sql.ResultSet;

public class StaffLoginn extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String sid=request.getParameter("sid");
		   String spass=request.getParameter("spass");
		   response.setContentType("text/html");  
		   PrintWriter out=response.getWriter();
		   
		   try {
			   Class.forName("com.mysql.cj.jdbc.Driver");
			   Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/hotel","root","root");
			 
			   Statement stat=con.createStatement();
			   ResultSet rs=stat.executeQuery("select * from staff");
			   String sidd=null;
			   String spasss=null;
			   
			   while(rs.next()) {
				   sidd=rs.getString(1);
				  spasss =rs.getString(8);
			   }
			   
			   if(sid.equals(sidd) && spass.equals(spass)) {
				
				   response.sendRedirect("staffviewbooking.jsp");
			   } else {
				   out.println("<script>alert('Invalid username or password')</script>");  
			        RequestDispatcher rd=request.getRequestDispatcher("stafflogin.jsp");  
			        rd.include(request, response); 

			   }
			   
		   } catch(Exception e){
			   e.printStackTrace();
			   
		   }
	}

}