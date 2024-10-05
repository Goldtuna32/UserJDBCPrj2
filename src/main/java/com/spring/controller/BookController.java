package com.spring.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.spring.repo.BookRepository;

import com.spring.model.BookBean;


@Controller
@RequestMapping("/book")
public class BookController {
	
	@Autowired
	private BookRepository bookRepo;
	
	@GetMapping(value="/showbook")
	public String showAllbooks(Model m) {
		
		List<BookBean> list = bookRepo.showAllBooks();
		if (list.size()>0) {
			m.addAttribute("list", list);
			
		} else {
			m.addAttribute("error", "No Books Avalible");
		} return "booklist";
	}
	
	@GetMapping(value="/editbook/{id}")
	public String selectBookById(@PathVariable("id")int id, Model m) {
	
			BookBean obj = bookRepo.showBookbyId(id);
			m.addAttribute("obj",obj);
			return "editbook";	
	}
	
	@PostMapping("/deleteBook")
	public String deleteBook(@RequestParam("id")int id, Model model) {
		int result = bookRepo.deleteBook(id);
		if (result > 0) {
			model.addAttribute("message", "Book Moved to Recycle Bin Successfully");
		} else {
			model.addAttribute("errorMessage", "Failed to move book to Recycle Bin");
		}
		return "redirect:/book/booklist";
	}
	
	@PostMapping("/recoverBook")
	public String recoverBook(@RequestParam("id") int id, Model model) {
		int result = bookRepo.reAddBook(id);
		if (result > 0) {
			model.addAttribute("message", "Book Recovered Successfully");
		} else {
			model.addAttribute("errorMessage", "Failed to recover book");
		} return "redirect:/recycleBin";
	}
	

}
