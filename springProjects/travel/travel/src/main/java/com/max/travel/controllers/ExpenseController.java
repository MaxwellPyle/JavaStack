package com.max.travel.controllers;

import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.max.travel.models.Expense;
import com.max.travel.services.ExpenseService;

@Controller
public class ExpenseController {
	
	@Autowired
	ExpenseService expenseService;
	
	@RequestMapping("/expenses")
	public String index(Model model, @ModelAttribute("expense") Expense expense) {
		List<Expense> expenses = expenseService.getAll();
		model.addAttribute("expenses", expenses);
		return "index.jsp";
	}
	
	@PostMapping("/addexpense")
	public String create(@Valid @ModelAttribute("expense") Expense expense, BindingResult result) {
		if(result.hasErrors()) {
			return "redirect:/expenses";
		} else {
			expenseService.createBook(expense);
			return "redirect:/expenses";
		}
	}
	@RequestMapping("/expenses/edit/{id}")
	public String edit(@PathVariable("id") long id, Model model) {
		Expense expense = expenseService.findExpense(id);
		model.addAttribute("expense", expense);
		return "edit.jsp";
	}
	
	@RequestMapping(value="/expenses/{id}", method=RequestMethod.POST)
	public String update(@Valid @ModelAttribute("expense") Expense expense, BindingResult result) {
		if(result.hasErrors()) {
			return "edit.jsp";
		} else {
			expenseService.updateBook(expense);
			return "redirect:/expenses";
		}
	}

}
