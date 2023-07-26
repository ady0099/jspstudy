<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	 <!-- <button onclick="list_go()">리스트로 이동하기</button> -->
	 
	 
  	 <jsp:forward page="/GuestController">
	 	<jsp:param value="list" name="cmd" />
	 </jsp:forward>  


	<script type="text/javascript">
	/* 	 function list_go(){
			location.href="/02_jsp/GuestController?cmd=list";
		}
		window.onload = function(){
			 list_go();
			 location.href="/02_jsp/GuestController?cmd=list";
		} */
		 
	</script>
</body>
</html>