<%-- 
    Document   : insertdata
    Created on : May 24, 2017, 11:19:33 AM
    Author     : sabinashrestha
--%>

<%@page import="java.sql.*"%>
<%@page import="java.sql.DriverManager"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        
   
        
        
        <%
            
             String collegename = request.getParameter("collegename");
             
           
                         
             String email = request.getParameter("email");
             
             String password= request.getParameter("password");
                         

             
             String address = request.getParameter("address");
             
             String program = request.getParameter("program");
     try
    {       
   
        Class.forName("com.mysql.jdbc.Driver");
       Connection con = DriverManager.getConnection("jdbc:mysql://localhost/practise","root","root"); 
        Statement st =con.createStatement();
        
        st.executeUpdate("insert into nistdata(collegename,email,password,address,program)values('"+collegename+"','"+ email+"' , '"+password+"','"+address+"', '"+program+"')");
       out.println("Data is inserted");
        
    }
        catch(Exception e){
        out.println(e);
        }
     
     %>
     
        <!--
         String site = new String("http://localhost:8080/Recommendation/index1.html");
         response.setStatus(response.SC_MOVED_TEMPORARILY);
         response.setHeader("Location",site);
         -->
        
       
    </body>
</html>
