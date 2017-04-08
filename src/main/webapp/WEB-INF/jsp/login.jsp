<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
    String context = request.getContextPath();
    request.getSession().setAttribute("context", context);
%>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <meta charset=UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
    <%--<meta name="description" content="">--%>
    <%--<meta name="author" content="">--%>

    <title>自动排课系统</title>

    <script src="${context}/res/js/external/jquery-1.9.1.js"></script>
    <script src="${context}/res/js/main.js"></script>

</head>
<body>
<div id="header">
    <div id="logo">
        福州大学数计学院自动排课系统
    </div>
    <div id = go>
        <c:if test="${!empty errorMsg}">
            <div style="color:red">${errorMsg}</div>
        </c:if>
        <form class="form-signin"  action="${context}/xxxx" method="post">
            <label for="inputUserName" class="sr-only">用户名：</label>
            <input type="text" id="inputUserName" name="userName" class="form-control" placeholder="请输入帐号" required autofocus>&nbsp
            <label for="inputPassword" class="sr-only">密  码：</label>
            <input type="password" id="inputPassword" name="password" class="form-control" placeholder="请输入密码" required>

            <div style="width: 100%">
                <div style="float:left; width: 45%">
                    <button class="btn btn-lg btn-primary btn-block" type="submit" onClick="mainJS.func.signIn()">登  录</button></div>
                <div style="float:right; width: 45%">
                    <button class="btn btn-lg btn-primary btn-block" type="reset">重  置</button></div></div>
        </form>
    </div>
</div>

<button onClick="mainJS.func.signIn()">登  录1111111</button>

</body>
</html>