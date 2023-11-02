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

public class UserSignin extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String umob=request.getParameter("number");
		   String upass=request.getParameter("pass");
		   response.setContentType("text/html");  
		   PrintWriter out=response.getWriter();
		   
		   try {
			   Class.forName("com.mysql.cj.jdbc.Driver");
			   Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/hotel","root","root");
			 
			   Statement stat=con.createStatement();
			   ResultSet rs=stat.executeQuery("select * from userlogin");
			   String umob1=null;
			   String upass1=null;
			  
			   while(rs.next()) {
				   umob1=rs.getString(4);
				   upass1=rs.getString(7);
			   }
			   
			   if(umob.equals(umob1) && upass.equals(upass1)) {
				
				   response.sendRedirect("roombook.jsp");
			   } else {
				   out.println("<script>alert('Invalid username or password')</script>");  
			        RequestDispatcher rd=request.getRequestDispatcher("index.jsp");  
			        rd.include(request, response); 

			   }
			   
		   } catch(Exception e){
			   e.printStackTrace();
			   
		   }
	}

}