<%@page import="java.text.SimpleDateFormat,java.util.Date"%>
<%@page import="javax.mail.internet.MimeMessage"%>
<%@page import="javax.mail.Transport"%>
<%@page import="javax.mail.Message"%>
<%@page import="javax.mail.internet.InternetAddress"%>
<%@page import="javax.mail.Session"%>
<%@page import="java.sql.*"%>
<%@ page import="java.io.*"%>
<%@ page import="java.util.*"%>


<%
String subject = "SAS Credentails";
String messageText = "Dear ${fname} ${lname}, Your Credentails are \nID: ${sid} Password: ${password}\n";
String host = "smtp.gmail.com";
 String user ="placement.sas@gmail.com";
          
          String pass ="Sas@4213"; 
          
          String SSL_FACTORY = "javax.net.ssl.SSLSocketFactory";
          
          String to ="shanmukhakash.12@gmail.com"; 

          String from ="placement.sas@gmail.com";

          
          boolean sessionDebug = true;

Properties props = System.getProperties();
props.put("mail.host", host);
props.put("mail.transport.protocol.", "smtp");
props.put("mail.smtp.auth", "true");
props.put("mail.smtp.", "true");
props.put("mail.smtp.port", "465");
props.put("mail.smtp.socketFactory.fallback", "false");
props.put("mail.smtp.socketFactory.class", SSL_FACTORY);
Session mailSession = Session.getDefaultInstance(props, null);
mailSession.setDebug(sessionDebug);
Message msg = new MimeMessage(mailSession);
msg.setFrom(new InternetAddress(from));
InternetAddress[] address = {new InternetAddress(to)};
msg.setRecipients(Message.RecipientType.TO, address);
msg.setSubject(subject);
msg.setContent(messageText, "text/html"); // use setText if you want to send text
Transport transport = mailSession.getTransport("smtp");
transport.connect(host, user, pass);
transport.sendMessage(msg, msg.getAllRecipients());    
    
out.println("<script type=\"text/javascript\">");
out.println("alert('Mail Sent Successfully!!');");
out.println("location='addStudent';");
out.println("</script>");

%>