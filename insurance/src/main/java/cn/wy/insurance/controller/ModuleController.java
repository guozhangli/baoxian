package cn.wy.insurance.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import cn.wy.insurance.pojo.Module;
import cn.wy.insurance.service.ModuleService;

@Controller
public class ModuleController {
	@Autowired
	private ModuleService moduleService;
	
	/* 
	 * 这个方法是利用@SelectProvide实现的查询
	 */
	@RequestMapping("/sysadmin/module/list")
	public String moduleList(Model model){
		List<Module> dataList=moduleService.findModuleBySelectProvider();
		model.addAttribute("dataList", dataList);
		return "/back/sysadmin/module/jModuleList";
		
	}
	@RequestMapping("/sysadmin/module/insert")
	public String moduleInsert(Module module){
		moduleService.insertByAnnotation(module);
		return "forward:/back/sysadmin/module/list";
		
	}
	/*
	 * 这个方法是删除模块（权限）的，对应的后台请求路径：/sysadmin/module/delete
	 */
	@RequestMapping("/sysadmin/module/delete")
	public String moduleDelete(String moduleId){
		moduleService.delete(moduleId);
		return "forward:/back/sysadmin/module/list";
	}
	
//	/* 这个方法是利用传统的写sql语句的方式
//	 * 这个方法是权限新增，对应的后台请求路径：/sysadmin/module/tocreate
//	 * 对应的前台页面：WEB-INF/pages/sysadmin/module/jModuleCreate.jsp
//	 * 前台要求的数据：所有权限数据列表
//	 */
	@RequestMapping("/sysadmin/module/tocreate")
	public String moduleCreate(Model model){
		List<Module> dataList=moduleService.findAllModule();
		model.addAttribute("moduleList", dataList);
		return "/back/sysadmin/module/jModuleCreate";
	}
	/*
	 * 这个方法是权限新增保存，对应的后台请求路径：/sysadmin/module/insert
	 */
//	@RequestMapping("/sysadmin/module/insert")
//	public String moduleInsert(Module module){
//		moduleService.insert(module);
//		return "forward:/sysadmin/module/list";
//		
//	}
	
	
	
//	/*
//	 * 这个方法是利用@Select注解来实现查询
//	 */
//	@RequestMapping("/sysadmin/module/list")
//	public String moduleList(Model model){
//		List<Module> dataList=moduleService.findModuleByAnnotation();
//		model.addAttribute("dataList", dataList);
//	    return "/sysadmin/module/jModuleList";
//	}
	
//	/* 这个方法是通过传统的在映射文件里写sql语句
//	 * 这个方法是用来定位和转向权限查询页面的，
//	 * 对应后台请求路径：/sysadmin/module/list
//	 * 对应的前台页面：WEB-INF/pages/sysadmin/module/jModuleList.jsp
//	 * 前台要的数据：权限名称，类型，备注，状态（不涉及到关联查询，即单表查询
//	 */
//	@RequestMapping("/sysadmin/module/list")
//	public String moduleList(Model model){
//		List<Module> dataList=moduleService.findAllModule();
//		model.addAttribute("dataList", dataList);
//		return "/sysadmin/module/jModuleList";
//	}
}
