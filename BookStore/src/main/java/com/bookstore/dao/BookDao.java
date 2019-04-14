package com.bookstore.dao;

import com.bookstore.domain.Book;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface BookDao {
    public List<Book> getAllBooks();
    public Book getBookById(int id);
    public int add(Book book);
    public int deleteBookById(int id);
    public int update(Book book);
}
