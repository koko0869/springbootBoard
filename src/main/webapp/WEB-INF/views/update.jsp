<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="layoutTag" tagdir="/WEB-INF/tags"%>
<layoutTag:layout>
	<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
	<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>게시글 수정</h2>

	<div>
		<form action="/updateProc" method="post">
			<div>
				<label for="subject">제목</label> <input type="text" id="subject"
					name="subject" value="${detail.subject}">
			</div>
			<div class="form-group">
				<label for="content">내용</label>
				<textarea id="content" name="content" rows="3">${detail.content}</textarea>
			</div>
			<input type="hidden" name="bno" value="${bno}" />
			<button type="submit">수정</button>
		</form>
	</div>

</body>
</html>
</layoutTag:layout>   