<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>



<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Explore College</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />

<link rel="stylesheet" href="layout.css" type="text/css" />
<script type="text/javascript" src="layout/scripts/jquery.min.js"></script>
<script type="text/javascript" src="layout/scripts/jquery.slidepanel.setup.js"></script>
<!-- Homepage Only Scripts -->
<script type="text/javascript" src="layout/scripts/jquery.cycle.min.js"></script>
<script type="text/javascript">
$(function() {
    $('#featured_slide').after('<div id="fsn"><ul id="fs_pagination">').cycle({
        timeout: 5000,
        fx: 'fade',
        pager: '#fs_pagination',
        pause: 1,
        pauseOnPagerHover: 0
    });
});
</script>
<!-- End Homepage Only Scripts -->
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


    
    
     <div class="wrapper col1">
  <div id="head">
    <h1><a href="index.html">Explore Colleges </a></h1>
    <p>Begin your list</p>
                     
          <br>        
    <div id="topnav">
      <ul>
        <li><a href="index.html">Home</a></li>
            <li><a href="explore.html">EXPLORE COLLEGES</a></li>
            <li><a class="active" href="service.jsp">COLLEGE PROGRAM</a></li>
             <li><a href="#">MY COLLEGE LIST</a>
          <ul>
            <li><a href="NIST College.html">NIST COLLEGE</a></li>
            <li><a href="Gyankunj College.html">GYANKUNJ COLLEGE</a></li>
            <li><a href="Baylor College.html">BAYLOR COLLEGE</a></li>
          </ul>
        </li>
           
      </ul><br>
           
    </div>
   
         </div>
  </div>
 
<div class="wrapper col4">
  <div id="container">
       <h1> View College Details</h1>
    <table border="1" align="center">
<tr>
<td>Id</td>
<td>College name</td>
<td>Address</td>
<td>Contact No</td>
<td>Email</td>
<td>Program</td>
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

</tr>
<%
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>
    </table>
    </div>
</div>
<br>
<br>


</body>
</html>