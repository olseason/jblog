<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JBlog</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/jblog.css">
<script type="text/javascript" src="${pageContext.request.contextPath }/assets/js/jquery/jquery-1.12.4.js"></script>
</head>

<body>
  <div id="wrap">

    <!-- 개인블로그 해더 -->
    <c:import url="/WEB-INF/views/includes/blog-header.jsp"></c:import>

    <div id="content" class="clearfix">
      <div id="profilecate_area">
        <div id="profile">

          <!-- 기본이미지 -->
          <img id="proImg" src="${pageContext.request.contextPath}${blogVo.logofile}">

          <!-- 사용자업로드 이미지 -->
          <%-- <img id="proImg" src=""> --%>

          <div id="nick">${blogVo.username}(${blogVo.id})님</div>
        </div>
        <div id="cate">
          <div class="text-left">
            <strong>카테고리</strong>
          </div>
          <ul id="cateList" class="text-left">
            <c:forEach items="${categoryList}" var="categoryList">
              <li><a href="${pageContext.request.contextPath}/${categoryList.id}?cate=${categoryList.cateno}">${categoryList.catename}</a></li>
            </c:forEach>
          </ul>
        </div>
      </div>
      <!-- profilecate_area -->

      <div id="post_area">
        <c:if test="${fn:length(postList) < 1}">
          <div id="postBox" class="clearfix">
            <div id="postTitle" class="text-left">
              <strong>등록된 글이 없습니다.</strong>
            </div>
            <div id="postDate" class="text-left">
              <strong></strong>
            </div>
            <div id="postNick"></div>
          </div>

          <div id="post"></div>

        </c:if>

        <c:choose>
          <c:when test="${postno != 0}">
            <div id="postBox" class="clearfix">
              <div id="postTitle" class="text-left">

                <strong>${postOne.posttitle}</strong>
              </div>
              <div id="postDate" class="text-left">
                <strong>${postOne.regdate}</strong>
              </div>
              <div id="postNick">${blogVo.username}(${blogVo.id})님</div>
            </div>
            <!-- //postBox -->
            <div id="post">
              <pre>${postOne.postcontent}</pre>
            </div>
            <!-- //post -->
          </c:when>

          <c:when test="${cate != 0}">
            <c:forEach items="${catePostList}" var="catePostList" end="0">
              <div id="postBox" class="clearfix">
                <div id="postTitle" class="text-left">

                  <strong>${catePostList.posttitle}</strong>
                </div>
                <div id="postDate" class="text-left">
                  <strong>${catePostList.regdate}</strong>
                </div>
                <div id="postNick">${blogVo.username}(${blogVo.id})님</div>
              </div>
              <!-- //postBox -->
              <div id="post">
                <pre>${catePostList.postcontent}</pre>
              </div>
              <!-- //post -->
            </c:forEach>
          </c:when>

          <c:otherwise>
            <c:forEach items="${postList}" var="postList" end="0">
              <div id="postBox" class="clearfix">
                <div id="postTitle" class="text-left">

                  <strong>${postList.posttitle}</strong>
                </div>
                <div id="postDate" class="text-left">
                  <strong>${postList.regdate}</strong>
                </div>
                <div id="postNick">${blogVo.username}(${blogVo.id})님</div>
              </div>
              <!-- //postBox -->
              <div id="post">
                <pre>${postList.postcontent}</pre>
              </div>
              <!-- //post -->
            </c:forEach>
          </c:otherwise>
        </c:choose>

        <div id="list">
          <div id="listTitle" class="text-left">
            <strong>카테고리의 글</strong>
          </div>
          <table>
            <colgroup>
              <col style="">
              <col style="width: 20%;">
            </colgroup>

            <c:choose>
              <c:when test="${cate != 0}">
                <c:forEach items="${catePostList}" var="catePostList">
                  <tr>
                    <td class="text-left"><a href="${pageContext.request.contextPath}/${catePostList.id}?read=${catePostList.postno}&cate=${catePostList.cateno}">${catePostList.posttitle}</a></td>
                    <td class="text-right">${catePostList.regdate}</td>
                  </tr>
                </c:forEach>
              </c:when>

              <c:otherwise>
                <c:forEach items="${postList}" var="postList">
                  <tr>
                    <td class="text-left"><a href="${pageContext.request.contextPath}/${postList.id}?read=${postList.postno}&cate=${postList.cateno}">${postList.posttitle}</a></td>
                    <td class="text-right">${postList.regdate}</td>
                  </tr>
                </c:forEach>
              </c:otherwise>
            </c:choose>
          </table>
        </div>
        <!-- //list <-->
      </div>
      <!-- //post_area -->



    </div>
    <!-- //content -->
    <div class=></div>
    <c:import url="/WEB-INF/views/includes/blog-footer.jsp"></c:import>



  </div>
  <!-- //wrap -->
</body>
</html>