package com.max.travel.repositories;
import org.springframework.data.repository.CrudRepository;

import java.util.List;

import org.springframework.stereotype.Repository;
import com.max.travel.models.Expense;

@Repository
public interface ExpenseRepository extends CrudRepository<Expense, Long> {
	List<Expense> findAll();
}
