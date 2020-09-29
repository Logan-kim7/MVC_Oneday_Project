<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<c:set var="rootPath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>매입매출 리스트 2020</title>
</head>
<body>
 <header>
      <h1>쇼핑몰 매입매출 LIST V1</h1>
      <h5>매입매출현황을 확인해줄수있는 프로그램</h5>
    </header>

     <nav id="main-nav">
      <ul>
        <li id="menu-home">매입매출LIST</li>
        <li id="menu-books">매입매출 입력</li>
        <li id="menu-read-book">독서록</li>
        <li>네이버 검색</li>
        
        <sec:authorize access="isAnonymous()">
	        <li id="menu-join">회원가입</li>
    	    <li id="menu-login">로그인</li>
        </sec:authorize>
        <sec:authorize access="isAuthenticated()">
	        <li id="menu-mypage">마이페이지</li>
        	<li>
        		<form:form action="${rootPath}/logout">
        		<button>로그아웃</button>
        		</form:form>
        	</li>
        </sec:authorize>
        <sec:authorize access="hasRole('ADMIN')">
        	<li>관리자</li>
        </sec:authorize>
      </ul>
    </nav>
     <section id="main-section">
    <c:choose>
    	<c:when test="${BODY == 'IOLIST-LIST'}">
    		<%@ include file="" %>
    	</c:when>
    	<c:when test="${BODY == 'IO-WRITE'}">
    		<%@ include file="" %>
    	</c:when>
    	<c:when test="${BODY == 'IO-DETAIL'}">
    		<%@ include file="" %>
    	</c:when>
    	<c:when test="${BODY == 'MEMBER-JOIN' }">
    		<%@ include file="" %>
    	</c:when>
		<c:otherwise>
    		<%@ include file="/WEB-INF/views/main-body.jsp" %>		
    	</c:otherwise>
    </c:choose>
    </section>
    <footer>
      <address>CopyRight &copy; skynate22@naver.com</address>
    </footer>  
</body>
</html>