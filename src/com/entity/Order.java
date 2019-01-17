package com.entity;

import java.math.BigDecimal;
import java.util.Date;

public class Order {
    private Short id;
    
    private String orderid;
    
    private BigDecimal price;

    private Date createtime;

    private Short userid;

    private Short addressid;

    private String orderstaus;
    
    private User user;
    
    private Address address;
    
   
    public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public Address getAddress() {
		return address;
	}

	public void setAddress(Address address) {
		this.address = address;
	}

	public Short getId() {
        return id;
    }

    public void setId(Short id) {
        this.id = id;
    }

    public BigDecimal getPrice() {
        return price;
    }

    public void setPrice(BigDecimal price) {
        this.price = price;
    }

    public Date getCreatetime() {
        return createtime;
    }

    public void setCreatetime(Date createtime) {
        this.createtime = createtime;
    }

    public Short getUserid() {
        return userid;
    }

    public void setUserid(Short userid) {
        this.userid = userid;
    }

    public Short getAddressid() {
        return addressid;
    }

    public void setAddressid(Short addressid) {
        this.addressid = addressid;
    }

    public String getOrderstaus() {
        return orderstaus;
    }

    public void setOrderstaus(String orderstaus) {
        this.orderstaus = orderstaus == null ? null : orderstaus.trim();
    }

	public String getOrderid() {
		return orderid;
	}

	public void setOrderid(String orderid) {
		this.orderid = orderid;
	}

	@Override
	public String toString() {
		return "Order [id=" + id + ", orderid=" + orderid + ", price=" + price + ", createtime=" + createtime
				+ ", userid=" + userid + ", addressid=" + addressid + ", orderstaus=" + orderstaus + ", user=" + user
				+ ", address=" + address + "]";
	}
}