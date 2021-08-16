package com.javaex.controller;

import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import com.javaex.service.UserService;
import com.javaex.vo.UserVo;

@RequestMapping(value = "/user/")
@Controller
public class UserController {

  @Autowired
  UserService userService;

  /*** 회원가입 폼 ***/
  @RequestMapping(value = "joinForm", method = {RequestMethod.GET, RequestMethod.POST})
  public String joinForm() {
    System.out.println("[현재 위치: MainController.joinForm]");

    return "user/joinForm";
  }

  /*** 회원가입 ***/
  @RequestMapping(value = "join", method = {RequestMethod.GET, RequestMethod.POST})
  public String join(@ModelAttribute UserVo userVo) {
    System.out.println("[현재 위치: MainController.join]");

    userService.join(userVo);

    return "user/joinSuccess";
  }

  /*** 로그인 폼 ***/
  @RequestMapping(value = "loginForm", method = {RequestMethod.GET, RequestMethod.POST})
  public String loginForm() {
    System.out.println("[현재 위치: MainController.loginForm]");

    return "user/loginForm";
  }

  /*** 로그인 ***/
  @RequestMapping(value = "login", method = {RequestMethod.GET, RequestMethod.POST})
  public String login(@ModelAttribute UserVo userVo, HttpSession session) {
    System.out.println("[현재 위치: MainController.login]");

    UserVo authUser = userService.getPerson(userVo);

    if (authUser != null) {
      System.out.println("[" + authUser.getUsername() + "] 님이 로그인 하셨습니다.");
      session.setAttribute("authUser", authUser);

      return "redirect: /jblog";

    } else {
      System.out.println("로그인 실패");

      return "redirect:/user/loginForm?result=fail";

    }
  }

  /*** 로그아웃 ***/
  @RequestMapping(value = "logout", method = {RequestMethod.GET, RequestMethod.POST})
  public String logout(HttpSession session) {

    session.removeAttribute("authUser");
    session.invalidate();

    return "redirect: /jblog";
  }


}
