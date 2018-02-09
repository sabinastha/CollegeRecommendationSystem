package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class Form1_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("<head>\n");
      out.write("    <title>Form</title>\n");
      out.write("\n");
      out.write("    <link rel=\"stylesheet\" type=\"text/css\" href=\"myStyle.css\">\n");
      out.write("\n");
      out.write("    <!-- Latest compiled and minified CSS -->\n");
      out.write("    <link rel=\"stylesheet\" href=\"https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css\" integrity=\"sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u\" crossorigin=\"anonymous\">\n");
      out.write("\n");
      out.write("    <!-- Optional theme -->\n");
      out.write("    <link rel=\"stylesheet\" href=\"https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css\" integrity=\"sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp\" crossorigin=\"anonymous\">\n");
      out.write("\n");
      out.write("    <!-- Latest compiled and minified JavaScript -->\n");
      out.write("    <script src=\"https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js\" integrity=\"sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa\" crossorigin=\"anonymous\"></script>\n");
      out.write("</head>\n");
      out.write("<body>\n");
      out.write("    <h1><u>Register Here</u></h1>\n");
      out.write("    <div id =\"errorMsg\" class=\"alert-danger\" role=\"alert\"></div>\n");
      out.write("    \n");
      out.write("<form id=\"frm\" class=\"form-horizontal\", method=\"POST\" action=\"formconnectionsql.jsp\" onsubmit=\"return validation();\">\n");
      out.write("  <fieldset>\n");
      out.write("  <legend>Personal Information</legend>\n");
      out.write("\n");
      out.write("  <div class=\"form-group\">\n");
      out.write("    <label class=\"control-label col-sm-2\" for=\"email\">First Name:</label>\n");
      out.write("    <div class=\"col-sm-8\">\n");
      out.write("      <input type=\"text\" name=\"firstname\" class=\"form-control\" id=\"firstname\" placeholder=\"Enter your First Name\">\n");
      out.write("    </div>\n");
      out.write("  </div>\n");
      out.write("\n");
      out.write("  <div class=\"form-group\">\n");
      out.write("    <label class=\"control-label col-sm-2\" for=\"email\">Last Name:</label>\n");
      out.write("    <div class=\"col-sm-8\">\n");
      out.write("      <input type=\"text\" name=\"lastname\" class=\"form-control\" id=\"lastname\" placeholder=\"Enter your Last Name\">\n");
      out.write("    </div>\n");
      out.write("  </div>\n");
      out.write("\n");
      out.write("\n");
      out.write("  <div class=\"form-group\">\n");
      out.write("    <label class=\"control-label col-sm-2\" for=\"email\">Email:</label>\n");
      out.write("    <div class=\"col-sm-8\">\n");
      out.write("      <input type=\"email\" name=\"email\" class=\"form-control\" id=\"email\" placeholder=\"Enter your E-mail\">\n");
      out.write("    </div>\n");
      out.write("  </div>\n");
      out.write("  \n");
      out.write("  <div class=\"form-group\">\n");
      out.write("    <label class=\"control-label col-sm-2\" for=\"password\">Password:</label>\n");
      out.write("    <div class=\"col-sm-8\">\n");
      out.write("      <input type=\"password\" name=\"password\" class=\"form-control\" id=\"password\" placeholder=\"Enter your Password\">\n");
      out.write("    </div>\n");
      out.write("  </div>\n");
      out.write("\n");
      out.write(" <div class=\"form-group\">\n");
      out.write("    <label class=\"control-label col-sm-2\" for=\"mobile\">Mobile N0.:</label>\n");
      out.write("    <div class=\"col-sm-8\">\n");
      out.write("      <input type=\"text\" name=\"mobile\" class=\"form-control\" id=\"mobile\" placeholder=\"Enter yor Mobile Number\">\n");
      out.write("    </div>\n");
      out.write("  </div>\n");
      out.write("  \n");
      out.write("  <div class=\"form-group\">\n");
      out.write("    <label class=\"control-label col-sm-2\" for=\"address\">Address:</label>\n");
      out.write("    <div class=\"col-sm-8\">\n");
      out.write("      <input type=\"text\" name=\"address\" class=\"form-control\" id=\"address\" placeholder=\"Enter your Address \">\n");
      out.write("    </div>\n");
      out.write("  </div>\n");
      out.write("\n");
      out.write("  <div class=\"form-group\">\n");
      out.write("    <label class=\"control-label col-sm-2\" for=\"gender\">Gender:</label>\n");
      out.write("    <div class=\"col-sm-8\">\n");
      out.write("      <input type=\"radio\" name=\"gender\" value=\"Male\"> Male\n");
      out.write("      <input type=\"radio\" name=\"gender\" value=\"Female\"> Female\n");
      out.write("    </div>\n");
      out.write("  </div>\n");
      out.write("  \n");
      out.write("  <div class=\"form-group\">\n");
      out.write("    <label class=\"control-label col-sm-2\" for=\"address\">Username:</label>\n");
      out.write("    <div class=\"col-sm-8\">\n");
      out.write("      <input type=\"text\" name=\"uname\" class=\"form-control\" id=\"uname\" placeholder=\"Enter your Username \">\n");
      out.write("    </div>\n");
      out.write("  </div>\n");
      out.write("\n");
      out.write("  <div class=\"form-group\">\n");
      out.write("    <div class=\"col-sm-offset-2 col-sm-10\">\n");
      out.write("      <button type=\"submit\" class=\"btn btn-default\"><a href=\"index1.html\">Submit</a></button>\n");
      out.write("    </div>\n");
      out.write("  </div>\n");
      out.write("  </fieldset>\n");
      out.write("    </form>\n");
      out.write("    \n");
      out.write("    <script type=\"text/javascript\">\n");
      out.write("        function validation(){\n");
      out.write("            var errorMessage = '';\n");
      out.write("\n");
      out.write("            /*Name Validation*/\n");
      out.write("            var txt=document.getElementById('firstname').value;\n");
      out.write("            var txt=txt.trim();\n");
      out.write("            if(txt==''||!isNaN(parseInt(txt))||txt.length==0){\n");
      out.write("                \n");
      out.write("                errorMessage = 'First Name can not be left empty or contain number. <br>';\n");
      out.write("                \n");
      out.write("            }\n");
      out.write("            if(txt.length>8){\n");
      out.write("                errorMessage='Name must be less than 15 character.<br>';\n");
      out.write("                    \n");
      out.write("            }\n");
      out.write("            \n");
      out.write("            var txt=document.getElementById('lastname').value;\n");
      out.write("            var txt=txt.trim();\n");
      out.write("            if(txt==''||!isNaN(parseInt(txt))||txt.length==0){\n");
      out.write("                errorMessage= errorMessage+'Last Name can not be left empty or contain number.<br>';\n");
      out.write("            }\n");
      out.write("            \n");
      out.write("            /*Email Validation*/\n");
      out.write("            var txt=document.getElementById('email').value;\n");
      out.write("            if(txt == ''){\n");
      out.write("                \n");
      out.write("                errorMessage = errorMessage +'Email can not be left empty.<br>';\n");
      out.write("                \n");
      out.write("            }\n");
      out.write("            else{\n");
      out.write("                var re = /^(([^<>()\\[\\]\\\\.,;:\\s@\"]+(\\.[^<>()\\[\\]\\\\.,;:\\s@\"]+)*)|(\".+\"))@((\\[[0-9]{1,3}\\.[0-9]{1,3}\\.[0-9]{1,3}\\.[0-9]{1,3}])|(([a-zA-Z\\-0-9]+\\.)+[a-zA-Z]{2,}))$/;\n");
      out.write("                if(!re.test(txt)){\n");
      out.write("                    errorMessage = errorMessage +'Invalid Email address.';\n");
      out.write("                }       \n");
      out.write("            }\n");
      out.write("            \n");
      out.write("                        /*Password Validation*/\n");
      out.write("            var txt=document.getElementById('password').value;\n");
      out.write("            if(txt == ''){\n");
      out.write("                \n");
      out.write("                errorMessage = errorMessage +'Password can not be left empty.<br>';\n");
      out.write("                \n");
      out.write("            }\n");
      out.write("                        \n");
      out.write("            /*Address Validation*/\n");
      out.write("            var txt=document.getElementById('address').value;\n");
      out.write("            if(txt == ''){\n");
      out.write("                \n");
      out.write("                errorMessage = errorMessage +'Address can not be left empty.<br>';\n");
      out.write("                \n");
      out.write("            }\n");
      out.write("\n");
      out.write("            /*Mobile Number Validation*/\n");
      out.write("            var mobnum=document.getElementById('mobile').value;\n");
      out.write("            if(mobnum==''|| isNaN(parseInt(mobnum))||mobnum.length==0){\n");
      out.write("                \n");
      out.write("                errorMessage = errorMessage +' Mobile Number can not be left empty or text.<br>';\n");
      out.write("            }\n");
      out.write("            if (mobnum.length!=10) {\n");
      out.write("                errorMessage=errorMessage+'Enter 10 numbers<br>';\n");
      out.write("            }\n");
      out.write("\n");
      out.write("\n");
      out.write("            /*Gender Validation*/\n");
      out.write("            var gender=document.getElementsByName('gender');\n");
      out.write("            if(!gender[0].checked && !gender[1].checked){\n");
      out.write("                errorMessage= errorMessage+'Select Gender<br>';\n");
      out.write("            }\n");
      out.write("            \n");
      out.write("            //var check = document.getElementsByName('chbox');\n");
      out.write("            //if(!check[0].checked && !check[1].checked && !check[2].checked &&!check[3].checked ){\n");
      out.write("            //  errorMessage = errorMessage+'Hobby can not be left empty.<br>';\n");
      out.write("            //}\n");
      out.write("\n");
      out.write("            \n");
      out.write("\n");
      out.write("            if(errorMessage!=''){\n");
      out.write("                document.getElementById('errorMsg').innerHTML=errorMessage;\n");
      out.write("                return false; \n");
      out.write("            }           \n");
      out.write("            return true;\n");
      out.write("             if (isValid) {\n");
      out.write("                            window.location = 'Form1.jsp';\n");
      out.write("                        }\n");
      out.write("                        return false;\n");
      out.write("\n");
      out.write("        }\n");
      out.write("\n");
      out.write("    </script>\n");
      out.write("</body>\n");
      out.write("</html>\n");
      out.write("\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
