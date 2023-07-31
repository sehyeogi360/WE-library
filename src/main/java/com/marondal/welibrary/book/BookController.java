package com.marondal.welibrary.book;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.marondal.welibrary.book.dao.BookDAO;
import com.marondal.welibrary.book.model.Book;
import com.marondal.welibrary.user.dao.UserDAO;
import com.marondal.welibrary.user.model.User;

@Controller
@RequestMapping("/book")
public class BookController {
	
	@Autowired
	private UserDAO userDAO;
	
	@Autowired
	private BookDAO bookDAO;

	
	
	@GetMapping("/borrowstatus/view")
	public String borrowStatus(Model model
			, @RequestParam("id") int id) {
			
		User user = userDAO.selectUserInfo(id); 
		
		model.addAttribute("user", user);
		
		return "book/borrowstatus";
		
	}
	
	@GetMapping("/wishbook/list/view")
	public String wishbookList(Model model
			, @RequestParam("id") int id
			, HttpSession session
			) {
		
		User user = userDAO.selectUserInfo(id); 
		
		model.addAttribute("user", user);
		
		List<Book> wishbookList = bookDAO.selectWishBookList(id, userId);
		
		
		return "book/wishbooklist";
		
	}
	
	@GetMapping("/wishbook/add/view")
	public String wishbookAdd(Model model
			, @RequestParam("id") int id) {
		
		User user = userDAO.selectUserInfo(id); 
		
		model.addAttribute("user", user);

		return "book/wishbookadd";
	}
	
	
	
}
