<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:import url="../layout/app.jsp">
    <c:param name="content">
        <h2>タスク一覧</h2>
        <ul>
            <c:forEach var="tas" items="${tasks}">
            <li>
            <a href="${pageContext.request.contextPath}/show?id=${tas.id}">
                <c:out value="${tas.id}" />
            </a>
             :<c:out value="${tas.content}"/>


        </li>
        </c:forEach>
        </ul>


        <p><a href="${psgeContext.request.contextPath}/new">新規タスク投稿</a></p>

    </c:param>
</c:import>
