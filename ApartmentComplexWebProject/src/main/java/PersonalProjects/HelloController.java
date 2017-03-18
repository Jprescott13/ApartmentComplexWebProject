package PersonalProjects;

import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller 
public class HelloController {
	
	@RequestMapping("/")
	public String displayHome() {
		
		return "home";
	}
	
	@RequestMapping("/floorPlans")
	public String displayFloorPlansPage() {
	
		return "floorPlans";
	}
	
	@RequestMapping ("/residences")
	public String displayResidencesPage() {
		return "residences";
	}
	
	@RequestMapping("/community")
	public String displayCommunityPage() {
		
		return "community";
	}
	
	@RequestMapping("/contact")
	public String displayContactUs() {
		
		return "contact";
	}
	
	
}
