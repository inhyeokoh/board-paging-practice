<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
    <title>테스트 사이트</title>
</head>
<body>
    <h3>자유게시판</h3>
    <a href="/board/write"><button>글쓰기</button></a>

    <%--게시물--%>
    <c:forEach var="post" items="${posts}">
        <div>
            <div>${post.id}</div>
            <div><a href="/board/detail?id=${post.id}">${post.title}</a></div>
            <div>${post.writer}</div>
            <div>${post.createdAt}</div>
        </div>
    </c:forEach>

</body>
</html>