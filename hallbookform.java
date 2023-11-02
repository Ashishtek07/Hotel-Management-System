package com.org;

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


public class hallbookform extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String cname=request.getParameter("name");
		String cemail=request.getParameter("email");
		Double cmobileno=Double.parseDouble(request.getParameter("number"));
		
		String checkin=request.getParameter("check-in");
		String checkout=request.getParameter("check-out");
		String halltype=request.getParameter("halltype");
		
		
		PrintWriter out=response.getWriter();
		
		try {
		
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/hotel","root","root");
			Statement stat=conn.createStatement();
			stat.executeUpdate("insert into hallbookform(cname,cemail,cmobileno,checkin,checkout,halltype) values('"+cname+"','"+cemail+"','"+cmobileno+"','"+checkin+"','"+checkout+"','"+halltype+"')");
			 response.sendRedirect("payment.jsp");
		}
		catch(Exception e) {
			e.printStackTrace();
		}
	}
}
