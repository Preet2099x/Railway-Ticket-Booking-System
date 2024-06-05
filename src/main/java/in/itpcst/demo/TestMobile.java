package in.itpcst.demo;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class TestMobile {
	@Autowired
	MobileServiceProvider objService;
	
	@GetMapping("/DIandIOC")
	public String checkDIandIOC() {
		objService.askMobile("Samsung");
		objService.askMobile("Motorola");
		return "hello.jsp";
	} 
	
}
