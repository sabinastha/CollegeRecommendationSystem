<%@page import="java.security.MessageDigest"%>
<%@ page import ="java.sql.*" %>
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
    String userid = request.getParameter("uname");    
    String password = request.getParameter("password");
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/practise",
            "root", "root");
    
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

                   
    Statement st = con.createStatement();
    ResultSet rs;
    rs = st.executeQuery("select * from student where uname='" + userid + "' and password='" + password + "'");
    if (rs.next())  {%>
    

        session.setAttribute("userid", userid);
                            <jsp:forward page ="index1.html"/>
                            <%} 
    else
{%>
    <center  >Wrong Username or Password,Try again!!</center>
 <jsp:include page ="login.jsp"/>
<%}
%>

    </body>
</html>