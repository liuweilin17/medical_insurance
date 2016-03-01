package com.medical.action;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import com.medical.entity.User;
import com.medical.service.UserManage;
import com.opensymphony.xwork2.ActionSupport;

public class RegisterAction extends ActionSupport{
	private User user;
	private String tip;
	private UserManage userService;

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}
	public UserManage getUserService() {
		return userService;
	}

	public void setUserService(UserManage userService) {
		this.userService = userService;
	}

	public String getTip() {
		return tip;
	}

	public void setTip(String tip) {
		this.tip = tip;
	}
	 @Override
	 public String execute()throws Exception{
		 HttpServletRequest request = ServletActionContext.getRequest();
		 
		 System.out.println(request.getCharacterEncoding());
		 int identity = Integer.parseInt(request.getParameter("userRole"));
		 
		 System.out.println("identity:"+identity);
		 
		 if(user.getU_name().equals("")||user.getU_name()==null){
			 tip = "用户名不能为空";
			 return "input";
		 }
		 if(user.getU_password().equals("")||user.getU_password()==null){
			 tip = "密码不能为空";
			 return "input";
		 }
		 List<User> userList = getUserService().findById(user.getU_id());
		 int len = userList.size();
		 if(len != 0){
			 tip = "用户名已存在！";
			 return "input";
		 }
		 //user.setIdentity(identity);
		 //userService.addUser(user);
		 tip="用户注册成功!";
		 
		 return "log";
	 }
}
