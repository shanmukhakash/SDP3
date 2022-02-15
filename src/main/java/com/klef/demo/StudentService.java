package com.klef.demo;

import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class StudentService 
{
	@Autowired
	StudentRepository studentrepository;
	
	public void addstudentrecord(Student student)
	{
		  Configuration cfg = new Configuration();
			cfg.configure("hibernate.cfg.xml");
			
			SessionFactory sf = cfg.buildSessionFactory();
			Session session = sf.openSession();
					
			Transaction transaction = session.beginTransaction();
			session.save(student);
			transaction.commit();
			
			System.out.println("Object saved Successfully");
			session.close();
			sf.close();
	}
	
	HttpServletRequest req;
	HttpServletResponse res;
	public int irpchecklogin(int uid, String pwd) 
	{
		//System.out.println("Hello1");
		Configuration cfg = new Configuration();
		cfg.configure("hibernate1.cfg.xml");
		//System.out.println("Hello2");
		SessionFactory sf = cfg.buildSessionFactory();
		Session session = sf.openSession();
		//System.out.println("Hello3");
		Query qry1 = session.createQuery("from Irpadmin");
		List<Irpadmin>list1 = qry1.list();
		//System.out.println("Hello4");
		int c=0;
		//System.out.println(uid+" "+pwd);
		for(Irpadmin irpadmin: list1)
		{
			//System.out.println(irpadmin.getId()+" "+irpadmin.getPwd());
			//System.out.println("Hello5");
			if(irpadmin.getId()==uid)
			{
				//System.out.println("user is matched");
					if(irpadmin.getPwd().equals(pwd))
					{
						//System.out.println("pwd is matched");
						System.out.println("Login Success");
						c=1;
						//res.sendRedirect("/irpdashboard.jsp");
						//RequestDispatcher rd=req.getRequestDispatcher("/irpdashboard");
						//rd.forward(req, res);
						break;
					}
			}
		}
		Transaction transaction = session.beginTransaction();
		transaction.commit();
		session.close();
		sf.close();
		return c;
	}
	
	
	public void addjobnotification(Jobs jobs) {
		Configuration cfg = new Configuration();
		cfg.configure("hibernate2.cfg.xml");
		
		SessionFactory sf = cfg.buildSessionFactory();
		Session session = sf.openSession();
				
		Transaction transaction = session.beginTransaction();
		session.save(jobs);
		transaction.commit();
		
		System.out.println("Object saved Successfully");
		session.close();
		sf.close();
		
	}
	
	
	public int studchecklogin(int uid, String pwd) 
	{
		System.out.println("Hello1");
		Configuration cfg = new Configuration();
		cfg.configure("hibernate3.cfg.xml");
		//System.out.println("Hello2");
		SessionFactory sf = cfg.buildSessionFactory();
		Session session = sf.openSession();
		//System.out.println("Hello3");
		Query qry1 = session.createQuery("from Student");
		List<Student>list1 = qry1.list();
		//System.out.println("Hello4");
		int c=0;
		//System.out.println(uid+" "+pwd);
		for(Student student: list1)
		{
			//System.out.println(irpadmin.getId()+" "+irpadmin.getPwd());
			//System.out.println("Hello5");
			if(student.getId()==uid)
			{
				//System.out.println("user is matched");
					if(student.getPassword().equals(pwd))
					{
						//System.out.println("pwd is matched");
						System.out.println("Login Success");
						c=1;
						//res.sendRedirect("/irpdashboard.jsp");
						//RequestDispatcher rd=req.getRequestDispatcher("/irpdashboard");
						//rd.forward(req, res);
						break;
					}
			}
		}
		Transaction transaction = session.beginTransaction();
		transaction.commit();
		session.close();
		sf.close();
		return c;
	}


	public void deletejobs(int id) {
		Configuration cfg=new Configuration();
		 cfg.configure("hibernate2.cfg.xml");
		 SessionFactory sfg=cfg.buildSessionFactory();
		 Session session=sfg.openSession();
		 Transaction txt=session.beginTransaction();
		 Query qr1=session.createQuery("delete from Jobs where job_id="+id);
		 int n1=qr1.executeUpdate();
		txt.commit();
		session.close();
		sfg.close();
	}


	public int updatejobdetails(Jobs jobs) {
		Configuration cfg = new Configuration();
		cfg.configure("hibernate2.cfg.xml");
		SessionFactory sf = cfg.buildSessionFactory();
		Session session = sf.openSession();
		Transaction transaction = session.beginTransaction();
		System.out.println(jobs.getJdate());
		String date=jobs.getJdate();
		Double salary = jobs.getSalary();
		int jid = jobs.getJid();
		Query qry1 = session.createQuery("update Jobs set job_date=?0,job_salary=?1 where job_id=?2");
		qry1.setString(0,date);
		qry1.setDouble(1,salary);
		qry1.setInteger(2,jid);
		int n1 = qry1.executeUpdate();
		System.out.println("Updated");
		transaction.commit();
		session.close();
		sf.close();
		return n1;
	}


	public void deletestudent(int jid) {
		Configuration cfg=new Configuration();
		 cfg.configure("hibernate.cfg.xml");
		 SessionFactory sfg=cfg.buildSessionFactory();
		 Session session=sfg.openSession();
		 Transaction txt=session.beginTransaction();
		 Query qr1=session.createQuery("delete from Student where student_id="+jid);
		 int n1=qr1.executeUpdate();
		txt.commit();
		session.close();
		sfg.close();
	}


	public int updatestudentdetails(Student student) {
		Configuration cfg = new Configuration();
		cfg.configure("hibernate.cfg.xml");
		SessionFactory sf = cfg.buildSessionFactory();
		Session session = sf.openSession();
		Transaction transaction = session.beginTransaction();
		//System.out.println(student.getJdate());
		int sid = student.getId();
		int year = student.getYear();
		Double cgpa = student.getCgpa();
		int backlogs = student.getBacklogs();
		Query qry1 = session.createQuery("update Student set student_year="+year+",student_cgpa="+cgpa+",student_backlogs="+backlogs+" where student_id="+sid+"");
		int n1 = qry1.executeUpdate();
		System.out.println("Updated");
		transaction.commit();
		session.close();
		sf.close();
		return n1;
	}


	public int changepwd(int id, String oldpwd, String newpwd) {
		int n=0;
		System.out.println("1");
		System.out.println(id);
		System.out.println(oldpwd);
		System.out.println(newpwd);
		Configuration cfg = new Configuration();
		cfg.configure("hibernate.cfg.xml");
		SessionFactory sf = cfg.buildSessionFactory();
		Session session = sf.openSession();
		Transaction transaction = session.beginTransaction();
		//Student student = new Student();
		Query qry1 = session.createQuery("FROM Student s WHERE s.id=?0");
		qry1.setInteger(0, id);
		System.out.println("2");
		System.out.println(id);
		System.out.println(oldpwd);
		System.out.println(newpwd);
		qry1.uniqueResult();
			System.out.println("3");
			System.out.println(id);
			System.out.println(oldpwd);
			System.out.println(newpwd);
			List<Student>list1 = qry1.list();
			for(Student student: list1)
			{
			if(student.getPassword().equals(oldpwd))
			{
				System.out.println("4");
				System.out.println(id);
				System.out.println(oldpwd);
				System.out.println(newpwd);
				try {
				Connection con = null;
				Class.forName("com.mysql.jdbc.Driver");
				con = DriverManager.getConnection("jdbc:mysql://localhost:3306/sdp3?characterEncoding=utf8","root","root");
				PreparedStatement pstmt = con.prepareStatement("update Student_table set student_password=? where student_id=?");
				pstmt.setString(1, newpwd);
				pstmt.setInt(2, id);
				n = pstmt.executeUpdate();
				}
				catch(Exception e)
				{
					System.out.println(e);
				}
			}
			}
		transaction.commit();
		session.close();
		sf.close();
		return n;
	}


	public void userqueries(Queries query) {
		Configuration cfg = new Configuration();
		cfg.configure("hibernate4.cfg.xml");
		
		SessionFactory sf = cfg.buildSessionFactory();
		Session session = sf.openSession();
				
		Transaction transaction = session.beginTransaction();
		session.save(query);
		transaction.commit();
		
		System.out.println("Object saved Successfully");
		session.close();
		sf.close();
		
	}


	public int updateprofile(Student student) throws IOException, ServletException {
		int n1=0;
		int sid = student.getId();
		String lang = student.getLang();
		String phnno = student.getPhno();
		String pmail = student.getPmail();
		String proj = student.getProjects();
		String skills = student.getSkills();
		Double ssc= student.getSsc();
		Double inter = student.getInter();
		/*final Part filePart1 = req.getPart("sscfile");
        InputStream pdfFileBytes1 = null;
        final PrintWriter writer1 = res.getWriter();
		final Part filePart2 = req.getPart("interfile");
        InputStream pdfFileBytes2 = null;
        final PrintWriter writer2 = res.getWriter();*/
		try {
	        /*if (!filePart1.getContentType().equals("application/pdf"))
            {
				System.out.println("Insert PDF files only");
            }
            else if (filePart1.getSize()>2097152 ) //2mb
            {                  
          	  	System.out.println("File must be less than 2MB");  
            }
	        if (!filePart2.getContentType().equals("application/pdf"))
            {
				System.out.println("Insert PDF files only");
            }
            else if (filePart2.getSize()>2097152 ) //2mb
            {                  
          	  	System.out.println("File must be less than 2MB");  
            }
	        
	        pdfFileBytes1 = filePart1.getInputStream();  // to get the body of the request as binary data
	         final byte[] bytes1 = new byte[pdfFileBytes1.available()];
	         pdfFileBytes1.read(bytes1);
	         
	         pdfFileBytes2 = filePart2.getInputStream();  // to get the body of the request as binary data
	         final byte[] bytes2 = new byte[pdfFileBytes2.available()];
	         pdfFileBytes2.read(bytes2);*/
	        
			Connection con = null;
			Class.forName("com.mysql.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/sdp3?characterEncoding=utf8","root","root");
			PreparedStatement pstmt = con.prepareStatement("update student_table set student_lang=?,student_phno=?,student_pmail=?,student_projects=?,student_skills=?,student_ssc=?,student_inter=? where student_id=?");
			pstmt.setString(1, lang);
			pstmt.setString(2, phnno);
			pstmt.setString(3, pmail);
			pstmt.setString(4, proj);
			pstmt.setString(5, skills);
			pstmt.setDouble(6, ssc);
			//pstmt.setBytes(6,bytes1);
			pstmt.setDouble(7, inter);
			pstmt.setInt(8, sid);
			//pstmt.setBytes(8,bytes2);
			n1 = pstmt.executeUpdate();
			}
			catch(Exception e)
			{
				System.out.println(e);
			}
		return n1;
		
	}


	public void deletequery(int jid) {
		Configuration cfg=new Configuration();
		 cfg.configure("hibernate4.cfg.xml");
		 SessionFactory sfg=cfg.buildSessionFactory();
		 Session session=sfg.openSession();
		 Transaction txt=session.beginTransaction();
		 Query qr1=session.createQuery("delete from Queries where student_id="+jid);
		 int n1=qr1.executeUpdate();
		txt.commit();
		session.close();
		sfg.close();
	}


	public int applied(int jid, int studid, String cname, String jtitle, String resume) {
		System.out.println(jid);
		System.out.println(studid);
		System.out.println(cname);
		System.out.println(jtitle);
		System.out.println(resume);
		Connection con = null;
		int n=0;
		try {
			String status = "Applied";
			Class.forName("com.mysql.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/sdp3?characterEncoding=utf8","root","root");
			PreparedStatement pstmt = con.prepareStatement("insert into applied_table values(?,?,?,?,?,?)");
			pstmt.setInt(1, studid);
			pstmt.setString(2, cname);
			pstmt.setInt(3,jid);
			pstmt.setString(4, jtitle);
			pstmt.setString(5,resume);
			pstmt.setString(6, status);
			n = pstmt.executeUpdate();
			//return n;
			
		} catch (Exception e) {
			System.out.println(e);
		}
		return n;
	}


	public int updatecgpa(Student student) {
		Configuration cfg = new Configuration();
		cfg.configure("hibernate.cfg.xml");
		SessionFactory sf = cfg.buildSessionFactory();
		Session session = sf.openSession();
		Transaction transaction = session.beginTransaction();
		int sid = student.getId();
		Double cgpa = student.getCgpa();
		Query qry1 = session.createQuery("update Student set student_cgpa="+cgpa+" where student_id="+sid+"");
		int n1 = qry1.executeUpdate();
		System.out.println("Updated");
		transaction.commit();
		session.close();
		sf.close();
		return n1;
	}	
	
	public int updatebacklogs(Student student) {
		Configuration cfg = new Configuration();
		cfg.configure("hibernate.cfg.xml");
		SessionFactory sf = cfg.buildSessionFactory();
		Session session = sf.openSession();
		Transaction transaction = session.beginTransaction();
		int sid = student.getId();
		int backlogs = student.getBacklogs();
		Query qry1 = session.createQuery("update Student set student_backlogs="+backlogs+" where student_id="+sid+"");
		int n1 = qry1.executeUpdate();
		System.out.println("Updated");
		transaction.commit();
		session.close();
		sf.close();
		return n1;
	}	
	
}
