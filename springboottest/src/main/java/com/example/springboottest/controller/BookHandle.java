package com.example.springboottest.controller;

import com.example.springboottest.entity.Book;
import com.example.springboottest.repository.BookRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.web.bind.annotation.*;

import java.util.List;

/**
 * FileName:BookHandle
 * Author: yuxiaoyin
 * Date: 2021/2/6 12:02
 * Description: Bookcontroller
 */

@RestController
@RequestMapping("/book")
public class BookHandle {

    @Autowired
    private BookRepository bookRepository;

    @GetMapping("findAll/{page}/{size}")
    public Page<Book> findAll(@PathVariable("page") Integer page, @PathVariable("size") Integer size){
        Pageable pageable = PageRequest.of(page-1,size);
        return bookRepository.findAll(pageable);
    }

    @PostMapping("/save")
    public String save(@RequestBody Book book){
       Book result = bookRepository.save(book);
       if(result != null){
           return "success";
       }else {
           return "error";
       }
    }

    @GetMapping("/findById/{id}")
    public Book findById(@PathVariable("id") Integer id){
        return bookRepository.findById(id).get();
    }

    @PutMapping("/update")
    public String update(@RequestBody Book book){
        Book result = bookRepository.save(book);
        if(result != null){
            return "success";
        }else {
            return "error";
        }
    }

    @DeleteMapping("/deleteById/{id}")
    public void deleteById(@PathVariable("id") Integer id){
        bookRepository.deleteById(id);
    }

}
