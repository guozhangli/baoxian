package cn.wy.insurance.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import cn.wy.insurance.pojo.Role;
import cn.wy.insurance.service.RoleService;

@Controller
public class RoleController {
	@Autowired
	private RoleService roleService;
	
	/*
	 * 这个方法是角色查询的的方法，对应的后台请求路径：/sysadmin/role/list
	 * 对应的页面：WEB-INF/pages/sysadmin/role/jRoleList.jsp
	 */
	@RequestMapping("/sysadmin/role/list")
	public String roleList(Model model){
		List<Role> dataList=roleService.findAllRole();
		model.addAttribute("dataList", dataList);
		return "/sysadmin/role/jRoleList";
	}
	/*
	 * 这个方法是转向角色新增的，对应的后台请求路径： /sysadmin/role/tocreate
	 */
	@RequestMapping("/sysadmin/role/tocreate")
	public String toCreate(){
		return "sysadmin/role/jRoleCreate";
	}
	/*
	 * 这个方法是角色新增保存的，对应的后台请求路径：/sysadmin/role/insert
	 */
	@RequestMapping("/sysadmin/role/insert")
	public String roleInsert(Role role){
		roleService.insert(role);
		return "forward:/sysadmin/role/list";
	}
	/*
	 * 这个方法是转向角色更新页面的，对应的后台请求路径：/sysadmin/role/toupdate
	 * 对应的前台页面：WEB-INF/sysadmin/role/jRoleUpdate.jsp
	 * 根据前台数据回显，
	 */
	@RequestMapping("/sysadmin/role/toupdate")
	public String toUpdate(String roleId,Model model){
		Role role=roleService.findRoleById(roleId);
		model.addAttribute(role);
		return "/sysadmin/role/jRoleUpdate";
	}
	/*
	 * 这个方法是更新角色的，对应的后台路径： /sysadmin/role/roleAction_update
	 * 
	 */
	@RequestMapping("/sysadmin/role/roleAction_update")
	public String roleUpdate(Role role){
		roleService.update(role);
		return "forward:/sysadmin/role/list";
	}
	/*
	 * 这个方法是根据id来删除角色的
	 * 对应的后台请求路径：/sysadmin/role/delete
	 * 
	 */
	@RequestMapping("/sysadmin/role/delete")
	public String delete(String roleId){
		roleService.delete(roleId);
		return "forward:/sysadmin/role/list";
	}
	/* 这个方法是转向角色-权限页面的，对应的后台请求路径：/sysadmin/role/tomodule
	 * 对应的页面路径：WEB-INF/pages/sysadmin/role/jRoleModule.jsp
	 * zTree要求的json数据格式：
	 * [{id:'1',name:'爷爷',pId:'0'},{id:'2',name:'爸爸',pId:'1'}]]
	 * 需求说明：在角色-权限分配页面，要求利用zTree，展示所有的权限信息
	 * 
	 * 实现思路：
	 * [{id:'权限的id',name:'权限的名字',pId:'权限的parent_id',checked:"true"},{id:'2',name:'爸爸',pId:'1'}]]
	 * 1.先查出所有的权限信息，
	 * 2.利用Jackson来处理
	 * 
	 * 需要注意:角色的主键id，不要传掉。
	 * 
	 * ***----角色_权限的回显***
	 * 1.根据zTree要求，先在Module对象加上checked这个属性
	 * 
	 */
	@RequestMapping("/sysadmin/role/tomodule")
	public String roleModule(Model model,String roleId){
		String json=roleService.getJson(roleId);
		System.out.println(json);
		model.addAttribute("zTreeJson", json);
		model.addAttribute("roleId", roleId);
		return "/sysadmin/role/jRoleModule";
	}
	/*
	 * 这个方法是为选中的角色分配权限，
	 * 对应的请求路径：/sysadmin/role/module
	 * 
	 */
	@RequestMapping("/sysadmin/role/module")
	public String roleModuleInsert(String[] moduleIds,String roleId){
		roleService.insertRoleModule(moduleIds,roleId);
		return "forward:/sysadmin/role/list";
	}
}
