package com.example.springboottest.entity;

import lombok.Data;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

/**
 * FileName:Book
 * Author: yuxiaoyin
 * Date: 2021/2/6 11:43
 * Description: Book的实体类
 */
@Entity
@Data
public class Book {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)    //设置主键自增
    private Integer id;
    private  String name;
    private  String author;
}
