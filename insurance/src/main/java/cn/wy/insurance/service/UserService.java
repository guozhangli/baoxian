package cn.wy.insurance.service;

import java.util.Date;
import java.util.List;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.wy.insurance.mapper.UserMapper;
import cn.wy.insurance.pojo.User;
import cn.wy.insurance.pojo.UserInfo;

@Service
public class UserService {
	@Autowired
	private UserMapper userMapper;

	public List<User> findAllUser() {
		
		return userMapper.findAllUser();
	}
	/*
	 * 这个方法是用来新增用户和用户信息的，
	 * 别忘了设置主键
	 */
	public void insert(User user, UserInfo userinfo) {
		user.setUserId(UUID.randomUUID().toString());
		user.setState(1);//设置默认状态
		user.setCreateTime(new Date());
		user.setUpdateTime(user.getCreateTime());
		
		//和user表的主键保持一致
		userinfo.setUserInfoId(user.getUserId());
		userinfo.setCreateTime(user.getCreateTime());
		userinfo.setUpdateTime(user.getUpdateTime());
		
		userMapper.insertUser(user);
		userMapper.insertUserInfo(userinfo);
		
	}
	/*
	 * 需要注意，不仅要删除user_p表信息，还要删除user_info_P表信息
	 * 避免出现僵尸数据
	 */
	public void deleteUser(String userId) {
		userMapper.deleteUser(userId);
		userMapper.deleteUserInfo(userId);
		
	}
	/*
	 * 这个方法是根据用户名查找用户
	 */
	public User findUserByUsername(String username){
		
		return userMapper.findUserByUsername(username);
	}
	public User findModulesOfCurrentUser(String username) {
		
		return userMapper.findModulesOfCurrentUser(username);
	}
	

}
