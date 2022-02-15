package com.klef.demo;

import java.io.File;
import java.sql.Blob;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="jobs_table")
public class Jobs 
{
	@Id
	@Column(name="job_id")
	private int jid;
	@Column(name="company_name")
	private String cname;
	@Column(name="job_title")
	private String title;
	@Column(name="job_date")
	private String jdate;
	@Column(name="job_skills")
	private String jskills;
	@Column(name="job_desc")
	private String description;
	@Column(name="job_salary")
	private double salary;
	@Column(name="job_minssc")
	private double minssc;
	@Column(name="job_mininter")
	private double mininter;
	@Column(name="job_mincgpa")
	private double mincgpa;
	@Column(name="minbacklogs")
	private int minbacklogs;
	@Column(name="openings")
	private int openings;
	
	public int getMinbacklogs() {
		return minbacklogs;
	}
	public void setMinbacklogs(int minbacklogs) {
		this.minbacklogs = minbacklogs;
	}
	public int getOpenings() {
		return openings;
	}
	public void setOpenings(int openings) {
		this.openings = openings;
	}
	public int getJid() {
		return jid;
	}
	public void setJid(int jid) {
		this.jid = jid;
	}
	public String getCname() {
		return cname;
	}
	public void setCname(String cname) {
		this.cname = cname;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getJdate() {
		return jdate;
	}
	public void setJdate(String jdate) {
		this.jdate = jdate;
	}
	public String getJskills() {
		return jskills;
	}
	public void setJskills(String jskills) {
		this.jskills = jskills;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public double getSalary() {
		return salary;
	}
	public void setSalary(double salary) {
		this.salary = salary;
	}
	public double getMinssc() {
		return minssc;
	}
	public void setMinssc(double minssc) {
		this.minssc = minssc;
	}
	public double getMininter() {
		return mininter;
	}
	public void setMininter(double mininter) {
		this.mininter = mininter;
	}
	public double getMincgpa() {
		return mincgpa;
	}
	public void setMincgpa(double mincgpa) {
		this.mincgpa = mincgpa;
	}
}
