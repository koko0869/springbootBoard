<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="layoutTag" tagdir="/WEB-INF/tags"%>      <!-- 추가 -->
<layoutTag:layout>  


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
insert페이지
<h3> 게시글 작성 </h3>
 
<div class="container">
    <form action="/insertProc" method="post" enctype="multipart/form-data"> <!-- 추가 -->
      <div class="form-group">
        <label for="subject">제목</label>
        <input type="text" class="form-control" id="subject" name="subject" placeholder="제목을 입력하세요.">
      </div>
      <div class="form-group">
        <label for="writer">작성자</label>
        <input type="text" class="form-control" id="writer" name="writer" placeholder="내용을 입력하세요.">
      </div>
      <div class="form-group">
        <label for="content">내용</label>
        <textarea class="form-control" id="content" name="content" rows="3"></textarea>
      </div>
      
      <input type="file" name="files"> <!-- 추가 -->
      
      <button type="submit">작성</button>
    </form>
</div> 
 

</body>
</html>
</layoutTag:layout>       

