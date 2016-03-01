package com.medical.action;

import java.io.InputStream;
import java.io.StringBufferInputStream;
import java.util.List;

import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.ServletActionContext;

import com.medical.entity.Consumption;
import com.medical.entity.User;
import com.medical.service.ConsumptionManage;
import com.medical.service.UserManage;
import com.opensymphony.xwork2.ActionSupport;

import net.sf.json.JSONObject;

public class ConsumptionAction extends ActionSupport{
	private String flag;
	private String h_id;
	private String u_id;
	private String begin;
	private String end;
	private String disease;
	private String expense;
	//private String tip;
	private String result;
	private InputStream inputStream;
	private ConsumptionManage consumptionService;
	private UserManage userService;
	
	public String getFlag() {
		return flag;
	}

	public void setFlag(String flag) {
		this.flag = flag;
	}
	public String getH_id() {
		return h_id;
	}

	public void setH_id(String h_id) {
		this.h_id = h_id;
	}

	public String getU_id() {
		return u_id;
	}

	public void setU_id(String u_id) {
		this.u_id = u_id;
	}
	public String getBegin() {
		return begin;
	}

	public void setBegin(String begin) {
		this.begin = begin;
	}

	public String getEnd() {
		return end;
	}

	public void setEnd(String end) {
		this.end = end;
	}

	public String getDisease() {
		return disease;
	}

	public void setDisease(String disease) {
		this.disease = disease;
	}

	public String getExpense() {
		return expense;
	}

	public void setExpense(String expense) {
		this.expense = expense;
	}

	public String getResult() {
		return result;
	}

	public void setResult(String result) {
		this.result = result;
	}
//	public ConsumptionManage getConsumptionService() {
//		return consumptionService;
//	}

	public void setConsumptionService(ConsumptionManage consumptionService) {
		this.consumptionService = consumptionService;
	}
//	public UserManage getUserService() {
//		return userService;
//	}

	public void setUserService(UserManage userService) {
		this.userService = userService;
	}
	public String addConsumption() throws Exception{
		System.out.println("addConsumption!");
		//System.out.println("uId:"+u_id);
		//System.out.println("hId:"+h_id);
		//System.out.println("begin:"+begin);
		if(u_id == null||u_id.equals("")){
			result="用户编号不能为空";
			System.out.println(1);
			return SUCCESS;
		
		}
		if(begin == null||begin.equals("")){
			result="起始日期不能为空！";
			System.out.println(2);
			return SUCCESS;
			
		}
		if(end == null||end.equals("")){
			result="结束日期不能为空！";
			System.out.println(3);
			return SUCCESS;
			
		}
		if(disease == null||disease.equals("")){
			System.out.println(4);
			result="疾病不能为空！";
			return SUCCESS;
			
		}
		if(expense == null||expense.equals("")){
			System.out.println(5);
			result="花费不能为空！";
			return SUCCESS;
		}
		List<User> userList = userService.findById(Integer.parseInt(u_id));
		if(userList.size() == 0){
			result="用户编号不存在！";
		}
		Consumption con = new Consumption();
		con.setH_id(Integer.parseInt(h_id));
		con.setU_id(Integer.parseInt(u_id));
		con.setBegin(begin);
		con.setEnd(end);
		con.setDisease(disease);
		con.setExpense(expense);
		consumptionService.addConsumption(con);
		result = "消费记录已插入！";
		
		return SUCCESS;
	}

	public String findConsumption() throws Exception{
		System.out.println("findConsumption!");
		System.out.println("flag:"+flag);
		System.out.println("h_id:"+h_id);
		if(flag.equals("0")){
			List<Consumption> consumptionList = consumptionService.findByHid(Integer.parseInt(h_id));
			JSONObject obj = new JSONObject();
			obj.put("aaData", consumptionList);
			setInputStream(new StringBufferInputStream(obj.toString()));
			return SUCCESS;
		}else if(flag.equals("1")){
			
		}else{
			
		}
		return SUCCESS;
	}

	public InputStream getInputStream() {
		return inputStream;
	}

	public void setInputStream(InputStream inputStream) {
		this.inputStream = inputStream;
	}






}
