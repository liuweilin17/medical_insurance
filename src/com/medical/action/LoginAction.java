package com.medical.action;

import java.util.List;
import java.util.Map;

import org.apache.struts2.ServletActionContext; 
import javax.servlet.http.HttpServletRequest;

import com.medical.dao.UserDao;
import com.medical.dao.UserDaoImpl;
import com.medical.entity.Company;
import com.medical.entity.Hospital;
import com.medical.entity.User;
import com.medical.service.CompanyManage;
import com.medical.service.HospitalManage;
import com.medical.service.UserManage;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class LoginAction extends ActionSupport{
	private String id;
	private String password;
	private String tip;
	
	private HospitalManage hospitalService;
	private UserManage userService;
	private CompanyManage companyService;
	
	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
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
	public HospitalManage getHospitalService() {
		return hospitalService;
	}

	public void setHospitalService(HospitalManage hospitalService) {
		this.hospitalService = hospitalService;
	}

	public CompanyManage getCompanyService() {
		return companyService;
	}

	public void setCompanyService(CompanyManage companyService) {
		this.companyService = companyService;
	}
	 @Override
	 public String execute()throws Exception{
		 HttpServletRequest request = ServletActionContext.getRequest();
		 
		 System.out.println(request.getCharacterEncoding());
		 int identity = Integer.parseInt(request.getParameter("userRole"));
		 System.out.println("identity:"+identity);
		 
		 if(id == null || id.equals("")){
			 tip = "用户编号不能为空";
			 return "input";
		 }
		 if(password.equals("")||password == null){
			 tip = "密码不能为空";
			 return "input";
		 }
		 
		 if(identity == 0){
			 List<Hospital> hospitalList = getHospitalService().findById(Integer.parseInt(id));
			 int len = hospitalList.size();
			 for(int i=0;i<len;i++){
				if (hospitalList.get(i).getH_password().equals(password)){
					Hospital hos = hospitalList.get(i);
					request.getSession().setAttribute("hospital", hos);
					return "hospital";
				}
			 }
			 tip="用户编号或密码不存在!";
			 return "input";
		 }else if(identity == 1){
			 List<User> userList = getUserService().findById(Integer.parseInt(id));
			 int len = userList.size();
			 for(int i=0;i<len;i++){
				if (userList.get(i).getU_password().equals(password)){
					User user = userList.get(i);
					request.getSession().setAttribute("user", user);
					return "people";
				}
			 }
			 tip="用户编号或密码不存在!";
			 return "input";
		 }else{
			 List<Company> companyList = getCompanyService().findById(Integer.parseInt(id));
			 int len = companyList.size();
			 for(int i=0;i<len;i++){
				if (companyList.get(i).getC_password().equals(password)){
					Company com = companyList.get(i);
					request.getSession().setAttribute("company", com);
					return "company";
				}
			 }
			 tip="用户编号或密码不存在!";
			 return "input";
		 }
	 }

	 
}
