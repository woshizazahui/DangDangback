package com.action;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

import org.apache.struts2.ServletActionContext;

import com.entity.Goods;
import com.opensymphony.xwork2.ActionSupport;
import com.service.GoodsService;

public class InsertBookAction  extends ActionSupport{
	private Goods goods;
	private File file;//用于接受上传的图片
	private String fileFileName;//图片的名字
	private GoodsService gs;
	public Goods getGoods() {
		return goods;
	}
	public void setGoods(Goods goods) {
		this.goods = goods;
	}
	public File getFile() {
		return file;
	}
	public void setFile(File file) {
		this.file = file;
	}
	
	public String getFileFileName() {
		return fileFileName;
	}
	public void setFileFileName(String fileFileName) {
		this.fileFileName = fileFileName;
	}
	public GoodsService getGs() {
		return gs;
	}
	public void setGs(GoodsService gs) {
		this.gs = gs;
	}
	public String execute() throws IOException{
		//插入数据
		String coverurl=ServletActionContext.getRequest().getContextPath()+"/productImages/"+fileFileName;
		goods.setCoverurl(coverurl);
		gs.insertGoods(goods);
		System.out.println(goods.getCategoryid());
		//上传图片
		String dir=ServletActionContext.getServletContext().getRealPath("/productImages");//获取服务器硬盘上地址
		String path=dir+"/"+fileFileName;//文件路径
		System.out.println(path);
		InputStream in=null;
		OutputStream out=null;
		try{
			in=new FileInputStream(file);
			out=new FileOutputStream(path);
			byte[] buf=new byte[1024];
			int len=0;
			while(true){
				if((len=in.read(buf))!=-1){
				out.write(buf, 0, len);
				}
				else {
					break;
				}
			}
		}catch (Exception e) {
			e.printStackTrace();
		}finally{
			out.close();
			in.close();
		}
		return "success";
	}
}
