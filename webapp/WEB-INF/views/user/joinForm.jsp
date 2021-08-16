<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JBlog</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/jblog.css">

<script type="text/javascript" src="${pageContext.request.contextPath }/assets/js/jquery/jquery-1.12.4.js"></script>
</head>
<body>
  <div id="center-content">

    <!-- 메인 해더 -->
    <c:import url="/WEB-INF/views/includes/main-header.jsp"></c:import>

    <div>
      <form id="joinForm" method="post" action="${pageContext.request.contextPath}/user/join">
        <table>
          <colgroup>
            <col style="width: 100px;">
            <col style="width: 170px;">
            <col style="">
          </colgroup>
          <tr>
            <td><label for="txtId">아이디</label></td>
            <td><input id="txtId" type="text" name="id"></td>
            <td><button id="btnIdCheck" type="button">아이디체크</button></td>
          </tr>
          <tr>
            <td></td>
            <td id="tdMsg" colspan="2"></td>
          </tr>
          <tr>
            <td><label for="txtPassword">패스워드</label></td>
            <td><input id="txtPassword" type="password" name="password" value=""></td>
            <td></td>
          </tr>
          <tr>
            <td><label for="txtUserName">이름</label></td>
            <td><input id="txtUserName" type="text" name="username" value=""></td>
            <td></td>
          </tr>
          <tr>
            <td><span>약관동의</span></td>
            <td colspan="3"><input id="chkAgree" type="checkbox" name="agree" value="y"> <label for="chkAgree">서비스 약관에 동의합니다.</label></td>
          </tr>
        </table>
        <div id="btnArea">
          <button id="btnJoin" class="btn" type="submit">회원가입</button>
        </div>

      </form>

    </div>

    <!-- 메인 푸터  자리-->

  </div>

</body>

<script type="text/javascript">
	var flag = false;
	/* 아이디 중복체크 눌렀을 때 */
	$("#btnIdCheck").on("click", function() {
		$.ajax({
			// 컨트롤러에서 대기중인 URL 주소이다.
			url : "${pageContext.request.contextPath}/api/user/idCheck",
			// HTTP method type(GET, POST) 형식이다.
			type : "get",
			// Json 형태의 데이터로 보낸다.
			contentType : "application/json",
			// Json 형식의 데이터를 받는다.
			dataType : "json",
			data : {
				id : $("[name=id]").val()
			},
			// 성공일 경우 success로 들어오며, 'result'는 응답받은 데이터이다.
			success : function(result) {
				/*성공시 처리해야될 코드 작성*/
				if (result === true) {
					$("#tdMsg").html("사용할 수 있는 아이디 입니다.");
					flag = true;
				} else if (result === false) {
					$("#tdMsg").html("다른 아이디로 가입해 주세요.");
				} else if (result === "") {
					$("#tdMsg").html("관리자에게 문의");
				}
			},
			// 실패할경우 error로 들어온다.
			error : function(XHR, status, error) {
				console.error(status + " : " + error);
			}
		});
	});
	/* 회원가입 버튼 눌렀을 때 */
	$("#joinForm").on("submit", function() {
		if ($("#txtId").val().length < 1) {
			alert("아이디를 입력해 주세요.");
			return false;
		}
		if (flag === false) {
			alert("아이디 중복체크를 해주세요.");
			return false;
		}
		if ($("#txtPassword").val().length < 1) {
			alert("패스워드를 입력해 주세요.");
			return false;
		}
		if ($("#txtUserName").val().length < 1) {
			alert("이름을 입력해 주세요.");
			return false;
		}
		if ($("#chkAgree").is(":checked") === false) {
			alert("약관에 동의해주세요.");
			return false;
		}
		return true;
	});
</script>

</html>