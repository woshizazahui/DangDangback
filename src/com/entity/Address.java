package com.entity;

public class Address {
    private Short id;

    private String recevier;

    private String address;

    private String postcode;

    private String phone;

    private Short isautoaddress;

    private Short userid;

    public Short getId() {
        return id;
    }

    public void setId(Short id) {
        this.id = id;
    }

    public String getRecevier() {
        return recevier;
    }

    public void setRecevier(String recevier) {
        this.recevier = recevier == null ? null : recevier.trim();
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address == null ? null : address.trim();
    }

    public String getPostcode() {
        return postcode;
    }

    public void setPostcode(String postcode) {
        this.postcode = postcode == null ? null : postcode.trim();
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone == null ? null : phone.trim();
    }

    public Short getIsautoaddress() {
        return isautoaddress;
    }

    public void setIsautoaddress(Short isautoaddress) {
        this.isautoaddress = isautoaddress;
    }

    public Short getUserid() {
        return userid;
    }

    public void setUserid(Short userid) {
        this.userid = userid;
    }

	@Override
	public String toString() {
		return "Address [id=" + id + ", recevier=" + recevier + ", address=" + address + ", postcode=" + postcode
				+ ", phone=" + phone + ", isautoaddress=" + isautoaddress + ", userid=" + userid + "]";
	}
}