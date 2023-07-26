<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	body{
		background-color: lightyellow;
	}
	#movie{
		position: absolute;
	}
	#movie2{
		position: absolute;
		left: 450px;
	}
	#close{
		padding: 30px;
		text-align: right;
	}
	#close2{
		padding: 30px;
		text-align: right;
	}
</style>
<%-- jQuery 라이브러리 CDN --%>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.0/jquery.min.js"></script>
<script type="text/javascript">
$(document).ready(function(){
	var hideGuide1 = getCookie('hideGuide1');
	if (hideGuide1) {
		$("#movie").hide();
	}

	var hideGuide2 = getCookie('hideGuide2');
	if (hideGuide2) {
		$("#movie2").hide();
	}

	$("#close1").on("click", function(){
		$("#movie").hide();
		if ($(".todaynot1").prop("checked")) {
			setCookie('hideGuide1', 'true', 1); // 1일 동안 쿠키 유지
		}
	});

	$("#close2").on("click", function(){
		$("#movie2").hide();
		if ($(".todaynot2").prop("checked")) {
			setCookie('hideGuide2', 'true', 1); // 1일 동안 쿠키 유지
		}
	});

	function setCookie(name, value, days) {
		var expires = "";
		if (days) {
			var date = new Date();
			date.setTime(date.getTime() + (days * 24 * 60 * 60 * 1000));
			expires = "; expires=" + date.toUTCString();
		}
		document.cookie = name + "=" + (value || "")  + expires + "; path=/";
	}

	function getCookie(name) {
		var nameEQ = name + "=";
		var ca = document.cookie.split(';');
		for (var i = 0; i < ca.length; i++) {
			var c = ca[i];
			while (c.charAt(0) === ' ') c = c.substring(1, c.length);
			if (c.indexOf(nameEQ) === 0) return c.substring(nameEQ.length, c.length);
		}
		return null;
	}
});
</script>
</head>
<body>
	<div id="movie">
		<img alt="" src="../images/workplace.jpg">
		<div style="background-color: skyblue">
		<input type="checkbox" class="todaynot1"><span>오늘그만보기</span>
		<span id="close1">닫기</span></div>
	</div>
	<div id="movie2">
		<img alt="" src="../images/tree-1.jpg">
		<div  style="background-color: tomato">
		<input type="checkbox" class="todaynot2"><span>오늘그만보기</span>
		<span id="close2">닫기</span></div>
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