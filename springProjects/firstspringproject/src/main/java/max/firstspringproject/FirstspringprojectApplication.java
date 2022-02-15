package max.firstspringproject;

import org.springframework.boot.SpringApplication;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
@RestController
public class FirstspringprojectApplication {

	public static void main(String[] args) {
		SpringApplication.run(FirstspringprojectApplication.class, args);
	}

    @RequestMapping("/")
    // 3. Method that maps to the request route above
    public String hello() { // 3
            return "Hello World!";
    }
    
    @RequestMapping("/word")
    public String word() {
    	return "word!";
    }
}
