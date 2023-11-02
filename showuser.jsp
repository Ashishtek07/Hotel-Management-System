<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <link rel="stylesheet" href="style.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css">
    <title>User Data</title>
</head>

<body class="body">
    <main class="pt-5">
        <section class="container">
            <div class="text-center pb-3">
                <h3>Staff Information</h3>
            </div>
            <table class="table w-25 mx-auto table-bordered">
                
                <tbody class="">
                    <%
                    Class.forName("com.mysql.cj.jdbc.Driver");
     			   Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/hotel","root","root");
                        Statement sta = con.createStatement();
                        ResultSet rs = sta.executeQuery("SELECT * FROM userlogin ");
                        while (rs.next()) {
                            int userid = rs.getInt(1);
                            String userfname = rs.getString(2);
                            String userlname = rs.getString(3);
                            String usermobileno = rs.getString(4);
                            String useremail = rs.getString(5);
                            String useraddress = rs.getString(6);
                            String userpass = rs.getString(7);
                            

                            out.println("<tr>");
                            out.println(" <th>ID</th> ");
                            out.println("<td>" + userid + "</td>");
                            out.println("</tr>");
                            out.println("<tr>");
                            out.println(" <th>First Name</th> ");
                            out.println("<td>" + userfname + "</td>");
                            out.println("</tr>");
                            out.println("<tr>");
                            out.println(" <th>Last Name</th> ");
                            out.println("<td>" + userlname + "</td>");
                            out.println("</tr>");
                            out.println("<tr>");
                            out.println(" <th>Email</th> ");
                            out.println("<td>" + usermobileno + "</td>");
                            out.println("</tr>");
                            out.println("<tr>");
                            out.println(" <th>Mobile No</th> ");
                            out.println("<td>"  +useremail+ "</td>");
                            out.println("</tr>");
                            out.println("<tr>");
                            out.println(" <th>Address</th> ");
                            out.println("<td>" + useraddress + "</td>");
                            out.println("</tr>");
                            out.println("<tr>");
                            out.println(" <th>Profession</th> ");
                            out.println("<td>" + userpass + "</td>");
                            out.println("</tr>");
                           
                        }
                    %>
                </tbody>
            </table>
        </section>
    </main>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>