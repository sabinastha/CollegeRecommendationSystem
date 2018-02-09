package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class search_jsp extends org.apache.jasper.runtime.HttpJspBase
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

      out.write("<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Transitional//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\">\n");
      out.write("\n");
      out.write("\n");
      out.write("<html xmlns=\"http://www.w3.org/1999/xhtml\">\n");
      out.write("<head>\n");
      out.write("<title>College Recommendation</title>\n");
      out.write("<meta http-equiv=\"Content-Type\" content=\"text/html; charset=iso-8859-1\" />\n");
      out.write("<link rel=\"stylesheet\" href=\"layout/styles/layout.css\" type=\"text/css\" />\n");
      out.write("\n");
      out.write("<link rel=\"stylesheet\" href=\"layout.css\" type=\"text/css\" />\n");
      out.write("\n");
      out.write("</head>\n");
      out.write("<body id=\"top\">\n");
      out.write("<div class=\"wrapper col1\">\n");
      out.write("  <div id=\"head\">\n");
      out.write("\n");
      out.write("      <h1><a href=\"index.html\">Explore College</a></h1>\n");
      out.write("    <p>And Begin your list</p>\n");
      out.write("    \n");
      out.write("\n");
      out.write("    <div id=\"topnav\">\n");
      out.write("      <ul>\n");
      out.write("        <li><a class=\"active\" href=\"index.html\">HOME</a></li>\n");
      out.write("       \n");
      out.write("          <li><a href=\"search.jsp\">SEARCH COLLEGE</a></li> \n");
      out.write("       <li><a href=\"service.jsp\">COLLEGE PROGRAM</a></li>\n");
      out.write("        <li><a href=\"#\">LIST OF COLLEGE</a>\n");
      out.write("          <ul>\n");
      out.write("            <li><a href=\"http://edusanjal.com/college/nist-college-banepa\">NIST College</a></li>\n");
      out.write("            <li><a href=\"http://www.gyankunj.edu.np/\">Gyankunj College</a></li>\n");
      out.write("            <li><a href=\"http://baylor.edu.np/\">Baylor College</a></li>\n");
      out.write("            <li><a href=\"http://www.collegesnepal.com/dhulikhel-sanjeevani-campus/\">Sanjivani College</a></li>\n");
      out.write("             <li><a href=\"http://www.khwopacollege.edu.np/\">Khwopa College</a></li>\n");
      out.write("               <li><a href=\"http://samriddhicollege.edu.np/\">Samriddhi College</a></li>\n");
      out.write("                  <li><a href=\"http://trinitycollege.edu.np/\">Trinity College</a></li>\n");
      out.write("                   <li><a href=\"http://www.ku.edu.np/eng/\">Kathmandu University</a></li>\n");
      out.write("          </ul>\n");
      out.write("        </li>\n");
      out.write("       </ul>\n");
      out.write("    </div>\n");
      out.write("     </div>\n");
      out.write("</div>\n");
      out.write("    <br>\n");
      out.write("   <br>\n");
      out.write("         <br>\n");
      out.write("      \n");
      out.write("  \n");
      out.write("             <center>    \n");
      out.write("             \n");
      out.write("<form method=\"post\" action=\"/searchbook/searchbook\">\n");
      out.write("\n");
      out.write("Location:\n");
      out.write("\n");
      out.write("<input type=\"text\" name=\"location\" value=\"\" />\n");
      out.write("<br>\n");
      out.write("    <br>\n");
      out.write("Program :\n");
      out.write("\n");
      out.write("<select name=\"bookcategories\">\n");
      out.write("\n");
      out.write("<option value=\"-1\">-Select Category-</option>\n");
      out.write("\n");
      out.write("<option value=\"BBS\">BBS</option>\n");
      out.write("\n");
      out.write("<option value=\"BBA\">BBA</option>\n");
      out.write("\n");
      out.write("<option value=\"Bsc.csit\">Bsc.csit</option>\n");
      out.write("\n");
      out.write("<option value=\"php\">php</option>\n");
      out.write("<option value=\"Bsc.General\">Bsc.General</option>\n");
      out.write("\n");
      out.write("</select>\n");
      out.write("<br>\n");
      out.write("    <br>\n");
      out.write("<input type=\"submit\" value=\"Search College\" />\n");
      out.write("\n");
      out.write("\n");
      out.write("</form>\n");
      out.write("         </center>\n");
      out.write("</body>\n");
      out.write("\n");
      out.write("</html>\n");
      out.write("                    \n");
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
