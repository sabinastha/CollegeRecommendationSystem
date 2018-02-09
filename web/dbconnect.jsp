<%-- 
    Document   : dbconnect
    Created on : Oct 24, 2015, 6:38:42 PM
    Author     : OM
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.*" %>
<%@page import="java.sql.*" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%

            try
             {
                String query = "select * from login";
                Class.forName("com.mysql.jdbc.Driver");
                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/practise","root","root");
               Statement st = con.prepareStatement(query);
                st.executeQuery(query);
                out.println("Connected");
                try
                 {
                    if(con != null)
                    {
                        con.close();
                    }
                 }catch(Exception ex)
                  {
                     out.println("Error close connection" + ex.getMessage());
                  }
             }catch(Exception ex)
             {
                out.println(ex.getMessage());
                out.println("Connection Error");
             }
        %>
    </body>
</html>
