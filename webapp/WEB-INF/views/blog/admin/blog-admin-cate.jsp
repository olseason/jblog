<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

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

    <div id="content">
      <ul id="admin-menu" class="clearfix">
        <li class="tabbtn selected"><a href="${pageContext.request.contextPath}/${authUser.id}/admin/basic">기본설정</a></li>
        <li class="tabbtn"><a href="${pageContext.request.contextPath}/${authUser.id}/admin/category">카테고리</a></li>
        <li class="tabbtn"><a href="${pageContext.request.contextPath}/${authUser.id}/admin/writeForm">글작성</a></li>
      </ul>
      <!-- //admin-menu -->

      <div id="admin-content">

        <table id="admin-cate-list">
          <colgroup>
            <col style="width: 50px;">
            <col style="width: 200px;">
            <col style="width: 100px;">
            <col>
            <col style="width: 50px;">
          </colgroup>
          <thead>
            <tr>
              <th>번호</th>
              <th>카테고리명</th>
              <th>포스트 수</th>
              <th>설명</th>
              <th>삭제</th>
            </tr>
          </thead>
          <tbody id="cateList"></tbody>
        </table>

        <table id="admin-cate-add">
          <colgroup>
            <col style="width: 100px;">
            <col style="">
          </colgroup>
          <tr>
            <td class="t">카테고리명</td>
            <td><input type="text" name="name" value=""></td>
          </tr>
          <tr>
            <td class="t">설명</td>
            <td><input type="text" name="desc" value=""></td>
          </tr>
        </table>

        <input type="hidden" value="${blogVo.id}" id="blogVoId">
        <input type="hidden" id="cateno" value="">

        <div id="btnArea">
          <button id="btnAddCate" class="btn_l" type="submit">카테고리추가</button>
        </div>

      </div>
      <!-- //admin-content -->
    </div>
    <!-- //content -->


    <!-- 개인블로그 푸터 -->
    <c:import url="/WEB-INF/views/includes/blog-footer.jsp"></c:import>


  </div>
  <!-- //wrap -->
</body>

<script type="text/javascript">
	// 로딩되었을 때
	$(document).ready(function() {
		categoryList();
	});
	// 삭제 눌렀을 때
	$("#admin-cate-list").on("click", ".btnCateDel", function() {
		console.log("클릭");
		$("#cateno").val($(this).data("cateno"));
		var cateno = $("#cateno").val();
		$.ajax({
			// 컨트롤러에서 대기중인 URL 주소이다.
			url : "${pageContext.request.contextPath}/api/blog/deleteCategory",
			// HTTP method type(GET, POST) 형식이다.
			type : "get",
			// Json 형태의 데이터로 보낸다.
			contentType : "application/json",
			// Json 형식의 데이터를 받는다.
			dataType : "json",
			data : {
				cateno : $("#cateno").val()
			},
			// 성공일 경우 success로 들어오며, 'result'는 응답받은 데이터이다.
			success : function(result) {
				/*성공시 처리해야될 코드 작성*/
				$("#c-" + cateno).remove();
			},
			// 실패할경우 error로 들어온다.
			error : function(XHR, status, error) {
				console.error(status + " : " + error);
			}
		});
	});
	// 카테고리 버튼 눌렀을 때
	$("#btnAddCate").on("click", function() {
		$.ajax({
			// 컨트롤러에서 대기중인 URL 주소이다.
			url : "${pageContext.request.contextPath}/api/blog/categoryAdd",
			// HTTP method type(GET, POST) 형식이다.
			type : "get",
			// Json 형태의 데이터로 보낸다.
			contentType : "application/json",
			// Json 형식의 데이터를 받는다.
			dataType : "json",
			data : {
				id : $("#blogVoId").val(),
				catename : $("[name=name]").val(),
				description : $("[name=desc]").val()
			},
			// 성공일 경우 success로 들어오며, 'result'는 응답받은 데이터이다.
			success : function(categoryList) {
				/*성공시 처리해야될 코드 작성*/
				render(categoryList, "up");
				$("[name='desc']").val("");
				$("[name='name']").val("");
			},
			// 실패할경우 error로 들어온다.
			error : function(XHR, status, error) {
				console.error(status + " : " + error);
			}
		});
	});
	// 카테고리 리스트 가져오기
	function categoryList() {
		$.ajax({
			// 컨트롤러에서 대기중인 URL 주소이다.
			url : "${pageContext.request.contextPath}/api/blog/category",
			// HTTP method type(GET, POST) 형식이다.
			type : "get",
			// Json 형태의 데이터로 보낸다.
			contentType : "application/json",
			// Json 형식의 데이터를 받는다.
			dataType : "json",
			data : {
				id : $("#blogVoId").val()
			},
			// 성공일 경우 success로 들어오며, 'result'는 응답받은 데이터이다.
			success : function(categoryList) {
				/*성공시 처리해야될 코드 작성*/
				console.log(categoryList);
				// 화면에 그리기
				for (var i = 0; i < categoryList.length; i++) {
					render(categoryList[i], "down");
				}
			},
			// 실패할경우 error로 들어온다.
			error : function(XHR, status, error) {
				console.error(status + " : " + error);
			}
		});
	};
	// 카테고리 1개씩 가져와 출력
	function render(categoryVo, type) {
		var str = '';
		str += '<tr id="c-' + categoryVo.cateno + '" >';
		str += '  <td>' + categoryVo.cateno + '</td>';
		str += '  <td>' + categoryVo.catename + '</td>';
		str += '  <td>' + categoryVo.count + '</td>';
		str += '  <td>' + categoryVo.description + '</td>';
		str += '  <td class=text-center><img data-cateno="'+ categoryVo.cateno +'" class="btnCateDel" src="${pageContext.request.contextPath}/assets/images/delete.jpg"></td>';
		str += '</tr>';
		if (type === "up") {
			$("#cateList").prepend(str);
		} else if (type === "down") {
			$("#cateList").append(str);
		} else {
			console.log("방향을 지정해주세요.")
		}
	};
</script>



</html>