package com.ruchir.vishalpoc;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.ruchir.webeditor.service.HtmlTextRepository;

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
		
		return "home1";
	}
	
	@RequestMapping(value = "/api", method = RequestMethod.GET)
	public String apiHome(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		String formattedDate = dateFormat.format(date);
		
		model.addAttribute("serverTime", formattedDate );
		
		return "home3";
	}
	
	@Autowired
	HtmlTextRepository htmlTextRepository;
	
	@RequestMapping(value = "/textUpload", method = RequestMethod.POST)
	public String queryUpload(@RequestParam("textUpload") String pHtmlText,	Model model) throws Exception {
		logger.debug("Rich text : " + pHtmlText);
		htmlTextRepository.addHtmlText(pHtmlText);
		model.addAttribute("queryPosted", true);
		model.addAttribute("textUpload", pHtmlText);
		return "showresult";
	}
	
}
