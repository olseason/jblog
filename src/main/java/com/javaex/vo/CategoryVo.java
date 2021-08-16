package com.javaex.vo;

public class CategoryVo {

  // 필드
  private int cateno;
  private String id;
  private String catename;
  private String description;
  private String regdate;
  private int count;
  private int postno;
  private String posttitle;
  private String postcontent;



  // 생성자
  public CategoryVo() {

  }

  public CategoryVo(int cateno, String id, String catename, String description, String regdate, int count, int postno, String posttitle,
      String postcontent) {
    this.cateno = cateno;
    this.id = id;
    this.catename = catename;
    this.description = description;
    this.regdate = regdate;
    this.count = count;
    this.postno = postno;
    this.posttitle = posttitle;
    this.postcontent = postcontent;
  }

  // 메소드 - GS
  public int getCateno() {
    return cateno;
  }

  public void setCateno(int cateno) {
    this.cateno = cateno;
  }

  public String getId() {
    return id;
  }

  public void setId(String id) {
    this.id = id;
  }

  public String getCatename() {
    return catename;
  }

  public void setCatename(String catename) {
    this.catename = catename;
  }

  public String getDescription() {
    return description;
  }

  public void setDescription(String description) {
    this.description = description;
  }

  public String getRegdate() {
    return regdate;
  }

  public void setRegdate(String regdate) {
    this.regdate = regdate;
  }

  public int getCount() {
    return count;
  }

  public void setCount(int count) {
    this.count = count;
  }

  public int getPostno() {
    return postno;
  }

  public void setPostno(int postno) {
    this.postno = postno;
  }

  public String getPosttitle() {
    return posttitle;
  }

  public void setPosttitle(String posttitle) {
    this.posttitle = posttitle;
  }

  public String getPostcontent() {
    return postcontent;
  }

  public void setPostcontent(String postcontent) {
    this.postcontent = postcontent;
  }

  // 메소드 - 일반
  @Override
  public String toString() {
    return "CategoryVo [cateno=" + cateno + ", id=" + id + ", catename=" + catename + ", description=" + description + ", regdate=" + regdate
        + ", count=" + count + ", postno=" + postno + ", posttitle=" + posttitle + ", postcontent=" + postcontent + "]";
  }


}
