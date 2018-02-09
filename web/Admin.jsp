<%-- 
    Document   : Admin
    Created on : Oct 24, 2015, 9:45:32 PM
    Author     : OM
--%>

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
                    
                    <form name="form_insert" action="insert1.jsp" method="post" onsubmit="return insvalid();">
                       
                        <table border="0" align="center">
                               <tr>
                                   <td class="lbl_txt">College Name :</td>
                                   <td><input type="text" name="collegename" class="txt" /></td>
                               </tr>

                               <tr>
                                   <td class="lbl_txt">Address :</td>
                                   <td><input type="text" name="address" class="txt" /></td>
                               </tr>

                               <tr>
                                   <td class="lbl_txt">mobile:</td>
                                   <td><input type="text" name="mobile" class="txt" /></td>
                               </tr>
                               <tr>
                                   <td class="lbl_txt">Email Id :</td>
                                   <td><input type="text" name="email" class="txt" /></td>
                               </tr>
                                  
                                     <tr>
                                   <td class="lbl_txt">Program</td>
                                   <td><input type="text" name="program" class="txt" /></td>
                                 
                                   
                               <!--    
                                   <td>
                                    <label><input type="checkbox" name="chbox" value="Bsc.CSIT"> Bsc.CSIT</label>
                                    <label><input type="checkbox" name="chbox" value="BBS"> BBS</label>
                            <br>
                                    <label><input type="checkbox" name="chbox" value="Bsc.General"> Bsc.General</label>
                                    <label><input type="checkbox" name="chbox" value="BBA"> BBA</label>
                                   
                             </td>
                                   
                             -->
                             
                             
                                   </tr>
                                   
                                     <tr>
                                   <td class="lbl_txt">College Details :</td>
                                   <td><input type="text" name="details" class="txt" /></td>
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
                            <h3>Developed by : Nistian group &copy;2015</h3>
                          </td>
                       </tr>
                       
                    </table>
                </tr>
          </table>
       
    </body>
</html>