package cn.wy.insurance.service;

import java.util.Date;
import java.util.List;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.wy.insurance.mapper.ModuleMapper;
import cn.wy.insurance.pojo.Module;

@Service
public class ModuleService {
	@Autowired
	private ModuleMapper moduleMapper;

	public List<Module> findAllModule() {
		
		return moduleMapper.findAllModule();
	}

	public List<Module> findModuleByAnnotation() {
	
		return moduleMapper.findModuleByAnnotation();
	}

	public List<Module> findModuleBySelectProvider() {
		
		return moduleMapper.findModuleBySelectProvider();
	}
	/*
	 * 别忘了手动设置相关的属性值
	 */
	public void insert(Module module) {
		module.setModuleId(UUID.randomUUID().toString());
		module.setCreateTime(new Date());
		module.setUpdateTime(module.getCreateTime());
		module.setState(1);//设置默认状态值
		
		moduleMapper.insert(module);
		
	}
	/*
	 * 这个方法是利用注解来实现新增保存
	 */
	public void insertByAnnotation(Module module) {
		module.setModuleId(UUID.randomUUID().toString());
		module.setCreateTime(new Date());
		module.setUpdateTime(module.getCreateTime());
		module.setState(1);//设置默认状态值
		moduleMapper.insetByAnnotation(module);
		
	}

	public void delete(String moduleId) {
		moduleMapper.delete(moduleId);
		
	}

}
