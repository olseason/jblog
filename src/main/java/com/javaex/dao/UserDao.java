package com.javaex.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import com.javaex.vo.UserVo;

@Repository
public class UserDao {

  @Autowired
  SqlSession sqlSession;

  /*** 아이디 중복체크 ***/
  public UserVo idCheck(String id) {
    System.out.println("[사용 메소드: UserDao.idCheck()]");

    return sqlSession.selectOne("user.idCheck", id);
  }

  /*** 회원가입 ***/
  public int join(UserVo userVo) {
    System.out.println("[사용 메소드: UserDao.join()]");

    System.out.println("[" + userVo.getUsername() + "] 님이 회원가입 했습니다.");

    int count = sqlSession.insert("user.join", userVo);

    return count;
  }

  /*** 유저 정보 가져오기(로그인) ***/
  public UserVo getPerson(UserVo userVo) {
    System.out.println("[사용 메소드: UserDao.getPerson()]");

    return sqlSession.selectOne("user.getPerson", userVo);
  }



}
