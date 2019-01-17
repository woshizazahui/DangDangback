package com.entity;

import java.util.Date;

public class User {
	@Comment("ID")
    private Short id;
	@Comment("邮箱")
    private String email;
	@Comment("密码")
    private String password;
	@Comment("昵称")
    private String nickname;
	@Comment("注册时间")
    private Date regtime;
	@Comment("状态")
    private String state;
	@Comment("手机号")
    private String phone;

    public Short getId() {
        return id;
    }

    public void setId(Short id) {
        this.id = id;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email == null ? null : email.trim();
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password == null ? null : password.trim();
    }

    public String getNickname() {
        return nickname;
    }

    public void setNickname(String nickname) {
        this.nickname = nickname == null ? null : nickname.trim();
    }

    public Date getRegtime() {
        return regtime;
    }

    public void setRegtime(Date regtime) {
        this.regtime = regtime;
    }

    public String getState() {
        return state;
    }

    public void setState(String state) {
        this.state = state == null ? null : state.trim();
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone == null ? null : phone.trim();
    }

	@Override
	public String toString() {
		return "User [id=" + id + ", email=" + email + ", password=" + password + ", nickname=" + nickname
				+ ", regtime=" + regtime + ", state=" + state + ", phone=" + phone + "]";
	}
}