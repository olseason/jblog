package com.javaex.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.javaex.dao.BlogDao;
import com.javaex.dao.CategoryDao;
import com.javaex.dao.UserDao;
import com.javaex.vo.UserVo;

@Service
public class UserService {

  @Autowired
  UserDao userDao;

  @Autowired
  BlogDao blogDao;

  @Autowired
  CategoryDao categoryDao;

  /*** 아이디 중복체크 ***/
  public boolean idCheck(String id) {
    if (userDao.idCheck(id) == null) {
      return true;

    } else {
      return false;

    }
  }

  /*** 회원가입 ***/
  public void join(UserVo userVo) {

    userDao.join(userVo);

    blogDao.insertBlog(userVo);

    categoryDao.insertCategoryBasic(userVo);

  }

  /*** 유저 정보 가져오기(로그인) ***/
  public UserVo getPerson(UserVo userVo) {

    return userDao.getPerson(userVo);
  }


}
