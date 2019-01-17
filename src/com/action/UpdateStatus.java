package com.action;

import com.service.GoodsService;

public class UpdateStatus {
	private String id;
	private String status;
	private String pageIndex;
	private GoodsService gs;
	
	public GoodsService getGs() {
		return gs;
	}
	public void setGs(GoodsService gs) {
		this.gs = gs;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public String getPageIndex() {
		return pageIndex;
	}
	public void setPageIndex(String pageIndex) {
		this.pageIndex = pageIndex;
	}
	public String execute(){
		int idN=Integer.valueOf(id);
		System.out.println("id:     "+idN+"       status:"+status);
		if(gs.updateStatus(idN, status)){
			//更改成功
			return "success";
		}else {
			//更改失败
			return null;
		}
		
	}
}
