package com.javaex.service;

import java.io.BufferedOutputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.util.HashMap;
import java.util.Map;
import java.util.UUID;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.javaex.dao.BlogDao;
import com.javaex.vo.BlogVo;

@Service
public class BlogService {

  @Autowired
  BlogDao blogDao;

  /*** 블로그 정보 가져오기 ***/
  public BlogVo selectBlog(String id) {

    return blogDao.selectBlog(id);

  }

  /*** 블로그 로고 변경 ***/
  public void logoTitle(BlogVo blogVo) {

    Map<String, Object> logoTitleMap = new HashMap<String, Object>();

    logoTitleMap.put("id", blogVo.getId());

    if (blogVo.getBlogtitle().equals("")) {
      String orgName = blogVo.getFile().getOriginalFilename();
      String exName = orgName.substring(orgName.lastIndexOf("."));
      String saveName = System.currentTimeMillis() + UUID.randomUUID().toString() + exName;
      String filePath = "E:\\javaStudy\\upload\\" + saveName;
      String filePath2 = "/upload/" + saveName;

      try {
        byte[] fileData = blogVo.getFile().getBytes();
        OutputStream out = new FileOutputStream(filePath);
        BufferedOutputStream bos = new BufferedOutputStream(out);

        bos.write(fileData);
        bos.close();

      } catch (IOException e) {

        e.printStackTrace();
      }

      logoTitleMap.put("logofile", filePath2);
      logoTitleMap.put("type", 1);

      blogDao.updateLogoTitle(logoTitleMap);

    } else if (blogVo.getFile().getSize() == 0) {
      logoTitleMap.put("blogtitle", blogVo.getBlogtitle());
      logoTitleMap.put("type", 2);

      blogDao.updateLogoTitle(logoTitleMap);

    } else {
      String orgName = blogVo.getFile().getOriginalFilename();
      String exName = orgName.substring(orgName.lastIndexOf("."));
      String saveName = System.currentTimeMillis() + UUID.randomUUID().toString() + exName;
      String filePath = "E:\\javaStudy\\upload\\" + saveName;
      String filePath2 = "/upload/" + saveName;

      try {
        byte[] fileData = blogVo.getFile().getBytes();
        OutputStream out = new FileOutputStream(filePath);
        BufferedOutputStream bos = new BufferedOutputStream(out);

        bos.write(fileData);
        bos.close();

      } catch (IOException e) {

        e.printStackTrace();
      }

      logoTitleMap.put("blogtitle", blogVo.getBlogtitle());
      logoTitleMap.put("logofile", filePath2);

      blogDao.updateLogoTitle(logoTitleMap);
    }
  }

  /*** 블로그 주소 정보 가져오기 ***/
  public boolean selectBlogUrl(String id) {

    BlogVo check = blogDao.selectBlogUrl(id);

    if (check != null) {
      return true;

    } else {
      return false;

    }


  }

}
