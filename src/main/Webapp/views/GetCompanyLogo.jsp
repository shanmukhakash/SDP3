<%@page import="java.sql.*"%>
<%@ page import="java.io.*,java.util.*" %>
<%@ page trimDirectiveWhitespaces="true" %>
<% 
Blob image = null;
Connection con = null;
byte[ ] imgData = null ;
Statement stmt = null;
ResultSet rs = null;

try 
{
	Class.forName("com.mysql.jdbc.Driver");
	//System.out.println("Driver class loaded");
	con = DriverManager.getConnection("jdbc:mysql://localhost:3306/sdp3?characterEncoding=utf8","root","root");
	rs = stmt.executeQuery("select company_logo from jobs_table where job_id=" + request.getParameter("jid"));

while (rs.next()) 
{
image = rs.getBlob(1);
imgData = image.getBytes(1,(int)image.length());
}
response.setContentType("image/gif");
OutputStream o = response.getOutputStream();
o.write(imgData);
o.flush();
o.close();

} 
catch (Exception e) 
{
out.println("Unable To Display image");
out.println("Image Display Error=" + e.getMessage());
return;
} 
finally 
{
try 
{
rs.close();
stmt.close();
con.close();
} 
catch (SQLException e) 
{
e.printStackTrace();
}
}

%>