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
String database = "searchbook";
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
        <li><a href="index.html">HOME</a></li>
            <li><a href="search.jsp">SEARCH COLLEGE</a></li>
            <li><a class="active" href="service.jsp">COLLEGE PROGRAM</a></li>
             <li><a href="#">LIST OF COLLEGE</a>
            <ul>
            <li><a href="http://edusanjal.com/college/nist-college-banepa">NIST College</a></li>
            <li><a href="http://www.gyankunj.edu.np/">Gyankunj College</a></li>
            <li><a href="http://baylor.edu.np/">Baylor College</a></li>
            <li><a href="http://www.collegesnepal.com/dhulikhel-sanjeevani-campus/">Sanjivani College</a></li>
             <li><a href="http://www.khwopacollege.edu.np/">Khwopa College</a></li>
               <li><a href="http://samriddhicollege.edu.np/">Samriddhi College</a></li>
                  <li><a href="http://trinitycollege.edu.np/">Trinity College</a></li>
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
<td>College Details</td>
</tr>


<%
try{
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String sql ="select * from book";
resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
<tr>
<td><%=resultSet.getString("bookid") %></td>
<td><%=resultSet.getString("book_name") %></td>
<td><%=resultSet.getString("location") %></td>
<td><%=resultSet.getString("contact") %></td>
<td><%=resultSet.getString("email") %></td>
<td><%=resultSet.getString("category") %></td>
<td><%=resultSet.getString("details") %></td>

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
    
     
<div class="wrapper col4">
  <div id="container">
<h2>View College Program</h2>

                <table border="1" align="center">
<tr>
<td>Id</td>
<td>College Program</td>
<td>Duration</td>
<td>Affiliated</td>
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


    <div id="copyright">
      <p class="fl_left">Copyright &copy; 2017- All Rights Reserved - <a href="#">Nistian Group</a></p>
      <br class="clear" />
    </div>
  
</body>
</html>