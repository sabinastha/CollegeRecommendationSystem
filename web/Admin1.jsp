

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin</title>
        <link href="stylesheet.css" type="text/css" rel="stylesheet" media="all" />
        <style type="text/css">
            body
            {
                background-color:rgb(234,234,234);
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
                color:rgb(102,160,50);
            }
            h2
            {
                text-align:center;
                color:olive;
                font-size:30px;
            }
        </style>
        <script type="text/javascript">

            function insvalid()
            {

                if(document.form_insert.program.value == "")
                    {
                        alert("Please Enter program");
                        return false;
                    }

               if(document.form_insert.duration.value == "")
                    {
                        alert("Please Enter duration");
                        return false;
                    }
               
               if(document.form_insert.affiliated.value == "")
                    {
                        alert("Please Enter affiliated");
                        return false;
                    }
             
               
                   return true;
                   
            }
            function clear()
            {
               program.value = "";
                duration.value = "";
                affiliated.value = "";
                             
            }
        </script>
    </head>
    <body>
       
            <table border="0">
                <tr>
                    <td class="top">
                        <marquee>Welcome To Admin Site. We are here to Insert,Update,Delete and View
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
                      <strong class="wel">Welcome &nbsp To Admin Page</strong><br>
                       <a href="index1.html">Logout</a>
                    </td>
                </tr>
                    
                <tr>
                    <td>
                        <h2>Add Record</h2>
                    </td>
                </tr>
                <tr>
                    
                    <form name="form_insert" action="insert2.jsp" method="post" onsubmit="return insvalid();">
                       
                        <table border="0" align="center">
                               <tr>
                                   <td class="lbl_txt">program :</td>
                                   <td><input type="text" name="program" class="txt" /></td>
                               </tr>

                               <tr>
                                   <td class="lbl_txt">duration :</td>
                                   <td><input type="text" name="duration" class="txt" /></td>
                               </tr>

                               <tr>
                                   <td class="lbl_txt">affiliated:</td>
                                   <td><input type="text" name="affiliated" class="txt" /></td>
                               </tr>
                              
                               <tr>
                                   <td>
                                       <input type="submit" name="submit" value="Insert" class="btn" />
                                   </td>
                                   <td>
                                       <input type="reset" value="Reset" name="reset"  class="btn" onclick="return clear();" />
                                   </td>
                               </tr>
                               <tr>
                               
                               </tr>
                        </table>                   
                    </form>
                  
         


                    <table border="0" width="100%" height="100%">
                 
                       <tr>
                          <td class="footer">
                            <h3>Developed by : Nist group &copy;2017</h3>
                          </td>
                       </tr>
                       
                    </table>
                </tr>
          </table>
       
    </body>
</html>