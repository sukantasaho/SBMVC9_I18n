package com.main.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;

import com.main.model.Customer;

@Controller
public class CustomerOperationController 
{
    @GetMapping("/")  
	public String showHomePage()
	{
		return "welcome";
	}
    
    @GetMapping("/register")
    public String showCustomerRegistrationPage(@ModelAttribute("cust")Customer customer)
    {
    	return "register_page";
    }
} 
