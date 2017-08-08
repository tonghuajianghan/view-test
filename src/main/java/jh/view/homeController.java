package jh.view;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class homeController {

	@RequestMapping("home")
	public String home(){
		return "home";
	}
	
	@RequestMapping("home2")
	public String home2(){
		return "test.hh.home";
	}
	
	@RequestMapping("home3")
	public String home3(){
		return "hh/home";
	}
	
	@RequestMapping("ace")
	public String ace(){
		return "ace";
	}
	
	@RequestMapping("viee")
	public String viee(){
		return "pages/hh/home";
	}
}
