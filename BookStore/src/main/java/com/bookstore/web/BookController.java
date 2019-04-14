package com.bookstore.web;

import com.bookstore.domain.Book;
import com.bookstore.service.BookService;
import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import javax.jws.WebParam;
import javax.servlet.http.HttpServletRequest;
import java.util.List;

@Controller
public class BookController {

    @Autowired
    private BookService bookService;

    @RequestMapping("/list")
    public ModelAndView listAllbooks(){
        ModelAndView view = new ModelAndView();
        List<Book> books = bookService.getAllBooks();
        view.addObject("books",books);
        view.setViewName("/listbooks");
        return view;
    }

    @RequestMapping("/addbookindex")
    public String addBookIndex(){
        return "/AddBook";
    }

    @RequestMapping(value = "/addbook",method = RequestMethod.POST)
    public ModelAndView addBook(Book book) throws Exception {
        bookService.add(book);
        ModelAndView view = new ModelAndView();
        view.addObject("message","添加成功！");
        view.setViewName("/AddBook");
        return view;
    }

    @RequestMapping(value = "/deletebook")
    public ModelAndView deleteBook(int bookid) throws Exception {
        bookService.deleteBookById(bookid);
        ModelAndView view = new ModelAndView();
        view.addObject("books",bookService.getAllBooks());
        view.setViewName("/listbooks");
        return view;
    }

    @RequestMapping(value = "/deleteBatchbook")
    public ModelAndView deleteBatchBook(int[] ids) throws Exception{
        bookService.deleteBatchBooks(ids);
        ModelAndView view = new ModelAndView();
        view.addObject("books",bookService.getAllBooks());
        view.setViewName("/listbooks");
        return view;
    }

    @RequestMapping(value = "/updatebookindex")
    public ModelAndView updateBookIndex(int bookid){
        ModelAndView view = new ModelAndView();
        view.addObject("book",bookService.getBookById(bookid));
        view.setViewName("/EditBook");
        return view;
    }

    @RequestMapping(value = "/updatebook")
    public ModelAndView updateBook(Book book){
        bookService.update(book);
        ModelAndView view = new ModelAndView();
        view.addObject("message","修改成功");
        view.setViewName("/EditBook");
        return view;
    }

}
