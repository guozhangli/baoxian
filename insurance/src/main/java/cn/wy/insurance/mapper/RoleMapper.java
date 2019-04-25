package cn.wy.insurance.mapper;

import java.util.List;
import java.util.Map;

import cn.wy.insurance.pojo.Role;

public interface RoleMapper {

	List<Role> findAllRole();

	void insert(Role role);

	Role findRoleById(String roleId);

	void update(Role role);

	void delete(String roleId);

	void insertRoleModule(Map<String, String> map);

	List<String> findModuleIdsByRoleId(String roleId);

}
