<%-- 
    Document   : verify
    Created on : Jun 23, 2017, 11:08:32 AM
    Author     : sabinashrestha
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
<%! String username,password; %>
<%
     username = request.getParameter("username");
             password= request.getParameter("password");
                            if(username.equals("admin") && password.equals("admin1"))
                            {%>
                            <jsp:forward page ="Admin.jsp"/>
                            <%} else
{%>
    <center>Wrong Username or Password,Try again!!</center>
 <jsp:include page ="AdminPage.jsp"/>
<%}%>


                   
    </body>
</html>
