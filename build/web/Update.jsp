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
        
        
        <script type="text/javascript">

            function insvalid()
            {

                if(document.form_insert.collegename.value == "")
                    {
                        alert("Please Enter College Name");
                        return false;
                    }

               if(document.form_insert.address.value == "")
                    {
                        alert("Please Enter Address");
                        return false;
                    }
               
               if(document.form_insert.mobile.value == "")
                    {
                        alert("Please Enter Mobile No");
                        return false;
                    }
               if(document.form_insert.email.value == "")
                    {
                        alert("Please Enter Email Id");
                        return false;
                    }
               
                   return true;
                   
            }
            function clear()
            {
                collegename.value = "";
                address.value = "";
                mobile.value = "";
                email.value = "";
                program.value="";
                details.value="";
               
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
<%
try{
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String sql ="select * from college where id="+id;
resultSet = statement.executeQuery(sql);
while(resultSet.next()){
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
</table>
<br>
    <center>
<form method="post"  action="updt_valid.jsp">
    College Id:<br> 
<input type="hidden" name="id" value="<%=resultSet.getString("id") %>">
<input type="text" name="id" value="<%=resultSet.getString("id") %>">
<br>
College Name:<br>
<input type="text" name="collegename" value="<%=resultSet.getString("collegename") %>">
<br>
Address:<br>
<input type="text" name="address" value="<%=resultSet.getString("address") %>">
<br>
Contact No:<br>
<input type="text" name="mobile" value="<%=resultSet.getString("mobile") %>">
<br>
Email Id:<br>
<input type="email" name="email" value="<%=resultSet.getString("email") %>">
<br><
College Details:<br>
<input type="details" name="details" value="<%=resultSet.getString("details") %>">
<br><br>
<input type="submit" value="submit">
</form>
</center>

<%
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>

  
</body>
</html> 