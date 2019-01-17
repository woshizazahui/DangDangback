package com.action;

import java.io.File;
import java.io.FileOutputStream;
import java.lang.reflect.Field;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.ss.usermodel.CellStyle;
import org.apache.poi.ss.usermodel.Font;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.ss.usermodel.Sheet;
import org.apache.poi.ss.usermodel.Workbook;

import com.entity.Comment;
import com.entity.User;
import com.opensymphony.xwork2.ActionSupport;
import com.service.UserService;

public class DownMessage extends ActionSupport{
	
	private UserService us;
	private int pageIndex;
	
	public int getPageIndex() {
		return pageIndex;
	}

	public void setPageIndex(int pageIndex) {
		this.pageIndex = pageIndex;
	}

	public UserService getUs() {
		return us;
	}

	public void setUs(UserService us) {
		this.us = us;
	}


	public String execute() throws Exception{
		System.out.println(pageIndex);
		List<User> users=us.selectUsers(pageIndex);
		
		//创建Excel文件
		Workbook workbook=new HSSFWorkbook();
		//创建sheet
		Sheet sheet=workbook.createSheet("用户使用表");
		//设置列宽
		sheet.setDefaultColumnWidth(30);
		//设置样式
		CellStyle style = workbook.createCellStyle();
		Font font = workbook.createFont();
		font.setColor(Font.COLOR_RED);
		font.setBold(true);//加粗
		font.setFontName("宋体");
		style.setAlignment(CellStyle.ALIGN_CENTER);//设置居中
		style.setFont(font);
		//准备数据
		Class<? extends User> class1=new User().getClass();
		Field[] fields = class1.getDeclaredFields();//获取字段
		//创建行
		Row titleRow=sheet.createRow(0);
		for(int i=0;i<fields.length;++i){
			Comment comment=fields[i].getAnnotation(Comment.class);
			String value = comment.value();
			Cell cell = titleRow.createCell(i);
			cell.setCellStyle(style);
			cell.setCellValue(value);
		
		}
		//设置内容
		for(int i=0;i<users.size();++i){
			Row row = sheet.createRow(i+1);
			for(int j=0;j<fields.length;++j){
				fields[j].setAccessible(true);
				Object val = fields[j].get(users.get(i));
				Cell cell = row.createCell(j);
				String vall;
				if(val instanceof Date){
					val=(Date)val;
					vall=new SimpleDateFormat("yyyy-MM-dd").format(val);
				}else{
					vall=val.toString();
				}
				cell.setCellValue(vall);
			}
		}
		//通过流输出
		File file = new File("D:","用户信息表.xls");
		try{
			FileOutputStream out = new FileOutputStream(file);
			workbook.write(out);
		}catch (Exception e) {
			e.printStackTrace();
		}
		return "success";
	}
	
}
