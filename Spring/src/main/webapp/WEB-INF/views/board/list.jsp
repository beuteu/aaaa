<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<style>
table {
    border-collapse: collapse;
}

table, th, td {
    border: 1px solid #cccccc;
}

th {
    padding: 10px 5px;
}

td {
    padding: 5px;
}

</style>
<h1 style="float: left"> 리스트</h1>
<table style=" clear: both">
	<colgroup>
		<col width="100px;">
		<col width="740px">
		<col width="100px;">
		<col width="200px;">
	</colgroup>
	
		<tr>
			<th style="text-align: center; background-color: #F2F2F2; ">번호</th>
			<th style="text-align: center; background-color: #F2F2F2">제목</th>
			<th style="text-align: center; background-color: #F2F2F2">사용자</th>
			<th style="text-align: center; background-color: #F2F2F2">등록일</th>
		</tr>
	<c:forEach items="${list}" var="lee">
		<tr >
			<td style="text-align: center">${lee.bno}</td>
			<td style="text-align: left"><a href="/board/view?bno=${lee.bno }">${lee.title}</a></td>
			<td style="text-align: center">${lee.userId}</td>
			<td style="text-align: center">${lee.rgsde}</td>
		</tr>
	</c:forEach>
</table>
<a href="/board/register" style=" float: right">등록하기</a>