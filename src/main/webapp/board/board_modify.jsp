<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ include file="../include/header.jsp" %>

<div align="center" class="div_center">
	<h3>게시판 글 수정 페이지</h3>
	<hr>
	
	<form action="board_update.board" method="post">
		
		<table border="1" width="500">
		
			<!-- 화면에서 보여질 필요는 없지만, 데이터 form으로 전송해야할 때
				input태그의 hidden 속성을 씁니다. 
			-->
			<input type="hidden" name="bno" value="${vo.bno }">
			
			<%-- <tr>
				<td>글 번호</td>
				<td>${vo.bno }</td>
			</tr>
			<tr> --%>
				<td>작성자</td>
				<td><input type="text" name="writer" value="${vo.writer }" readonly></td>
			</tr>
			<tr>
				<td>글 제목</td>
				<td>
					<input type="text" name="title" value="${vo.title }">
				</td>
			</tr>
			<tr>
				<td>글 내용</td>
				<td>
					<textarea rows="10" style="width: 95%;" name="content">${vo.content }</textarea>
				</td>
			</tr>
			<tr>
				<td colspan="2">
					<input type="submit" value="수정 하기" onclick="">&nbsp;&nbsp;
					<input type="button" value="목록">        
				</td>
			</tr>
			
		</table>
	</form>
	
</div>

<%@ include file="../include/footer.jsp" %>
