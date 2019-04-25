package cn.wy.insurance.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * 这个类时用来定位欢迎页面的
 * @author ysq
 *
 */
@Controller
public class PageController {
	

//	/*
//	 * 这个方法是定位欢迎页面的
//	 * 页面的路径：WEB-INF/pages/home/index.jsp
//	 * 页面用的是frame技术，分成三块
//	 * title:对应的页面：WEB-INF/pages/home/title.jsp
//	 * left:对应的页面：WEB-INF/pages/home/left.jsp
//	 * main:对应的页面：WEB-INF/pages/home/main.jsp
//	 * 知识点：
//	 * 静态资源文件被拦截
//	 * 1.第一种解决办法：web.xml=>servletMapping=》url-pattern=>*.XXX的方式
//	 * 2.第二种解决办法：SpringMVC的核心配置文件=》<mvc:default-servlet-handler/>
//	 */
	@RequestMapping("/index")
	public String goIndex(){
		//视图逻辑名的前缀是 /WEB-INF/pages
		return "/back/home/index";
	}
	@RequestMapping("/title")
	public String goTitle(){
		return "/back/home/title";
	}
	
	@RequestMapping("/left")
	public String goLeft(){
		return "/back/home/left";
	}
	@RequestMapping("/main")
	public String goMain(){
		return "/back/home/main";
	}
	
	@RequestMapping("/home/left")
	public String goHomeLeft(){
		return "back/home/left";
	}
	@RequestMapping("/home/main")
	public String goHomeMain(){
		return "back/home/main";
	}
	
	
	/*
	 * 这个方法是用RESTFUL方式来定位页面。
	 * 
	 */


}
