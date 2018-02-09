<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>



<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin</title>
        <link href="stylesheet.css" type="text/css" rel="stylesheet" media="all" />
        <style type="text/css">
            body
            {
                background-color:rgb(237,218,193);
            }
            .wel
            {
              color:rgb(121,56,250);
              font-size:24px;
            }
            .bm
            {
                color:red;
                font-size:18px;
            }
            a
            {
                text-decoration:none;
                color:maroon;
                font-size:20px;
            }
            a:hover
            {
                text-decoration:underline;
                color:rgb(90,216,210);
            }
            h2
            {
                text-align:center;
                color:olive;
                font-size:30px;
            }
           
        </style>
        <script type="text/javascript">
            function del()
            {
                if(confirm("Do you want to delete This Record ?"))
                {

                }
                else
                {
                    return false;
                }
            }
        </script>
    </head>
    <body>

<%
String id = request.getParameter("id");
String driver = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/";
String database = "practise";
String userid = "root";
String password = "root";
try {
Class.forName(driver);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}
Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
%>



     
        
     
            <table border="0">
                <tr>
                    <td class="top">
                        <marquee>Welcome To Admin Site.We are here to Insert,Update,Delete and View
                       Information</marquee>
                    </td>
                </tr>
                <tr>
                    <td class="header">
                        <img src="images/1.jpg" width="1350px" height="350px"/>
                    </td>
                </tr>
                <tr>
                    <td class="menu">
                       <ul>
                           
                        <li><a href="Admin.jsp">Add College</a></li>
                         <li><a href="Admin1.jsp">Add Program</a></li>
                        <li><a href="Delete.jsp">Delete College</a></li>
                        <li><a href="Delete2.jsp">Delete Program</a></li>
                        <li><a href="View.jsp">View Record</a></li>
                       
                      </ul>
                    </td>
                </tr>
                <tr>
                    <td align="center">
                      <strong class="wel">Welcome&nbsp To Admin Page</strong></strong><br>
                       <a href="index1.html">Logout</a>
                    </td>
                </tr>

            
                    <td>
                        <h2>View College Detail</h2>
                    </td>
                <table border="1" align="center">
<tr>
<td>id</td>
<td>College name</td>
<td>Address</td>
<td>Contact No</td>
<td>Email</td>
<td>Program</td>
<td>Details</td>
<td>Action</td>
</tr>
<%
try{
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String sql ="select * from college";
resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
<tr>
<td><%=resultSet.getString("id") %></td>
<td><%=resultSet.getString("collegename") %></td>
<td><%=resultSet.getString("address") %></td>
<td><%=resultSet.getString("mobile") %></td>
<td><%=resultSet.getString("email") %></td>
<td><%=resultSet.getString("program") %></td>
<td><%=resultSet.getString("details") %></td>
<td><a href="Update.jsp?id=<%=resultSet.getString("id")%>">update</a></td>
</tr>
<%
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>
</table>

<h2>View College Program</h2>

                <table border="1" align="center">
<tr>
<td>id</td>
<td>College Program</td>
<td>Duration</td>
<td>Affiliated</td>
<td>Action</td>
</tr>
<%
try{
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String sql ="select * from program";
resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
<tr>
<td><%=resultSet.getString("id") %></td>
<td><%=resultSet.getString("program") %></td>
<td><%=resultSet.getString("duration") %></td>
<td><%=resultSet.getString("affiliated") %></td>

<td><a href="Updateprogram.jsp?id=<%=resultSet.getString("id")%>">update</a></td>
</tr>
<%
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>
</table>
<br>


 <table border="0" width="100%" height="100%">
                    <tr>
                          <td class="footer">
                            <h3>Developed by : Nistian group &copy;2015</h3>
                          </td>
                       </tr>

 </table>
</body>
</html> 