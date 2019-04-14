package com.bookstore.domain;

import org.springframework.format.annotation.DateTimeFormat;

import java.util.Date;

public class Book {
    private int id;
    private String title;
    private Double price;

    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date publishDate;



    public Book(String title, Double price, Date publishDate) {
        this.title = title;
        this.price = price;
        this.publishDate = publishDate;
    }

    public Book() {
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public Double getPrice() {
        return price;
    }

    public void setPrice(Double price) {
        this.price = price;
    }

    public Date getPublishDate() {
        return publishDate;
    }

    public void setPublishDate(Date publishDate) {
        this.publishDate = publishDate;
    }
}
