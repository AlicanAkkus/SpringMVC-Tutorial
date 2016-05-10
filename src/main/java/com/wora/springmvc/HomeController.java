package com.wora.springmvc;

import java.text.DateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.wora.bean.Person;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		String formattedDate = dateFormat.format(date);
		
		model.addAttribute("serverTime", formattedDate );
		
		return "home";
	}
	
	@RequestMapping(value = "/persons", method = RequestMethod.GET)
	public String getPersons(Model model) {
		
		ArrayList<Person> list = new ArrayList<Person>();
		list.add(new Person(1L, "alican","akkus","male",22));
		list.add(new Person(2L, "mert","celtikoglu","male",22));
		list.add(new Person(3L, "abdurrahman","alkaya","male",23));
		list.add(new Person(4L, "ahmet","ates","male",22));
		model.addAttribute("persons", list);
		return "persons";
	}
	
}
