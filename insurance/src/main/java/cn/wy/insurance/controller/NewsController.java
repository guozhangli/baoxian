package cn.wy.insurance.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class NewsController {


	@RequestMapping(value="/news/anli")
	public String goNewsAnli(){
		return "/home/advisory";
	}
}
