package com.example.springboottest.repository;

import com.example.springboottest.entity.Book;
import org.springframework.data.jpa.repository.JpaRepository;

/**
 * FileName:BookRepository
 * Author: yuxiaoyin
 * Date: 2021/2/6 11:47
 * Description: Book的接口
 */
public interface BookRepository extends JpaRepository<Book,Integer> {
}
