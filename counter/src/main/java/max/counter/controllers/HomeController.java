package max.counter.controllers;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/your_server")
public class HomeController {
	@RequestMapping("")
	public String home() {
		return "home.jsp";
	}
	@RequestMapping("/counter")
	public String index(HttpSession session, Model model) {
		Integer counter = (Integer) session.getAttribute("count");
		if(counter == null) {
			session.setAttribute("count", 0);
			counter = 0;
		}
		else {
			counter += 1;
			session.setAttribute("count", counter);
		}
		model.addAttribute("counter", counter);
		return "index.jsp";
	}
}
