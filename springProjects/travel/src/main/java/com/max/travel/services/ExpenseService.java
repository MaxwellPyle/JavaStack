package com.max.travel.services;
import com.max.travel.repositories.ExpenseRepository;
import java.util.List;

import org.springframework.stereotype.Service;

import com.max.travel.models.Expense;

@Service
public class ExpenseService {
	private final ExpenseRepository expenseRepository;
	
	public ExpenseService(ExpenseRepository expenseRepository) {
		this.expenseRepository = expenseRepository;
	}
	
	public List<Expense> getAll() {
		return expenseRepository.findAll();
	}
	
	public Expense createBook(Expense e) {
		return expenseRepository.save(e);
	}
}
