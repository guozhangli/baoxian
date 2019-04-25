package cn.wy.insurance.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.RequestMapping;

import cn.wy.insurance.pojo.Dept;
import cn.wy.insurance.service.DeptService;

/**
 * 这个类用于定位系统管理页面和部门业务(CRUD)的类
 * @author ysq
 *
 */
@Controller
public class DeptController {
	
	@Autowired
	private DeptService deptService;
	

	@RequestMapping("/sysadmin/left")
	public String goSysadminLeft(){
		return "back/sysadmin/left";
	}
	/*
	 * 这个方法是定位系统管理的主帧页面
	 * 对应的页面位置：WEB-INF/pages/sysadmin/main.jsp
	 * 对应的后台请求路径：/sysadmin/main
	 */
	@RequestMapping("/sysadmin/main")
	public String goSysadminMain(){
		return "back/sysadmin/main";
	}
	
	/*
	 * 部门查询
	 */
	@RequestMapping("/sysadmin/dept/list")
	public String goDeptList(Model model){
		//组织部门数据，利用model传向前台页面
		List<Dept> dateList=deptService.findAllDept();
		model.addAttribute("dateList",dateList);
		return "/back/sysadmin/dept/jDeptList";
	}
	
	@RequestMapping("/sysadmin/dept/toview")
	public String goDeptView(String deptId,Model model){
		//组织部门数据，利用model传向前台页面
		if(StringUtils.isEmpty(deptId)){
			return "forward:/sysadmin/dept/list";
		}
		if(deptId.contains(",")){
			String [] deptId0=deptId.split("\\,");
			deptId=deptId0[0];
		}
		Dept dept=deptService.findDeptById(deptId);
		Dept dept2=deptService.findDeptById(dept.getParentId());
		model.addAttribute("deptInfo", dept);
		model.addAttribute("deptInfo2", dept2);
		return "/back/sysadmin/dept/jDeptDetail";
	}
	
	@RequestMapping("/sysadmin/dept/tocreate")
	public String goDeptAdd(Model model){
		List<Dept> dataList=deptService.findAllDept();
		model.addAttribute("dataList", dataList);
		return "/back/sysadmin/dept/jDeptCreate";
	}
	@RequestMapping("/sysadmin/dept/insert")
	public String goInsert(Dept dept){
		deptService.insert(dept);
		//新增完后，转发到部门列表页面
		return "forward:/sysadmin/dept/list";
	}
	@RequestMapping("/sysadmin/dept/toupdate")
	public String goUpdate(String deptId,Model model){
		Dept dept=deptService.findDeptById(deptId);
		List<Dept> dataList=deptService.findAllDept();
		model.addAttribute("deptInfo", dept);
		model.addAttribute("dataList", dataList);
		return "/back/sysadmin/dept/jDeptUpdate";
	}
	@RequestMapping("/sysadmin/dept/update")
	public String update(Dept dept){
		deptService.update(dept);
		return "forward:/sysadmin/dept/list";
	}
	@RequestMapping("/sysadmin/dept/deleteone")
	public String deleteone(String deptId){
		deptService.deleteone(deptId);
		return "forward:/sysadmin/dept/list";
	}
	@RequestMapping("/sysadmin/dept/delete")
	public String deleteBatch(String[] deptId){
		deptService.deleteBatch(deptId);
		return "forward:/sysadmin/dept/list";
	}
	@RequestMapping("/sysadmin/dept/start")
	public String updateState1(String deptId){		
		deptService.updateState(deptId,1);
		return "forward:/sysadmin/dept/list";
	}
	@RequestMapping("/sysadmin/dept/stop")
	public String updateState0(String deptId){
		deptService.updateState(deptId,0);
		return "forward:/sysadmin/dept/list";
	}
}
