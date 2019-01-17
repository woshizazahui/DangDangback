package com.action;

import static org.hamcrest.CoreMatchers.nullValue;

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

import freemarker.core.ReturnInstruction.Return;
import javassist.bytecode.stackmap.BasicBlock.Catch;

public class UpdateGoods extends ActionSupport{
	private Goods goods;
	private GoodsService gs;
	private File upload;//接受表单上传文件
	private String uploadFileName;//接受文件的名字
	
	
	public GoodsService getGs() {
		return gs;
	}
	public void setGs(GoodsService gs) {
		this.gs = gs;
	}
	public String getUploadFileName() {
		return uploadFileName;
	}
	public void setUploadFileName(String uploadFileName) {
		this.uploadFileName = uploadFileName;
	}
	public Goods getGoods() {
		return goods;
	}
	public void setGoods(Goods goods) {
		this.goods = goods;
	}
	public File getUpload() {
		return upload;
	}
	public void setUpload(File upload) {
		this.upload = upload;
	}
	public String execute() throws IOException{
		
		//更新数据库中的信息
		String path=ServletActionContext.getServletContext().getRealPath("/productImages")+"\\"+uploadFileName;
		
		String coverurlString=ServletActionContext.getRequest().getContextPath()+"/productImages/"+uploadFileName;
		
		goods.setCoverurl(coverurlString);
		gs.updateGoodsById(goods);
		//上传图片
		InputStream in=null;
		OutputStream out=null;
		try{
		in=new FileInputStream(upload);
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
		}	catch(Exception e){
			e.printStackTrace();
		}finally{
			
			out.close();
			in.close();
		}
		return "success";
	}
	

	
}
