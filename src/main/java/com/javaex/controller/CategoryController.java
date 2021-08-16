package com.javaex.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import com.javaex.service.BlogService;
import com.javaex.service.CategoryService;
import com.javaex.vo.CategoryVo;

@Controller
public class CategoryController {

  @Autowired
  BlogService blogService;

  @Autowired
  CategoryService categoryService;

  /*** 블로그 관리 폼(카테고리) ***/
  @RequestMapping(value = "/{id}/admin/category", method = {RequestMethod.GET, RequestMethod.POST})
  public String category(@PathVariable("id") String id, Model model) {
    System.out.println("[현재 위치: BlogController.category]");

    model.addAttribute("blogVo", blogService.selectBlog(id));
    model.addAttribute("cateList", categoryService.categoryList(id));

    return "blog/admin/blog-admin-cate";

  }

  /*** 블로그 관리 폼(글쓰기) ***/
  @RequestMapping(value = "/{id}/admin/writeForm", method = {RequestMethod.GET, RequestMethod.POST})
  public String writeForm(@PathVariable("id") String id, Model model) {
    System.out.println("[현재 위치: BlogController.writeForm]");

    model.addAttribute("blogVo", blogService.selectBlog(id));
    model.addAttribute("categoryList", categoryService.categoryList(id));

    return "blog/admin/blog-admin-write";

  }

  /*** 블로그 관리(글쓰기) ***/
  @RequestMapping(value = "/{id}/admin/write", method = {RequestMethod.GET, RequestMethod.POST})
  public String write(@ModelAttribute CategoryVo categoryVo) {
    System.out.println("[현재 위치: BlogController.write]");

    categoryService.insertWrite(categoryVo);

    return "redirect:/" + categoryVo.getId();

  }


}
