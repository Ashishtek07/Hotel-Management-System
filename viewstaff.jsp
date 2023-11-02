<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <link rel="stylesheet" href="style.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css">
    <title>Staff Data</title>
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
                        ResultSet rs = sta.executeQuery("SELECT * FROM staff");
                        while (rs.next()) {
                            int staffid = rs.getInt(1);
                            String sfname = rs.getString(2);
                            String slname = rs.getString(3);
                            String smobileno = rs.getString(4);
                            String semail = rs.getString(5);
                            String saddress = rs.getString(6);
                            String sprofession = rs.getString(7);
                            String spass = rs.getString(8);
                            

                            out.println("<tr>");
                            out.println(" <th>ID</th> ");
                            out.println("<td>" + staffid + "</td>");
                            out.println("</tr>");
                            out.println("<tr>");
                            out.println(" <th>First Name</th> ");
                            out.println("<td>" + sfname + "</td>");
                            out.println("</tr>");
                            out.println("<tr>");
                            out.println(" <th>Last Name</th> ");
                            out.println("<td>" + slname + "</td>");
                            out.println("</tr>");
                            out.println("<tr>");
                            out.println(" <th>Email</th> ");
                            out.println("<td>" + semail + "</td>");
                            out.println("</tr>");
                            out.println("<tr>");
                            out.println(" <th>Mobile No</th> ");
                            out.println("<td>"  +smobileno+ "</td>");
                            out.println("</tr>");
                            out.println("<tr>");
                            out.println(" <th>Address</th> ");
                            out.println("<td>" + saddress + "</td>");
                            out.println("</tr>");
                            out.println("<tr>");
                            out.println(" <th>Profession</th> ");
                            out.println("<td>" + sprofession + "</td>");
                            out.println("</tr>");
                            out.println("<tr>");
                            out.println(" <th>Pass</th> ");
                            out.println("<td>" + spass + "</td>");
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