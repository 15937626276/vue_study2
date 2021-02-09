package com.example.springboottest.repository;

import com.example.springboottest.entity.Book;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.TestPropertySource;

import static org.junit.jupiter.api.Assertions.*;

/**
 * FileName:BookRepositoryTest
 * Author: yuxiaoyin
 * Date: 2021/2/6 11:50
 * Description:
 */
@SpringBootTest
class BookRepositoryTest {

    @Autowired
    private BookRepository bookRepository;

    @Test
    void findAll(){
        System.out.println(bookRepository.findAll());
    }

    @Test
    void findById(){
        Book book =  bookRepository.findById(1).get();
        System.out.println(book);
    }

    @Test
    void update(){
        Book book = new Book();
        book.setId(23);
        book.setName("测试测试");
        book.setAuthor("ceshi");
       Book book1 =  bookRepository.save(book);
       System.out.println(book1);
    }

    @Test
    void delete() {
       bookRepository.deleteById(23);
    }

}