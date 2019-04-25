package cn.wy.insurance.mapper;

import java.util.List;

import cn.wy.insurance.pojo.User;
import cn.wy.insurance.pojo.UserInfo;

public interface UserMapper {

	List<User> findAllUser();

	void insertUser(User user);

	void insertUserInfo(UserInfo userinfo);

	void deleteUser(String userId);

	void deleteUserInfo(String userId);

	User findUserByUsername(String username);

	User findModulesOfCurrentUser(String username);

	

}
