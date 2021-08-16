package com.javaex.vo;

import org.springframework.web.multipart.MultipartFile;

public class BlogVo {

  // 필드
  private int userno;
  private String username;
  private String id;
  private String blogtitle;
  private String logofile;
  private MultipartFile file;


  // 생성자
  public BlogVo() {

  }

  public BlogVo(int userno, String username, String id, String blogtitle, String logofile) {
    this.userno = userno;
    this.username = username;
    this.id = id;
    this.blogtitle = blogtitle;
    this.logofile = logofile;
  }



  // 메소드 - GS
  public int getUserno() {
    return userno;
  }

  public void setUserno(int userno) {
    this.userno = userno;
  }

  public MultipartFile getFile() {
    return file;
  }

  public void setFile(MultipartFile file) {
    this.file = file;
  }

  public String getUsername() {
    return username;
  }

  public void setUsername(String username) {
    this.username = username;
  }

  public String getId() {
    return id;
  }

  public void setId(String id) {
    this.id = id;
  }

  public String getBlogtitle() {
    return blogtitle;
  }

  public void setBlogtitle(String blogtitle) {
    this.blogtitle = blogtitle;
  }

  public String getLogofile() {
    return logofile;
  }

  public void setLogofile(String logofile) {
    this.logofile = logofile;
  }



  // 메소드 - 일반
  @Override
  public String toString() {
    return "BlogVo [userno=" + userno + ", username=" + username + ", id=" + id + ", blogtitle=" + blogtitle + ", logofile=" + logofile + ", file="
        + file + "]";
  }

}