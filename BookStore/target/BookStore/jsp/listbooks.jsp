<%--
  Created by IntelliJ IDEA.
  User: 风林
  Date: 2019/4/10
  Time: 21:16
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--因为采用的JSP是2.0版本的，所以使用fmt要用RT备用库，否则正常配置即可（2.0版本一定要用core）--%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt_rt" %>
<html>
<head>
    <title>图书管理</title>
    <link href="${pageContext.request.contextPath}/style/main.css" type="text/css" rel="stylesheet" />
</head>
<body>
<div class="main">
    <h2 class="title"><span>图书管理</span></h2>
    <h2 class="title">欢迎！${USER_CONTEXT.username}</h2>

    <form action="<c:url value="/deleteBatchbook.html" />" method="post">
        <table border="1" width="100%" class="tab">
            <tr>
                <th><input type="checkbox" id="chbAll"></th>
                <th>编号</th>
                <th>书名</th>
                <th>价格</th>
                <th>出版日期</th>
                <th>操作</th>
            </tr>
            <c:forEach var="book" items="${books}">
                <tr>
                    <th><input type="checkbox" name="ids" value="${book.id}"></th>
                    <td>${book.id}</td>
                    <td>${book.title}</td>
                    <td>${book.price}</td>
                    <td><fmt:formatDate value="${book.publishDate}" pattern="yyyy年MM月dd日"/></td>
                    <td>
                        <a href="<c:url value="/deletebook.html" />?bookid=${book.id}" class="abtn">删除</a>
                        <a href="<c:url value="/updatebookindex.html" />?bookid=${book.id}" class="abtn">编辑</a>
                    </td>
                </tr>
            </c:forEach>
        </table>
        <%--<p style="color: red">${message}</p>--%>
        <p>
            <a href="<c:url value="/addbookindex.html" />" class="abtn">添加</a>
            <input type="submit"  value="删除选择项" class="btn"/>
            <a href="<c:url value="/user/login.html" />" class="abtn">登录</a>
            <c:if test="${!empty USER_CONTEXT.username}">
                <a href="<c:url value="/user/logout.html" />" class="abtn">注销</a>
            </c:if>
        </p>
    </form>
</div>
</body>
</html>
