package com.spring.blibrary.services;

public interface BookService {

	byte[] getBookImageById(String bookId);

	byte[] getBookPdfById(String bookId);

}
