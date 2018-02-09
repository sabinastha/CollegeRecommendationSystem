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
            
             String collegename = request.getParameter("collegename");
                     
             String email = request.getParameter("email");

             
             String mobile = request.getParameter("mobile");
             
             String address = request.getParameter("address");
           
             
              String program = request.getParameter("program");
           
            //// String program="";
             //String chbox[]=request.getParameterValues("chbox");
            // for(int i=0;i<chbox.length;i++){
            // program+=chbox[i]+" ";
             
             
//}
    String details  = request.getParameter("details"); 

     try
    {       
   
        Class.forName("com.mysql.jdbc.Driver");
       Connection con = DriverManager.getConnection("jdbc:mysql://localhost/practise","root","root"); 
        Statement st =con.createStatement();
        
        st.executeUpdate("insert into college(collegename,email,mobile,address,program,details)values('"+collegename+"','"+ email+"' , '"+mobile +"','"+address+"','"+program+"','"+details+"')");
      // out.println("Data is inserted");
        
    }
        catch(Exception e){
         out.println(e.getMessage());
         out.println("Can not Inserted Record..");
        }
     
     %>
   
     
       
     
        <%
         String site = new String("http://localhost:8080/college_recommendation/View.jsp");
         response.setStatus(response.SC_MOVED_TEMPORARILY);
         response.setHeader("Location",site);
         %>
        
         <!--
     <h1>Record Inserted...</h1><br>
               <center><a href="Admin.jsp">Go Back</a></center>
     
     -->
        
       
    </body>
</html>
