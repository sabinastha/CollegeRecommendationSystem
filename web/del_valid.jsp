

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
         <style>
            h1
            {
                color:red;
                font-style:italic;
                text-align:center;
            }
            a
            {
                text-decoration:none;
                color:maroon;
                font-size:20px;
                text-align:center;
            }
            a:hover
            {
                text-decoration:underline;
                font-weight:bolder;
            }
        </style>
    </head>
    <body>
        <%

            String sid = request.getParameter("u_id");

            try
            {
                Class.forName("com.mysql.jdbc.Driver");
                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/practise","root","root");
                PreparedStatement ps = con.prepareStatement("delete from college where id = '"+sid+ "'");
                ps.executeUpdate();
                con.close();
                ps.close();
            }
            catch(Exception ex)
             {
               out.println(ex.getMessage());
              }
        %>
        
    
        
        <%
         String site = new String("http://localhost:8080/college_recommendation/View.jsp");
         response.setStatus(response.SC_MOVED_TEMPORARILY);
         response.setHeader("Location",site);
         %>
         <!--
        <h1>Record Deleted...</h1><br>
               <center><a href="Admin.jsp">Go Back</a></center>
         -->
   </body>
</html>
