<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="layoutTag" tagdir="/WEB-INF/tags"%> 
    <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
   
<layoutTag:layout>  

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
${detail}

<h3> 게시글 상세 </h3>
 
<div>
 
      <div >
        <label>제목</label>
        <p>${detail.subject}</p>
      </div>
      <div >
        <label>작성자</label>
        <p>${detail.writer}</p>
      </div>
      <div >
        <label>작성날짜</label>
        <p> <fmt:formatDate value="${detail.reg_date}" pattern="yyyy.MM.dd HH:mm:ss"/></p>
      </div>
      <div >
        <label>내용</label>
        <p>${detail.content}</p>
      </div>
      
      <div > <!-- 첨부파일 다운로드 -->
        <label>첨부파일</label>
        <p><a href="/fileDown/${files.bno}">${files.fileOriName}</a></p>
      </div> 

</div>
<button onclick="location.href='/update/${detail.bno}'">수정</button> 
<button onclick="location.href='/delete/${detail.bno}'">삭제</button>  
<button onclick="location.href='/list'">글목록</button>  

 <!--  댓글  -->
    <div class="container">
        <label for="content">comment</label>
        <form name="commentInsertForm">
            <div class="input-group">
               <input type="hidden" name="bno" value="${detail.bno}"/>
               <input type="text" class="form-control" id="content" name="content" placeholder="내용을 입력하세요.">
               <span class="input-group-btn">
                    <button class="btn btn-default" type="button" name="commentInsertBtn">등록</button>
               </span>
              </div>
        </form>
    </div>
    
    <div class="container">
        <div class="commentList"></div>
    </div>


</body>
</html>
<%@ include file="commentS.jsp" %>

</layoutTag:layout>       