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
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class Adminlogin extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String aid=request.getParameter("adminid");
		   String apass=request.getParameter("adminpass");
		   response.setContentType("text/html");  
		   PrintWriter out=response.getWriter();
		   
		   try {
			   Class.forName("com.mysql.cj.jdbc.Driver");
			   Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/hotel","root","root");
			   PreparedStatement ps=con.prepareStatement("select * from admin where adminid=? and adminpass=?");
			   ps.setString(1, aid);
			   ps.setString(2, apass);
			   ResultSet rs=ps.executeQuery();	
			   
			   if(rs.next()) {
				   RequestDispatcher rd=request.getRequestDispatcher("admindash.jsp");
				   rd.forward(request, response);
			   } else {
				    out.println("\"<script>alert('Invalid username or password')</script>\"");  
			        RequestDispatcher rd=request.getRequestDispatcher("adminlogin.jsp");  
			        rd.include(request, response); 

			   }
			   
		   } catch(Exception e){
			   e.printStackTrace();
			   
		   }
	}

}