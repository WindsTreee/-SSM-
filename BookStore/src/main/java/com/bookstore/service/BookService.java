package com.bookstore.service;

import com.bookstore.dao.BookDao;
import com.bookstore.domain.Book;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class BookService {

    @Autowired
    private BookDao bookDao;

    public List<Book> getAllBooks(){
        return bookDao.getAllBooks();
    }
    public Book getBookById(int id){
        return bookDao.getBookById(id);
    }
    public int add(Book book) throws Exception{
        if(book.getTitle().isEmpty() || book==null){
            throw new Exception("书名不能为空！");
        }
        return bookDao.add(book);
    }
    public int deleteBookById(int id){
        return bookDao.deleteBookById(id);
    }
    public int deleteBatchBooks(int[] ids){
        int rows = 0;
        for(int i:ids){
            rows += deleteBookById(i);
        }
        return rows;
    }
    public int update(Book book){
        return bookDao.update(book);
    }

}
