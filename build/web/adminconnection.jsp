
<%@page import="java.sql.*"%>
<%@page import="java.sql.DriverManager"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    
  
        <%
            
             String username = request.getParameter("username");
             String password= request.getParameter("password");
             
try
    {       
        
    

        String str="select * from admindata";
        Class.forName("com.mysql.jdbc.Driver");
       Connection con = DriverManager.getConnection("jdbc:mysql://localhost/practise","root","root"); 
        Statement st=con.createStatement();
        ResultSet rs=st.executeQuery(str);
        
        int temp=0;
        String uname=null;
        while(rs.next())
              {
               uname=rs.getString(2);
               String upass=rs.getString(3);
               {
               if(uname.equals(username) && upass.equals(password))
                 {
                     
                   out.println(" Hello " + uname +" ! Your login is successful");
                  // out.println("Success
                  temp=1;
                  break;
                  
                   
                 }
                // else
                 //{
                //out.println("Hello" + uname +" !Your logiin is failed");
                 //}
                     //out.println("Hello" + uname +" ! Your login is failed");
                   // out.println("fail");
                 }
              }
        if(temp==0)
        {
            out.println("Hello" + username +" !Your logiin is failed");
        }
        
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

          

    
</html>

  

     

