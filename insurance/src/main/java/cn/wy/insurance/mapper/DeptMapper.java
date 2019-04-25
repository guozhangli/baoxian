package cn.wy.insurance.mapper;

import java.util.List;
import java.util.Map;

import cn.wy.insurance.pojo.Dept;

public interface DeptMapper {

	List<Dept> findAllDept();

	void insert(Dept dept);

	Dept findDeptById(String deptId);

	void update(Dept dept);

	void deleteone(String deptId);

	void deleteBatch(String[] deptId);

	void updateState(Map map);
}
