<%-- 
    Document   : insertdata
    Created on : May 24, 2017, 11:19:33 AM
    Author     : sabinashrestha
--%>

<%@page import="java.security.MessageDigest"%>
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
            
             String firstname = request.getParameter("firstname");
             
             String lastname = request.getParameter("lastname");
                         
             String email = request.getParameter("email");
             
             String password= request.getParameter("password");
             
                         MessageDigest mdAlgorithm = MessageDigest.getInstance("MD5");
            mdAlgorithm.update(password.getBytes());

            byte[] digest = mdAlgorithm.digest();
            StringBuffer hexString = new StringBuffer();

            for (int i = 0; i < digest.length; i++) {
                password = Integer.toHexString(0xFF & digest[i]);

                if (password.length() < 2) {
                    password= "0" + password;
                }

                hexString.append(password);
            }

            password = hexString.toString();

                         
             String mobile = request.getParameter("mobile");
             
             String address = request.getParameter("address");
             
             String gender = request.getParameter("gender");
               String uname = request.getParameter("uname");
     try
    {       
   
        Class.forName("com.mysql.jdbc.Driver");
       Connection con = DriverManager.getConnection("jdbc:mysql://localhost/practise","root","root"); 
        Statement st =con.createStatement();
        
        st.executeUpdate("insert into student(firstname,lastname,email,password,mobile,address,gender,uname)values('"+firstname+"','"+lastname+"','"+ email+"' , '"+password+"' , '"+mobile +"','"+address+"', '"+gender +"','"+uname +"')");
       out.println("Data is inserted");
        
    }
        catch(Exception e){
        out.println(e);
        }
     
     %>
     
        <%
         String site = new String("http://localhost:8080/college_recommendation/index1.html");
         response.setStatus(response.SC_MOVED_TEMPORARILY);
         response.setHeader("Location",site);
         %>
        
       
    </body>
</html>
