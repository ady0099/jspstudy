<%@page import="java.time.LocalDateTime"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
body {
	background-color: lightyellow;
}

#movie {
	position: absolute;
}

#movie2 {
	position: absolute;
	left: 530px;
}

#close {
	padding: 10px;
	text-align: right;
}

#close2 {
	padding: 10px;
	text-align: right;
}
</style>
<%-- jQuery 라이브러리 CDN --%>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.0/jquery.min.js"></script>
<%-- https://plugins.jquery.com/cookie/ --%>
<script type="text/javascript" src="../js/jquery.cookie.js"></script>
<script type="text/javascript">
	alert(document.cookie); //모든 쿠키를 볼 수 있음
	$(document).ready(function() {
		var ban_popup2 = $.cookie('ban_popup2');
		if (ban_popup2 != null && ban_popup2 == 'true') {
			$("#movie2").css("display", "none");
		}

		$("#close").on("click", function() {
			$("#movie").css("display", "none");
		});
		$("#close2").on("click", function() {
			$("#movie2").css("display", "none");
		});
		$("#closeday").on("click", function() {
			//https://dullyshin.github.io/2019/09/10/WEB-CookiesMakeDel/
			$.cookie('ban_popup2', 'true', {
				expires : 1
			});
			$("#movie2").css("display", "none");
		});
	});
</script>
</head>
<body>
	<div id="movie">
		<img alt="" src="../images/pic_bulbon.gif"
			style="background-color: skyblue; width: 500px; height: 300px;">
		<div id="close" style="background-color: skyblue;">닫기</div>
	</div>
	<div id="movie2">
		<img alt="" src="../images/pic_bulbon.gif"
			style="background-color: skyblue; width: 500px; height: 300px;">
		<div>
			<span id="close2" style="background-color: skyblue;">닫기</span> <span
				id="closeday" style="background-color: skyblue;">오늘 그만 보기</span>>
		</div>
	</div>
	<div>
		<h2>ICT 사진관</h2>
		<div>
			<p>사진관 오시는 길</p>
			<p>2호선 신촌역</p>
			<p>사진관 오시는 길</p>
			<p>2호선 신촌역</p>
			<p>사진관 오시는 길</p>
			<p>2호선 신촌역</p>
			<p>사진관 오시는 길</p>
			<p>2호선 신촌역</p>
			<p>사진관 오시는 길</p>
			<p>2호선 신촌역</p>
			<p>사진관 오시는 길</p>
			<p>2호선 신촌역</p>
			<p>사진관 오시는 길</p>
			<p>2호선 신촌역</p>
			<p>사진관 오시는 길</p>
			<p>2호선 신촌역</p>
			<p>사진관 오시는 길</p>
			<p>2호선 신촌역</p>
			<p>사진관 오시는 길</p>
			<p>2호선 신촌역</p>
			<p>사진관 오시는 길</p>
			<p>2호선 신촌역</p>
		</div>
	</div>
</body>
</html>