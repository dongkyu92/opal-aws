package my.spring.opalproject;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
public class DataController {

		
	@RequestMapping(value = "/datasick1")
	public String datasick1() {
		return "datasick1";

	}
	
	@RequestMapping(value = "/datasick2")
	public String datasick2() {
		return "datasick2";

	}
	
	
	@RequestMapping(value = "/datasick3")
	public String datasick3() {
		return "datasick3";

	}
	
	@RequestMapping(value = "/datasick4")
	public String datasick4() {
		return "datasick4";

	}
	
	@RequestMapping(value = "/datasick5")
	public String datasick5() {
		return "datasick5";

	}
	
}