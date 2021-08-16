package com.javaex.dao;

import java.util.List;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import com.javaex.vo.CategoryVo;
import com.javaex.vo.UserVo;

@Controller
public class CategoryDao {

  @Autowired
  SqlSession sqlSession;

  /*** 카테고리 리스트 가져오기 ***/
  public List<CategoryVo> categoryList(String id) {
    System.out.println("[사용 메소드: CategoryDao.cateList()]");

    return sqlSession.selectList("category.selectCategory", id);
  }

  /*** 카테고리 추가 ***/
  public int insertCategory(CategoryVo categoryVo) {
    System.out.println("[사용 메소드: CategoryDao.insertCategory()]");

    int count = sqlSession.insert("category.insertCate", categoryVo);

    return count;
  }

  /*** 카테고리 미분류 추가 ***/
  public int insertCategoryBasic(UserVo userVo) {
    System.out.println("[사용 메소드: CategoryDao.insertCategoryBasic()]");

    int count = sqlSession.insert("category.insertBasicCate", userVo);

    return count;
  }

  /*** 카테고리 가져오기(ajax) ***/
  public CategoryVo cateList(int cateno) {
    System.out.println("[사용 메소드: CategoryDao.cateList()]");

    return sqlSession.selectOne("category.selectCategoryOne", cateno);
  }

  /*** 카테고리 삭제(ajax) ***/
  public int deleteCategory(int cateno) {
    System.out.println("[사용 메소드: CategoryDao.deleteCategory()]");

    int count = sqlSession.delete("category.deleteCategory", cateno);

    return count;
  }

  /*** 글쓰기 ***/
  public int insertWrite(CategoryVo categoryVo) {
    System.out.println("[사용 메소드: CategoryDao.insertWrite()]");

    int count = sqlSession.insert("category.insertWrite", categoryVo);

    return count;
  }

  /*** 글 가져오기 ***/
  public List<CategoryVo> postList(String id) {
    System.out.println("[사용 메소드: CategoryDao.postList()]");

    return sqlSession.selectList("category.selectPostList", id);
  }

  /*** 글 1개 가져오기 ***/
  public CategoryVo postOne(int postno) {
    System.out.println("[사용 메소드: CategoryDao.postList()]");

    return sqlSession.selectOne("category.selectPostOne", postno);
  }

  /*** 카테고리에 맞는 글 가져오기 ***/
  public List<CategoryVo> catePostList(int cateno) {
    System.out.println("[사용 메소드: CategoryDao.catePostList()]");

    return sqlSession.selectList("category.selectCatePostList", cateno);
  }

}
