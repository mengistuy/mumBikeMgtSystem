/*package mum.edu.cs425.mumBikeMgtSystem.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import mum.edu.cs425.mumBikeMgtSystem.model.Donate;
import mum.edu.cs425.mumBikeMgtSystem.service.DonateService;
@Controller
@RequestMapping(value="/donate")
public class DonateController {
	@Autowired
	private DonateService donateService;
	
	 @RequestMapping(value="/list", method=RequestMethod.GET)
	 public ModelAndView list() {
	  ModelAndView model = new ModelAndView("donate_list");
	  List<Donate> donateList = donateService.getAllDonates();
	  model.addObject("donateList", donateList);	  
	  return model;
	 }
	 
	 @RequestMapping(value="/addDonate/", method=RequestMethod.GET)
	 public ModelAndView addDonate() {
	  ModelAndView model = new ModelAndView();
	  Donate donate=new Donate();
	  model.addObject("donateForm", donate);
	  model.setViewName("donate_form");
	  
	  return model;
	 }

	 @RequestMapping(value="/updateDonate/{id}", method=RequestMethod.GET)
	 public ModelAndView editDonate(@PathVariable long id) {
	  ModelAndView model = new ModelAndView();
	  
	  Donate donate = donateService.getDonateById(id);
	  model.addObject("donateForm", donate);
	  model.setViewName("donate_form");
	  
	  return model;
	 }
	 
	 @RequestMapping(value="/saveDonate", method=RequestMethod.POST)
	 public ModelAndView save(@ModelAttribute("donateForm") Donate donate) {
	  donateService.saveOrUpdate(donate);
	  
	  return new ModelAndView("redirect:/donate/list");
	 }
	 
	  @RequestMapping(value="/deleteDonate/{id}", method=RequestMethod.GET)
	 public ModelAndView delete(@PathVariable long id) {
	  donateService.deleteDonate(id);
	  
	  return new ModelAndView("redirect:/donate/list");
	 }
	 
}

*/