import Vue from 'vue'
import VueRouter from 'vue-router'
import BookManage from '../views/BookManage'
import AddBook from '../views/AddBook'
import PageFour from "@/views/PageFour"
import Index from "@/views/Index";
import UpdateBook from "@/views/UpdateBook";

Vue.use(VueRouter)

const routes = [
  {
    path: "/",
    name: "图书管理",
    component: Index,
    redirect: "/BookManage",
    show:true,
    children: [
      {
        path: "/BookManage",
        name: "查询图书",
        component: BookManage
      },
      {
        path: "/AddBook",
        name: "添加图书",
        component: AddBook
      },
      {
        path: "/updateBook",
        name: "编辑页面",
        component: UpdateBook
      }
    ]
  },
  {
    path: "navigation",
    name: "导航2",
    component: Index,
    show:false,
    children: [
      {
        path: "/updateBook",
        name: "页面三",
        component: UpdateBook
      },
      {
        path: "/pageFour",
        name: "页面四",
        component: PageFour
      }
    ]
  },
]

const router = new VueRouter({
  mode: 'history',
  base: process.env.BASE_URL,
  routes
})

export default router
