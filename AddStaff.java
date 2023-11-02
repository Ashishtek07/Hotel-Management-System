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

public class AddStaff extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String sfname=request.getParameter("fname");
		String slname=request.getParameter("lname");
		Long smob=Long.parseLong(request.getParameter("number"));
		String semail=request.getParameter("email");
		String sadd=request.getParameter("address");
		String sp=request.getParameter("profession");
		String spass=request.getParameter("pass");
		
		
		PrintWriter out=response.getWriter();
		
		try {
		
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/hotel","root","root");
			Statement stat=conn.createStatement();
			stat.executeUpdate("insert into staff(sfname,slname,smobileno,semail,saddress,sprofession,spass) values('"+sfname+"','"+slname+"','"+smob+"','"+semail+"','"+sadd+"','"+sp+"','"+spass+"')");
			out.println("Data Inserted Successfully!!!");
		}
		catch(Exception e) {
			e.printStackTrace();
		}
	}

}
