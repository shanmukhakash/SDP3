package com.klef.demo;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.Random;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class MainController 
{
    @Autowired
	StudentService studentservice;
    
	@GetMapping("/")
	public ModelAndView home()
	{
		ModelAndView mv = new ModelAndView();
		mv.setViewName("home");
		return mv;
	}
	
	@GetMapping("/irplogin")
	public ModelAndView irplogin()
	{
		ModelAndView mv = new ModelAndView();
		mv.setViewName("irplogin");
		return mv;
	}
	
	@GetMapping("/queries")
	public ModelAndView queries()
	{
		ModelAndView mv = new ModelAndView();
		mv.setViewName("queries");
		return mv;
	}
	
	@GetMapping("/studlogin")
	public ModelAndView studlogin()
	{
		ModelAndView mv = new ModelAndView();
		mv.setViewName("studlogin");
		return mv;
	}
	
	@GetMapping("/viewqueries")
	public ModelAndView viewqueries()
	{
		ModelAndView mv = new ModelAndView();
		mv.setViewName("viewqueries");
		return mv;
	}
	
	@GetMapping("/irphome")
	public ModelAndView irphome()
	{
		ModelAndView mv = new ModelAndView();
		mv.setViewName("irphome");
		return mv;
	}
	
	@GetMapping("/studhome")
	public ModelAndView studhome(HttpServletRequest req)
	{
		ModelAndView mv = new ModelAndView();
		mv.setViewName("studhome");
		return mv;
	}
	
	@GetMapping("/appliedstatus")
	public ModelAndView appliedstatus()
	{
		ModelAndView mv = new ModelAndView();
		mv.setViewName("appliedstatus");
		return mv;
	}
	
	@GetMapping("/studprofile")
	public ModelAndView studprofile()
	{
		ModelAndView mv = new ModelAndView();
		mv.setViewName("studprofile");
		return mv;
	}
	
	@GetMapping("/changepwd")
	public ModelAndView changepwd()
	{
		ModelAndView mv = new ModelAndView();
		mv.setViewName("changepwd");
		return mv;
	}
	
	@GetMapping("/addStudent")
	public ModelAndView addStudent()
	{
		ModelAndView mv = new ModelAndView();
		mv.setViewName("addStudent");
		return mv;
	}
	
	@GetMapping("/addJob")
	public ModelAndView addJob()
	{
		ModelAndView mv = new ModelAndView();
		mv.setViewName("addJobNotification");
		return mv;
	}
	
	@GetMapping("/viewstudents")
	public ModelAndView viewstudents()
	{
		ModelAndView mv = new ModelAndView();
		mv.setViewName("viewstudents");
		return mv;
	}
	
	@GetMapping("/viewjobs")
	public ModelAndView viewjobs()
	{
		ModelAndView mv = new ModelAndView();
		mv.setViewName("viewjobs");
		return mv;
	}
	
	@GetMapping("/checkResults")
	public ModelAndView checkResults()
	{
		ModelAndView mv = new ModelAndView();
		mv.setViewName("checkresults");
		return mv;
	}
	
	@GetMapping("/studlogout")
	public ModelAndView studlogout(HttpServletRequest req)
	{
		//HttpSession session = req.getSession();
		//session.invalidate();
		ModelAndView mv = new ModelAndView();
		mv.setViewName("studlogin");
		return mv;
	}
	
	@GetMapping("/irplogout")
	public ModelAndView irplogout(HttpServletRequest req)
	{
		HttpSession session = req.getSession();
		session.invalidate();
		ModelAndView mv = new ModelAndView();
		mv.setViewName("irplogin");
		return mv;
	}
	
	@PostMapping("/addstudentdata")
	public ModelAndView addstudentdata(@RequestParam("sid") int sid,@RequestParam("fname") String fname,@RequestParam("lname") String lname,
			@RequestParam("fathername") String fathername, @RequestParam("mothername") String mothername, @RequestParam("gender") String gender, @RequestParam("year") int year, @RequestParam("dept") String dept,
			@RequestParam("pmail") String pmail,@RequestParam("phno") String phno,@RequestParam("spec") String spec,
			@RequestParam("cgpa") double cgpa, @RequestParam("backlogs") int backlogs)
	{
	
      Student student = new Student();
      student.setId(sid);
      student.setFname(fname);
      student.setLname(lname);
      student.setFathername(fathername);
      student.setMothername(mothername);
      student.setGender(gender);
      student.setYear(year);
      student.setDept(dept);
      student.setPmail(pmail);
      String collmail;
      int temp;
      temp = student.getId();
      collmail = Integer.toString(temp)+"@kluniversity.in";
      student.setCollmail(collmail);
      student.setPhno(phno);
      student.setSpec(spec);
      student.setCgpa(cgpa);
      student.setBacklogs(backlogs);
      
      int leftLimit = 97; // letter 'a'
      int rightLimit = 122; // letter 'z'
      int targetStringLength = 10;
      Random random = new Random();

      String password = random.ints(leftLimit, rightLimit + 1)
        .limit(targetStringLength)
        .collect(StringBuilder::new, StringBuilder::appendCodePoint, StringBuilder::append)
        .toString();
      
      student.setPassword(password);
      studentservice.addstudentrecord(student);
      
      ModelAndView mv = new ModelAndView();
		mv.setViewName("sendmail");
		mv.addObject("sid",sid);
		mv.addObject("password",password);
		mv.addObject("fname",fname);
		mv.addObject("lname",lname);
		mv.addObject("collmail",collmail);
		return mv;
	}
	
	
	@PostMapping("/addjobnotification")
	public String addjobnotification(@RequestParam("jid") int jid,
			@RequestParam("cname") String cname,
			@RequestParam("jtitle") String jtitle,
			@RequestParam("jdate") String jdate,
			@RequestParam("jskills") String jskills,
			@RequestParam("jdesc") String jdesc,
			@RequestParam("jsalary") Double jsalary,
			@RequestParam("jssc") Double jssc,
			@RequestParam("jinter") Double jinter,
			@RequestParam("jcgpa") Double jcgpa,
			@RequestParam("minbacklogs") int minbacklogs,
			@RequestParam("openings") int openings)
	{
      Jobs jobs=new Jobs();
      jobs.setJid(jid);
      jobs.setCname(cname);
      jobs.setTitle(jtitle);
      jobs.setJdate(jdate);
      jobs.setJskills(jskills);
      jobs.setDescription(jdesc);
      jobs.setSalary(jsalary);
      jobs.setMinssc(jssc);
      jobs.setMininter(jinter);
      jobs.setMincgpa(jcgpa);
      jobs.setMinbacklogs(minbacklogs);
      jobs.setOpenings(openings);
      
      //System.out.println(jobs.getJid());
      
      studentservice.addjobnotification(jobs);
      
      return "/viewjobs";
	
	}
	
	@PostMapping("/irpchecklogin")
	public String irpchecklogin(@RequestParam("userid") int uid,@RequestParam("password") String pwd , HttpServletRequest req) 
	{
		HttpSession session = req.getSession();
		session.setAttribute("irpadminid", uid);
		int f=studentservice.irpchecklogin(uid,pwd);
		if(f==1)
			return "/viewstudents";
		else
			return "/irplogin";
	}
	
	@PostMapping("/studchecklogin")
	public String studchecklogin(@RequestParam("userid") int uid,@RequestParam("password") String pwd , HttpServletRequest req)
	{
		int f=studentservice.studchecklogin(uid,pwd);
		System.out.println(uid);
		HttpSession session = req.getSession();
		session.setAttribute("studid", uid);
		int id=(int)session.getAttribute("studid");
		System.out.println(id);
		if(f==1)
		{
			return "/studhome";
		}
		else
			return "/studlogin";
	}
	
	@GetMapping("/deletejobs/{jid}")
	public ModelAndView deletejobs(@PathVariable("jid") int jid)
	{
		System.out.println(jid);
		studentservice.deletejobs(jid);
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("redirect:/viewjobs");
		return mv;
	}
	
	@GetMapping("/deletequery/{jid}")
	public ModelAndView deletequery(@PathVariable("jid") int jid)
	{
		System.out.println(jid);
		studentservice.deletequery(jid);
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("redirect:/viewqueries");
		return mv;
	}
	
	@GetMapping("/updatejobs/{jid}")
	public ModelAndView updatejobs(@PathVariable("jid") int jid)
	{
		ModelAndView mv = new ModelAndView();
		mv.setViewName("updatejobs");
		mv.addObject("jid",jid);
		return mv;
	}
	
	@GetMapping("/deletestudent/{jid}")
	public ModelAndView deletestudent(@PathVariable("jid") int jid)
	{
		System.out.println(jid);
		studentservice.deletestudent(jid);
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("redirect:/viewstudents");
		return mv;
	}
	
	/*@GetMapping("/updatestudents")
	public ModelAndView updatestudents()
	{
		ModelAndView mv = new ModelAndView();
		//mv.addObject("sid",sid);
		mv.setViewName("redirect:/updatestudents");
		return mv;
	}*/
	
	@GetMapping("/updatestudent/{sid}")
	public ModelAndView updatestudent(@PathVariable("sid") int sid)
	{
		ModelAndView mv = new ModelAndView();
		mv.addObject("sid",sid);
		mv.setViewName("updatestudents");
		return mv;
	}
	
	@PostMapping("/updatejobdetails/{jid}")
	public ModelAndView updatejobdetails(@PathVariable("jid") int jid,@RequestParam("jdate") String jdate,@RequestParam("jsalary") Double jsalary)
	{
		Jobs jobs=new Jobs();
		System.out.println(jdate);
	    jobs.setJid(jid);
	    jobs.setJdate(jdate);
	    jobs.setSalary(jsalary);
	    int n1 = studentservice.updatejobdetails(jobs);
	    if(n1==1)
	    {
	    	ModelAndView mv = new ModelAndView();
	    	mv.setViewName("redirect:/viewjobs");
			return mv;
	    }
	    else
	    {
	    	ModelAndView mv = new ModelAndView();
			mv.setViewName("redirect:/viewjobs");
			return mv;
	    }
	}
	
	@PostMapping("/updatestudentdetails/{sid}")
	public ModelAndView updatestudentdetails(@PathVariable("sid") int sid,@RequestParam("year") int year,@RequestParam("cgpa") Double cgpa,@RequestParam("backlogs") int backlogs)
	{
		Student student = new Student();
		student.setId(sid);
		student.setBacklogs(backlogs);
		student.setCgpa(cgpa);
		student.setYear(year);
	    int n1 = studentservice.updatestudentdetails(student);
	    if(n1==1)
	    {
	    	ModelAndView mv = new ModelAndView();
	    	mv.setViewName("redirect:/viewstudents");
			return mv;
	    }
	    else
	    {
	    	ModelAndView mv = new ModelAndView();
			mv.setViewName("redirect:/viewstudents");
			return mv;
	    }
	}
	
	@PostMapping("/changepwd/{studid}")
	public ModelAndView changepwd(@PathVariable("studid") int studid,@RequestParam("oldpwd") String oldpwd,@RequestParam("newpwd") String newpwd)
	{
		System.out.println(studid);
		System.out.println(oldpwd);
		System.out.println(newpwd);
		int n = studentservice.changepwd(studid,oldpwd,newpwd);
		if(n==1)
		{
			ModelAndView mv = new ModelAndView();
	    	mv.setViewName("redirect:/studhome");
			return mv;
		}
		else
		{
			ModelAndView mv = new ModelAndView();
	    	mv.setViewName("redirect:/changepwd");
			return mv;
		}
	}
	
	@RequestMapping("/userqueries/{studid}")
	public String userqueries(@PathVariable("studid") int studid,@RequestParam("sub") String sub,@RequestParam("desc") String desc,HttpServletRequest req)
	{
		System.out.println(sub);
	    System.out.println(desc);
	    System.out.println(studid);
	    Queries query = new Queries();
	    query.setSid(studid);
	    query.setSubject(sub);
	    query.setDescription(desc);
	    studentservice.userqueries(query);
	    return "/userqueries";
	}
	
	@RequestMapping("/applyjob/{jid}")
	public String applyjob(@PathVariable("jid") int jid,HttpServletRequest req)
	{
		System.out.println("Hello");
		HttpSession session = req.getSession();
		session.setAttribute("jid", jid);
		return "/jobdesc";
	}
	
	@PostMapping("/updateprofile")
	public ModelAndView updateprofile(@RequestParam("lang") String lang,
			@RequestParam("phnno") String phnno,
			@RequestParam("pmail") String pmail,
			@RequestParam("proj") String proj,
			@RequestParam("skills") String skills,
			@RequestParam("ssc") Double ssc,
			@RequestParam("inter") Double inter,
			HttpServletRequest req) throws IOException, ServletException
	{
		HttpSession session = req.getSession(true);
	    int studid = (int)session.getAttribute("studid");
		Student student = new Student();
		student.setLang(lang);
		student.setPhno(phnno);
		student.setPmail(pmail);
		student.setProjects(proj);
		student.setSkills(skills);
		student.setSsc(ssc);
		student.setInter(inter);
		student.setId(studid);
		
	    int n1 = studentservice.updateprofile(student);
	    if(n1==1)
	    {
	    	ModelAndView mv = new ModelAndView();
	    	mv.setViewName("redirect:/studprofile");
			return mv;
	    }
	    else
	    {
	    	ModelAndView mv = new ModelAndView();
			mv.setViewName("redirect:/studprofile");
			return mv;
	    }
	}
	
	@RequestMapping("/applied/{jid}")
	public String applied(@PathVariable("jid") int jid,@RequestParam("resume") String resume,HttpServletRequest req,HttpServletResponse res) throws IOException, ServletException
	{
		HttpSession session = req.getSession(true);
	    int studid = (int)session.getAttribute("studid");
	    System.out.println(studid+" "+"hello");
	    String cname = null;
		String jtitle = null;
	    Connection con = null;
		try {
			Class.forName("com.mysql.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/sdp3?characterEncoding=utf8","root","root");
			PreparedStatement pstmt = con.prepareStatement("select company_name,job_title from jobs_table where job_id=?");
			pstmt.setInt(1,jid);
			ResultSet rs = pstmt.executeQuery();
			if(rs.next())
			{
				cname = rs.getString("company_name");
				jtitle = rs.getString("job_title");
				int n = studentservice.applied(jid,studid,cname,jtitle,resume);
				if(n>0)
				{
					return "/appliedstatus";
				}
				else
				{
					return "/jobdesc";
				}
			}
			
		} catch (Exception e) {
			System.out.println(e);
		}
		return null;
	}
	
	
	@RequestMapping("/reply/{sub}")
	public ModelAndView reply(@PathVariable("sub") String sub,HttpServletRequest req)
	{
		HttpSession session = req.getSession(true);
	    int sid = (int)session.getAttribute("sid");
	    if(sub.equals("CGPA"))
	    {
	    	ModelAndView mv = new ModelAndView();
			mv.setViewName("changecgpa");
			return mv;
	    }
	    else if(sub.equals("Backlogs"))
	    {
	    	ModelAndView mv = new ModelAndView();
			mv.setViewName("changebacklogs");
			return mv;
	    }
	    else
	    {
	    	return null;
	    }
	}
	
	@GetMapping("/changecgpa")
	public ModelAndView changecgpa()
	{
		ModelAndView mv = new ModelAndView();
		mv.setViewName("changecgpa");
		return mv;
	}
	
	@GetMapping("/changebacklogs")
	public ModelAndView changebacklogs()
	{
		ModelAndView mv = new ModelAndView();
		mv.setViewName("changebacklogs");
		return mv;
	}
	
	@PostMapping("/updatecgpa")
	public String updatecgpa(@RequestParam("cgpa") Double cgpa,HttpServletRequest req)
	{
		System.out.println(cgpa);
		HttpSession session = req.getSession(true);
		int sid = (int)session.getAttribute("sid");
		Student student = new Student();
		student.setCgpa(cgpa);
		student.setId(sid);
		int n1 = studentservice.updatecgpa(student);
		if(n1>0)
		{
			return "/viewqueries";
		}
		else
		{
			return "/viewqueries";
		}
	}
	
	@PostMapping("/updatebacklogs")
	public String updatebacklogs(@RequestParam("backlogs") int backlogs,HttpServletRequest req)
	{
		System.out.println(backlogs);
		HttpSession session = req.getSession(true);
		int sid = (int)session.getAttribute("sid");
		Student student = new Student();
		student.setBacklogs(backlogs);
		student.setId(sid);
		int n1 = studentservice.updatebacklogs(student);
		if(n1>0)
		{
			return "/viewqueries";
		}
		else
		{
			return "/viewqueries";
		}
	}
	
	@RequestMapping("/updatestatus/{jid}")
	public String updatestatus(@PathVariable("jid") int jid,HttpServletRequest req)
	{
		HttpSession session = req.getSession(true);
		int studid = (int)session.getAttribute("studid");
		Connection con = null;
		try {
			Class.forName("com.mysql.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/sdp3?characterEncoding=utf8","root","root");
			PreparedStatement pstmt = con.prepareStatement("update applied_table set status=? where job_id=? and student_id=?");
			pstmt.setString(1,"Selected");
			pstmt.setInt(2, jid);
			pstmt.setInt(3, studid);
			pstmt.executeUpdate();
			
		} catch (Exception e) {
			System.out.println(e);
		}
		return "/checkresults";
	}
	
}
