package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;
import java.io.*;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.sql.Connection;

public final class service_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      response.setContentType("text/html; charset=ISO-8859-1");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("<!DOCTYPE html PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\" \"http://www.w3.org/TR/html4/loose.dtd\">\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<html xmlns=\"http://www.w3.org/1999/xhtml\">\n");
      out.write("<head>\n");
      out.write("<title>Explore College</title>\n");
      out.write("<meta http-equiv=\"Content-Type\" content=\"text/html; charset=iso-8859-1\" />\n");
      out.write("\n");
      out.write("<link rel=\"stylesheet\" href=\"layout.css\" type=\"text/css\" />\n");
      out.write("<script type=\"text/javascript\" src=\"layout/scripts/jquery.min.js\"></script>\n");
      out.write("<script type=\"text/javascript\" src=\"layout/scripts/jquery.slidepanel.setup.js\"></script>\n");
      out.write("<!-- Homepage Only Scripts -->\n");
      out.write("<script type=\"text/javascript\" src=\"layout/scripts/jquery.cycle.min.js\"></script>\n");
      out.write("<script type=\"text/javascript\">\n");
      out.write("$(function() {\n");
      out.write("    $('#featured_slide').after('<div id=\"fsn\"><ul id=\"fs_pagination\">').cycle({\n");
      out.write("        timeout: 5000,\n");
      out.write("        fx: 'fade',\n");
      out.write("        pager: '#fs_pagination',\n");
      out.write("        pause: 1,\n");
      out.write("        pauseOnPagerHover: 0\n");
      out.write("    });\n");
      out.write("});\n");
      out.write("</script>\n");
      out.write("<!-- End Homepage Only Scripts -->\n");
      out.write("</head>\n");
      out.write("<body>\n");
      out.write("    \n");
      out.write("    ");

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

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("    \n");
      out.write("    \n");
      out.write("     <div class=\"wrapper col1\">\n");
      out.write("  <div id=\"head\">\n");
      out.write("    <h1><a href=\"index.html\">Explore Colleges </a></h1>\n");
      out.write("    <p>Begin your list</p>\n");
      out.write("                     \n");
      out.write("          <br>        \n");
      out.write("    <div id=\"topnav\">\n");
      out.write("      <ul>\n");
      out.write("        <li><a href=\"index.html\">HOME</a></li>\n");
      out.write("            <li><a href=\"search.jsp\">SEARCH COLLEGE</a></li>\n");
      out.write("            <li><a class=\"active\" href=\"service.jsp\">COLLEGE PROGRAM</a></li>\n");
      out.write("             <li><a href=\"#\">LIST OF COLLEGE</a>\n");
      out.write("            <ul>\n");
      out.write("            <li><a href=\"http://edusanjal.com/college/nist-college-banepa\">NIST College</a></li>\n");
      out.write("            <li><a href=\"http://www.gyankunj.edu.np/\">Gyankunj College</a></li>\n");
      out.write("            <li><a href=\"http://baylor.edu.np/\">Baylor College</a></li>\n");
      out.write("            <li><a href=\"http://www.collegesnepal.com/dhulikhel-sanjeevani-campus/\">Sanjivani College</a></li>\n");
      out.write("             <li><a href=\"http://www.khwopacollege.edu.np/\">Khwopa College</a></li>\n");
      out.write("               <li><a href=\"http://samriddhicollege.edu.np/\">Samriddhi College</a></li>\n");
      out.write("                  <li><a href=\"http://trinitycollege.edu.np/\">Trinity College</a></li>\n");
      out.write("          </ul>\n");
      out.write("        </li>\n");
      out.write("           \n");
      out.write("      </ul><br>\n");
      out.write("           \n");
      out.write("    </div>\n");
      out.write("   \n");
      out.write("         </div>\n");
      out.write("  </div>\n");
      out.write(" \n");
      out.write("<div class=\"wrapper col4\">\n");
      out.write("  <div id=\"container\">\n");
      out.write("       <h1> View College Details</h1>\n");
      out.write("    <table border=\"1\" align=\"center\">\n");
      out.write("<tr>\n");
      out.write("<td>Id</td>\n");
      out.write("<td>College name</td>\n");
      out.write("<td>Address</td>\n");
      out.write("<td>Contact No</td>\n");
      out.write("<td>Email</td>\n");
      out.write("<td>Program</td>\n");
      out.write("<td>College Details</td>\n");
      out.write("</tr>\n");
      out.write("\n");
      out.write("\n");

try{
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String sql ="select * from book";
resultSet = statement.executeQuery(sql);
while(resultSet.next()){

      out.write("\n");
      out.write("<tr>\n");
      out.write("<td>");
      out.print(resultSet.getString("bookid") );
      out.write("</td>\n");
      out.write("<td>");
      out.print(resultSet.getString("book_name") );
      out.write("</td>\n");
      out.write("<td>");
      out.print(resultSet.getString("location") );
      out.write("</td>\n");
      out.write("<td>");
      out.print(resultSet.getString("contact") );
      out.write("</td>\n");
      out.write("<td>");
      out.print(resultSet.getString("email") );
      out.write("</td>\n");
      out.write("<td>");
      out.print(resultSet.getString("category") );
      out.write("</td>\n");
      out.write("<td>");
      out.print(resultSet.getString("details") );
      out.write("</td>\n");
      out.write("\n");
      out.write("</tr>\n");

}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}

      out.write("\n");
      out.write("    </table>\n");
      out.write("    </div>\n");
      out.write("  </div>\n");
      out.write("    \n");
      out.write("     \n");
      out.write("<div class=\"wrapper col4\">\n");
      out.write("  <div id=\"container\">\n");
      out.write("<h2>View College Program</h2>\n");
      out.write("\n");
      out.write("                <table border=\"1\" align=\"center\">\n");
      out.write("<tr>\n");
      out.write("<td>Id</td>\n");
      out.write("<td>College Program</td>\n");
      out.write("<td>Duration</td>\n");
      out.write("<td>Affiliated</td>\n");
      out.write("</tr>\n");

try{
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String sql ="select * from program";
resultSet = statement.executeQuery(sql);
while(resultSet.next()){

      out.write("\n");
      out.write("<tr>\n");
      out.write("<td>");
      out.print(resultSet.getString("id") );
      out.write("</td>\n");
      out.write("<td>");
      out.print(resultSet.getString("program") );
      out.write("</td>\n");
      out.write("<td>");
      out.print(resultSet.getString("duration") );
      out.write("</td>\n");
      out.write("<td>");
      out.print(resultSet.getString("affiliated") );
      out.write("</td>\n");
      out.write("</tr>\n");

}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}

      out.write("\n");
      out.write("</table>\n");
      out.write("\n");
      out.write("    </div>\n");
      out.write("</div>\n");
      out.write("<br>\n");
      out.write("<br>\n");
      out.write("\n");
      out.write("\n");
      out.write("    <div id=\"copyright\">\n");
      out.write("      <p class=\"fl_left\">Copyright &copy; 2017- All Rights Reserved - <a href=\"#\">Nistian Group</a></p>\n");
      out.write("      <br class=\"clear\" />\n");
      out.write("    </div>\n");
      out.write("  \n");
      out.write("</body>\n");
      out.write("</html>");
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
