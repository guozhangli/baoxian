package cn.wy.insurance.service;

import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.wy.insurance.mapper.DeptMapper;
import cn.wy.insurance.pojo.Dept;

@Service
public class DeptService {
	@Autowired
	private DeptMapper mapper;
	
	public List<Dept> findAllDept() {
		return mapper.findAllDept();
	}

	public void insert(Dept dept) {
		dept.setDeptId(UUID.randomUUID().toString());
		dept.setCreateTime(new Date());
		dept.setUpdateTime(new Date());
		dept.setState(1);
		mapper.insert(dept);
		
	}

	public Dept findDeptById(String deptId) {	
		return mapper.findDeptById(deptId);
	}

	public void update(Dept dept) {
		dept.setUpdateTime(new Date());
		dept.setState(1);
		mapper.update(dept);		
	}

	public void deleteone(String deptId) {
		mapper.deleteone(deptId);
		
	}

	public void deleteBatch(String[] deptId) {
		mapper.deleteBatch(deptId);	
	}

	public void updateState(String deptId,int state) {
		Map map=new HashMap();
		map.put("state", state);
		map.put("deptId", deptId);
		mapper.updateState(map);
	}

}
