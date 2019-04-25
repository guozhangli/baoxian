package cn.wy.insurance.controller;

import javax.servlet.http.HttpSession;

import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.subject.Subject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.mysql.jdbc.StringUtils;

import cn.wy.insurance.pojo.User;
import cn.wy.insurance.service.UserService;

@Controller
public class LoginController {
	@Autowired
	private UserService userService;
	
	@RequestMapping("/validate/doLogin")
	public String doLogin(String username,String password,HttpSession session){
		//1.用户的非空校验
		if(StringUtils.isEmptyOrWhitespaceOnly(username)||
				StringUtils.isEmptyOrWhitespaceOnly(password)){
			session.setAttribute("loginFailed", 2);
			return "redirect:/login.jsp";
		}
		//2.创建一个登录令牌
		UsernamePasswordToken token=new UsernamePasswordToken(username, password);
		//3.创建一个Subject对象，代表当前的登录用户，subject含义更广泛，因为登录系统可能不是一个真实
		//的用户，还可能是一个线程。注意导包不要导错
		Subject subject=SecurityUtils.getSubject();
		//4.进行登录验证，这个方法会抛异常，如果登录验证失败的话，会抛异常
		try {
			subject.login(token);
			//走到这，证明登录验证成功了,登录成功之后，把用户名存在shiro的session里
			subject.getSession().setAttribute("username", username);
			return "forward:/index";
		} catch (Exception e) {
			//如果抛异常，说明登录验证失败，重新进行访问
			session.setAttribute("loginFailed", 1);
			return "redirect:/login.jsp";
		}
		
		
	}
	
	
//	/* 传统方式登录
//	 * 这个方法是用于用户登录的方法，对应的后台请求路径：/validate/doLogin
//	 * 对应的前台页面：/login.jsp
//	 */
//	@RequestMapping("/validate/doLogin")
//	public String doLogin(String username,String password,HttpSession session){
//		//1.先做用户名和密码的非空校验
//		//2.根据用户名查找用户，然后再校验用户的真实密码和用户的登录密码进行比对，如果一致，转到欢迎页面
//		//如果不一致，再返回到登录页面，重新登录
//		if(StringUtils.isEmptyOrWhitespaceOnly(username)
//				||StringUtils.isEmptyOrWhitespaceOnly(password)){
//			//前台用户密码的非空提示
//			session.setAttribute("loginFailed", 2);
//			return "redirect:/login.jsp";
//		}
//		//用户名是唯一的，所以可以根据用户名来查
//		User user=userService.findUserByUsername(username);
//		if(user!=null){
//			if(user.getPassword().equals(password)){
//				return "forward:/index";
//			}
//		}
//		//前台用户名或密码错误提示
//		session.setAttribute("loginFailed", 1);
//		return "redirect:/login.jsp";
//	}
	
	@RequestMapping("validate/logout")
	public String goLogout(){
		return "forward:/index";
	}
}
