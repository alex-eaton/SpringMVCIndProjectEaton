package edu.dmacc.spring.individualproject;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;


@Controller
public class FoodPantryController {
	@Autowired FoodPantryDao dao;
	
	private static final String[] locations = { "Des Moines", "Ankeny", "Waukee", "Urbandale" };
	
	@RequestMapping(value = "/foodPantryForm")
	public ModelAndView foodPantry() {
		ModelAndView modelAndView = new ModelAndView();

		modelAndView.setViewName("foodPantryForm");
		modelAndView.addObject("foodPantry", new FoodPantry());
		modelAndView.addObject("locations", locations);

		return modelAndView;
	}
	
	@RequestMapping(value = "/result")
	public ModelAndView processFoodPantry(FoodPantry foodPantry) {
		System.out.println("In processFoodPantry");
		ModelAndView modelAndView = new ModelAndView();
		dao.insertFoodPantry(foodPantry);
		System.out.println("Value in getFoodPantry " + foodPantry.getFood());
		modelAndView.setViewName("userResult");

		modelAndView.addObject("u", foodPantry);

		return modelAndView;
	}
	
	@RequestMapping(value = "/viewAllFoodPantries")
	public ModelAndView viewAll() {
		System.out.println("IN VIEW ALL");
		ModelAndView modelAndView = new ModelAndView();
		List<FoodPantry> allFoodPantries = dao.getAllFoodPantries();
		modelAndView.setViewName("viewAllFoodPantries");
		modelAndView.addObject("all", allFoodPantries);
		return modelAndView;
		
	}
	
	@Bean
	public FoodPantryDao dao() {
		FoodPantryDao bean = new FoodPantryDao();
		return bean;
	}

}
