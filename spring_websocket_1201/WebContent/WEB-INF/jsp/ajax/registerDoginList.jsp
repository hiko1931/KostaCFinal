<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<div>
	<input type="hidden" value="${p_num }" name="p_num">
	<h3>수강중인 강의</h3>
	<table class="table">
		<tr>
			<th>과목</th>
			<th>컨텐츠명</th>
			<th>진행율</th>
			<th>남은일수</th>
		</tr>
		<c:forEach var="listv" items="${list }">
			<tr>
				<td>${listv.cc_name }</td>
				<td><a href="registerClassList?ct_num=${listv.ct_num }">${listv.ct_sub }</a></td>
				<td><progress max="100" value="${listv.percent }"></progress>${listv.percent}%</td>
				<td>${listv.finish_date }일</td>
			</tr>
		</c:forEach>
	</table>
	<div id="chap_list"></div>
</div>