package com.javaex.dao;

import java.util.Map;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import com.javaex.vo.BlogVo;
import com.javaex.vo.UserVo;

@Controller
public class BlogDao {

  @Autowired
  SqlSession sqlSession;

  /*** 블로그 생성 ***/
  public int insertBlog(UserVo userVo) {
    System.out.println("[사용 메소드: BlogDao.insertBlog()]");

    int count = sqlSession.insert("blog.insertBlog", userVo);

    return count;
  }

  /*** 블로그 정보 가져오기 ***/
  public BlogVo selectBlog(String id) {
    System.out.println("[사용 메소드: BlogDao.selectBlog()]");

    return sqlSession.selectOne("blog.selectBlog", id);
  }

  /*** 블로그 로고 및 타이틀 변경 ***/
  public int updateLogoTitle(Map<String, Object> logoTitleMap) {
    System.out.println("[사용 메소드: BlogDao.updateLogoTitle()]");

    int count = sqlSession.update("blog.updateLogo", logoTitleMap);

    return count;
  }

  /*** 블로그 주소 정보 가져오기 ***/
  public BlogVo selectBlogUrl(String id) {
    System.out.println("[사용 메소드: BlogDao.selectBlogUrl()]");

    return sqlSession.selectOne("blog.selectBlogUrl", id);
  }

}
