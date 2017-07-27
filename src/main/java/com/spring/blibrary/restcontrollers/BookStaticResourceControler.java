package com.spring.blibrary.restcontrollers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.spring.blibrary.services.BookService;

@RestController
public class BookStaticResourceControler {

	BookService bookService;
	
	@Autowired
	public BookStaticResourceControler(BookService bookService) {
		this.bookService = bookService;
	}


	@RequestMapping(value="/ShowImage", method=RequestMethod.GET, produces=MediaType.IMAGE_PNG_VALUE)
	public byte[] getBookImage(@PathVariable("bookId") String bookId) {
	    return bookService.getBookImageById(bookId);
	}
	
	@RequestMapping(value="/PdfContent", method=RequestMethod.GET, produces=MediaType.APPLICATION_PDF_VALUE)
	public byte[] getBookPdf(@PathVariable("bookId") String bookId) {
	    return bookService.getBookPdfById(bookId);
	}
}
