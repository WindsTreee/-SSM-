<%--
  Created by IntelliJ IDEA.
  User: 风林
  Date: 2019/4/11
  Time: 15:13
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt_rt" %>
<!DOCTYPE html>
<html>
<head>
    <title>新增图书</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link href="${pageContext.request.contextPath}/style/main.css" type="text/css" rel="stylesheet" />
</head>
<body>
<div class="main">
    <h2 class="title"><span>新增图书</span></h2>
    <form action="<c:url value="/addbook.html"/>" method="post">
        <fieldset>
            <legend>图书</legend>
            <tr>
                <p>
                    <label for="title">图书名称：</label>
                    <td><input type="text" id="title" name="title"  value="${book.title}"/></td>
                </p>
            </tr>
            <tr>
                <p>
                    <label for="title">图书价格：</label>
                    <td><input type="text" id="price" name="price" value="${book.price}"/></td>
                </p>
            </tr>
            <tr>
                <p>
                    <label for="title">出版日期：</label>
                    <input type="text" id="publishDate" name="publishDate"  value="<fmt:formatDate value="${book.publishDate}" pattern="yyyy-MM-dd"/>"/>
                </p>
            </tr>
            <tr>
                <p>
                    <td><input type="submit" value="保存" class="btn"></td>
                </p>
            </tr>

        </fieldset>
    </form>
    <p style="color: red">${message}</p>
    <p>
        <a href="<c:url value="/list.html" />" class="abtn">返回列表</a>
    </p>
</div>
</body>
</html>
