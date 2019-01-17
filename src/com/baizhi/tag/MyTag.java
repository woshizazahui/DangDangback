package com.baizhi.tag;

import java.io.IOException;
import java.io.StringWriter;

import javax.servlet.jsp.JspContext;
import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.PageContext;
import javax.servlet.jsp.tagext.SimpleTagSupport;
import javax.servlet.jsp.tagext.TagSupport;

import com.entity.Admin;

import freemarker.template.utility.Constants;
import freemarker.template.utility.SecurityUtilities;
import javassist.compiler.ast.NewExpr;

public class MyTag  extends TagSupport{
	private String resource;//标签属性
	
	public void setResource(String resource) {
		this.resource = resource;
	}
	public String getResource(){
		return this.resource;
	}
	@Override
	public int doStartTag() throws JspException {
		return EVAL_BODY_INCLUDE;
			
	}
	private boolean isManager(Admin a){
		Short power = a.getPower();
		if(power.equals("1")){
			return true;
		}
		return false;
	}
	
	
		
		
	
	
}
