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
    <title>登录</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link href="${pageContext.request.contextPath}/style/main.css" type="text/css" rel="stylesheet" />
</head>
<body>
<div class="main">
    <h2 class="title"><span>用户登录</span></h2>
    <form action="<c:url value="/user/judge.html"/>" method="post">
        <fieldset>
            <tr>
                <p>
                    <label for="username">用户名：</label>
                    <td><input type="text" id="username" name="username" /></td>
                </p>
            </tr>
            <tr>
                <p>
                    <label for="password">密码：</label>
                    <td><input type="password" id="password" name="password"/></td>
                </p>
            </tr>
            <tr>
                <p>
                    <td><input type="submit" value="登录" class="btn"></td>
                </p>
            </tr>

        </fieldset>
    </form>
    <p style="color: red">${message}</p>
    <p>
        <a href="<c:url value="/list.html" />" class="abtn">返回图书列表</a>
    </p>
</div>
</body>
</html>
