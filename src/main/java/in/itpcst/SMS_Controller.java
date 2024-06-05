package in.itpcst;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class SMS_Controller {

	@GetMapping("/SMSHome")  
	private String getBMS_Menu()   
	{  
		System.out.println("Inside SMSHome");
		return "SMSHome";  
	}
}
