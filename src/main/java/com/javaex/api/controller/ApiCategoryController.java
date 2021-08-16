package com.javaex.api.controller;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import com.javaex.service.CategoryService;
import com.javaex.vo.CategoryVo;

@RequestMapping(value = "/api/blog/")
@Controller
public class ApiCategoryController {

  @Autowired
  CategoryService categoryService;

  /*** 카테고리 리스트 출력 ***/
  @ResponseBody
  @RequestMapping(value = "category", method = {RequestMethod.GET, RequestMethod.POST})
  public List<CategoryVo> categoryLsit(@RequestParam("id") String id) {
    System.out.println("[현재 위치: ApiCategoryController.categoryLsit]");

    return categoryService.categoryList(id);
  }

  /*** 카테고리 추가 ***/
  @ResponseBody
  @RequestMapping(value = "categoryAdd", method = {RequestMethod.GET, RequestMethod.POST})
  public CategoryVo categoryAdd(@ModelAttribute CategoryVo categoryVo) {
    System.out.println("[현재 위치: ApiCategoryController.categoryAdd]");

    return categoryService.insertCategory(categoryVo);
  }

  /*** 카테고리 삭제 ***/
  @ResponseBody
  @RequestMapping(value = "deleteCategory", method = {RequestMethod.GET, RequestMethod.POST})
  public int deleteCategory(@RequestParam("cateno") int cateno) {
    System.out.println("[현재 위치: ApiCategoryController.deleteCategory]");

    return categoryService.deleteCategory(cateno);

  }

}