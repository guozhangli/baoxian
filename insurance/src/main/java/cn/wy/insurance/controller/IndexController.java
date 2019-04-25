package cn.wy.insurance.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class IndexController {

	@RequestMapping("/")
	public String goIndex(){
		return "../index";
	}
	@RequestMapping("/admin")
	public String goLogin(){
		return "../../login";
	}
	@RequestMapping("/{pageName}")
	public String goPage(@PathVariable String pageName){
		return "/home/"+pageName;
	}
	
	@RequestMapping("/join2/job2")
	public String goJob(){
		return "/home/job2";
	}
}
