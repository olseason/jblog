package com.javaex.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import com.javaex.service.BlogService;
import com.javaex.service.CategoryService;
import com.javaex.vo.BlogVo;

@Controller
public class BlogController {

  @Autowired
  BlogService blogService;

  @Autowired
  CategoryService categoryService;

  /*** 블로그 메인 ***/
  @RequestMapping(value = "/{id}", method = {RequestMethod.GET, RequestMethod.POST})
  public String blogMain(@PathVariable("id") String id, Model model, @RequestParam(value = "read", required = false, defaultValue = "0") int postno,
      @RequestParam(value = "cate", required = false, defaultValue = "0") int cate) {
    System.out.println("[현재 위치: BlogController.main]");

    boolean check = blogService.selectBlogUrl(id);

    model.addAttribute("blogVo", blogService.selectBlog(id));
    model.addAttribute("postList", categoryService.postList(id));
    model.addAttribute("categoryList", categoryService.categoryList(id));
    model.addAttribute("postno", postno);
    model.addAttribute("cate", cate);

    if (postno != 0) {
      model.addAttribute("postOne", categoryService.postOne(postno));

    }

    if (cate != 0) {
      model.addAttribute("catePostList", categoryService.catePostList(cate));

    }

    if (check == true) {
      return "blog/blog-main";

    } else {
      return "redirect: /jblog";

    }


  }

  /*** 블로그 관리 폼(제목, 로고) ***/
  @RequestMapping(value = "/{id}/admin/basic", method = {RequestMethod.GET, RequestMethod.POST})
  public String adminBasic(@PathVariable("id") String id, Model model) {
    System.out.println("[현재 위치: BlogController.admin-basic]");

    model.addAttribute("blogVo", blogService.selectBlog(id));

    return "blog/admin/blog-admin-basic";
  }

  /*** 블로그 관리(제목, 로고) ***/
  @RequestMapping(value = "/{id}/logoTitle", method = {RequestMethod.GET, RequestMethod.POST})
  public String logoTitle(@PathVariable("id") String id, @ModelAttribute BlogVo blogVo) {
    System.out.println("[현재 위치: BlogController.logoTitle]");

    blogService.logoTitle(blogVo);

    return "redirect:/" + id;
  }

}