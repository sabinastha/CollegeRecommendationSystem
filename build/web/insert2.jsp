

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
            
             String program = request.getParameter("program");
                     
             String duration = request.getParameter("duration");

             
             String affiliated = request.getParameter("affilated");
             

        try
    {       
   
        Class.forName("com.mysql.jdbc.Driver");
       Connection con = DriverManager.getConnection("jdbc:mysql://localhost/practise","root","root"); 
        Statement st =con.createStatement();
        
        st.executeUpdate("insert into program(program,duration,affiliated)values('"+program+"','"+ duration+"' , '"+affiliated +"')");
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
               <center><a href="Admin1.jsp">Go Back</a></center>
     
     
        -->
       
    </body>
</html>
