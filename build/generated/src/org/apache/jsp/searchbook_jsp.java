package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.util.*;;

public final class searchbook_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\" \"http://www.w3.org/TR/html4/loose.dtd\">\n");
      out.write("\n");
      out.write("<html>\n");
      out.write("\n");
      out.write("<head>\n");
      out.write("\n");
      out.write("<meta http-equiv=\"Content-Type\" content=\"text/html; charset=ISO-8859-1\">\n");
      out.write("\n");
      out.write("<title>Search College</title>\n");
      out.write("\n");
      out.write("</head>\n");
      out.write("\n");
      out.write("<body>\n");
      out.write("\n");
      out.write("<table align=\"center\">\n");
      out.write("\n");


List booklist=new ArrayList();

booklist=(ArrayList)request.getAttribute("booklist");

if(booklist!=null && booklist.size()>0 ){


      out.write("\n");
      out.write("\n");
      out.write("<h2 align=\"center\">College List</h2>\n");
      out.write("\n");
      out.write("<tr>\n");
      out.write("\n");
      out.write("<th>College Location</th>\n");
      out.write("\n");
      out.write("<th>College Name</th>\n");
      out.write("\n");
      out.write("<th>Category</th>\n");
      out.write("\n");
      out.write("</tr>\n");
      out.write("\n");


for(int i=0;i<booklist.size();i++){

List book=(List)booklist.get(i);


      out.write("\n");
      out.write("\n");
      out.write("<tr>\n");
      out.write("\n");
      out.write("<td>");
      out.print(book.get(1) );
      out.write("</td>\n");
      out.write("\n");
      out.write("<td>");
      out.print(book.get(2) );
      out.write("</td>\n");
      out.write("\n");
      out.write("<td>");
      out.print(book.get(3) );
      out.write("</td>\n");
      out.write("\n");
      out.write("</tr>\n");
      out.write("\n");


}

}else{


      out.write("\n");
      out.write("<center>\n");
      out.write("Not  Available  Any College Details\n");
      out.write("</center>\n");
}
      out.write("\n");
      out.write("\n");
      out.write("</table>\n");
      out.write("\n");
      out.write("</body>\n");
      out.write("\n");
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
