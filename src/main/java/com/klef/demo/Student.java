package com.klef.demo;

import java.io.File;
import java.sql.Blob;
import java.sql.Clob;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="Student_table")
public class Student 
{
	@Id
	@Column(name="Student_id")
	private int id;
	@Column(name="Student_fname")
	private String fname;
	@Column(name="Student_lname")
	private String lname;
	@Column(name="Student_fathername")
	private String fathername;
	@Column(name="Student_mothername")
	private String mothername;
	@Column(name="Student_gender")
	private String gender;
	@Column(name="Student_year")
	private int year;
	@Column(name="Student_dept")
	private String dept;
	@Column(name="Student_pmail")
	private String pmail;
	@Column(name="Student_collmail")
	private String collmail;
	@Column(name="Student_phno")
	private String phno;
	@Column(name="Student_spec")
	private String spec;
	@Column(name="Student_cgpa")
	private double cgpa;
	@Column(name="Student_backlogs")
	private int backlogs;
	@Column(name="Student_skills")
	private String skills;
	@Column(name="Student_projects")
	private String projects;
	@Column(name="Student_lang")
	private String lang;
	@Column(name="Student_resume")
	private String resume;
	@Column(name="Student_password")
	private String password;
	@Column(name="Student_photo")
	private String photo;
	@Column(name="student_ssc")
	private Double ssc;
	@Column(name="Student_sscfile")
	private String sscfile;
	@Column(name="student_inter")
	private Double inter;
	@Column(name="Student_interfile")
	private String interfile;
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getFname() {
		return fname;
	}
	public void setFname(String fname) {
		this.fname = fname;
	}
	public String getLname() {
		return lname;
	}
	public void setLname(String lname) {
		this.lname = lname;
	}
	public String getFathername() {
		return fathername;
	}
	public void setFathername(String fathername) {
		this.fathername = fathername;
	}
	public String getMothername() {
		return mothername;
	}
	public void setMothername(String mothername) {
		this.mothername = mothername;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public int getYear() {
		return year;
	}
	public void setYear(int year) {
		this.year = year;
	}
	public String getDept() {
		return dept;
	}
	public void setDept(String dept) {
		this.dept = dept;
	}
	public String getPmail() {
		return pmail;
	}
	public void setPmail(String pmail) {
		this.pmail = pmail;
	}
	public String getCollmail() {
		return collmail;
	}
	public void setCollmail(String collmail) {
		this.collmail = collmail;
	}
	public String getPhno() {
		return phno;
	}
	public void setPhno(String phno) {
		this.phno = phno;
	}
	public String getSpec() {
		return spec;
	}
	public void setSpec(String spec) {
		this.spec = spec;
	}
	public double getCgpa() {
		return cgpa;
	}
	public void setCgpa(double cgpa) {
		this.cgpa = cgpa;
	}
	public int getBacklogs() {
		return backlogs;
	}
	public void setBacklogs(int backlogs) {
		this.backlogs = backlogs;
	}
	public String getSkills() {
		return skills;
	}
	public void setSkills(String skills) {
		this.skills = skills;
	}
	public String getProjects() {
		return projects;
	}
	public void setProjects(String projects) {
		this.projects = projects;
	}
	public String getLang() {
		return lang;
	}
	public void setLang(String lang) {
		this.lang = lang;
	}
	public String getResume() {
		return resume;
	}
	public void setResume(String resume) {
		this.resume = resume;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getPhoto() {
		return photo;
	}
	public void setPhoto(String photo) {
		this.photo = photo;
	}
	public Double getSsc() {
		return ssc;
	}
	public void setSsc(Double ssc) {
		this.ssc = ssc;
	}
	public Double getInter() {
		return inter;
	}
	public void setInter(Double inter) {
		this.inter = inter;
	}
	public String getSscfile() {
		return sscfile;
	}
	public void setSscfile(String sscfile) {
		this.sscfile = sscfile;
	}
	public String getInterfile() {
		return interfile;
	}
	public void setInterfile(String interfile) {
		this.interfile = interfile;
	}
}
