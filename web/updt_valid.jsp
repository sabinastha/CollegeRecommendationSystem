<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>


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

<%! String driverName = "com.mysql.jdbc.Driver";%>
<%!String url = "jdbc:mysql://localhost:3306/practise";%>
<%!String user = "root";%>
<%!String psw = "root";%>
<%
String id = request.getParameter("id");
String collegename=request.getParameter("collegename");
String address=request.getParameter("address");
String mobile=request.getParameter("mobile");
String email=request.getParameter("email");
String details=request.getParameter("details");
if(id != null)
{
Connection con = null;
PreparedStatement ps = null;
int personID = Integer.parseInt(id);
try
{
Class.forName(driverName);
con = DriverManager.getConnection(url,user,psw);
String sql="Update college set id=?,collegename=?,address=?,mobile=?,email=?,details=? where id="+id;
ps = con.prepareStatement(sql);
ps.setString(1,id);
ps.setString(2, collegename);
ps.setString(3, address);
ps.setString(4, mobile);
ps.setString(5, email);
ps.setString(6, details);

int i = ps.executeUpdate();
if(i > 0)
{
out.print(" ");
}
else
{
out.print("There is a problem in updating Record.");
}
}
catch(SQLException sql)
{
request.setAttribute("error", sql);
out.println(sql);
}
}
%> 


        <%
         String site = new String("http://localhost:8080/college_recommendation/View.jsp");
         response.setStatus(response.SC_MOVED_TEMPORARILY);
         response.setHeader("Location",site);
         %>
<!--
    <h1>Record Updated...</h1><br>
               <center><a href="Admin.jsp">Go Back</a></center>
-->
    </body>
</html>
