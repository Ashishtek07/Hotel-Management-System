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

public class Userlogin extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String ufname=request.getParameter("fname");
		String ulname=request.getParameter("lname");
		Long umob=Long.parseLong(request.getParameter("number"));
		String uemail=request.getParameter("email");
		String uadd=request.getParameter("address");
		String upass=request.getParameter("pass");
		
		
		PrintWriter out=response.getWriter();
		
		try {
		
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/hotel","root","root");
			Statement stat=conn.createStatement();
			stat.executeUpdate("insert into userlogin(userfname,userlname,usermobileno,useremail,useraddress,userpass) values('"+ufname+"','"+ulname+"','"+umob+"','"+uemail+"','"+uadd+"','"+upass+"')");
			 response.sendRedirect("index.jsp");
		}
		catch(Exception e) {
			e.printStackTrace();
		}
	}

}
