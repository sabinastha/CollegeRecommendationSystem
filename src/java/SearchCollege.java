import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import java.sql.*;
import java.util.*;

public class SearchCollege extends HttpServlet {
public void doPost(HttpServletRequest request, HttpServletResponse response)
throws ServletException,IOException{
response.setContentType("text/html"); 
HttpSession session = request.getSession(true);
List collegelist=new ArrayList();
Connection con = null;

String url = "jdbc:mysql://localhost:3306/";
String db = "practise";
String driver = "com.mysql.jdbc.Driver";
String user = "root";
String pass = "root";

String isbncode="";
String bookcategory="";
isbncode=request.getParameter("isbncode");
bookcategory=request.getParameter("bookcategories");
String sqlqueary="SELECT * FROM search WHERE college_name LIKE '%%' ";
if(isbncode!=null && !(isbncode.equals(""))){
sqlqueary+=" and location='"+isbncode+"'";
}
if(bookcategory!=null && !(bookcategory.equals("-1"))){
sqlqueary+=" and program='"+bookcategory+"'";
}

try{
Class.forName(driver);
con = DriverManager.getConnection(url+db, user, pass);
try{
Statement st = con.createStatement();
ResultSet rs = st.executeQuery(sqlqueary);
while (rs.next()) {
List search=new ArrayList();
search.add(rs.getInt(1));
search.add(rs.getInt(2));
search.add(rs.getString(3));
search.add(rs.getString(4));
collegelist.add(search);
}
}catch (SQLException s){
System.out.println("SQL statement is not executed!");
}
}
catch (Exception e){
e.printStackTrace();
}
request.setAttribute("collegelist",collegelist); 
RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/searchcollege.jsp");
dispatcher.forward(request, response); 
}

}