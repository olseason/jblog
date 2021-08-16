package com.javaex.service;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.javaex.dao.CategoryDao;
import com.javaex.vo.CategoryVo;

@Service
public class CategoryService {

  @Autowired
  CategoryDao categoryDao;

  /*** 카테고리 리스트 가져오기 ***/
  public List<CategoryVo> categoryList(String id) {

    return categoryDao.categoryList(id);

  }

  /*** 카테고리 추가 ***/
  public CategoryVo insertCategory(CategoryVo categoryVo) {

    categoryDao.insertCategory(categoryVo);
    int cateno = categoryVo.getCateno();

    return categoryDao.cateList(cateno);

  }

  /*** 카테고리 삭제 ***/
  public int deleteCategory(int cateno) {

    return categoryDao.deleteCategory(cateno);

  }

  /*** 글쓰기 ***/
  public int insertWrite(CategoryVo categoryVo) {

    int count = categoryDao.insertWrite(categoryVo);

    return count;
  }

  /*** 글 가져오기 ***/
  public List<CategoryVo> postList(String id) {

    return categoryDao.postList(id);

  }

  /*** 글 1개 가져오기 ***/
  public CategoryVo postOne(int postno) {

    return categoryDao.postOne(postno);

  }

  /*** 카테고리에 맞는 글 가져오기 ***/
  public List<CategoryVo> catePostList(int cateno) {

    return categoryDao.catePostList(cateno);
  }

}

