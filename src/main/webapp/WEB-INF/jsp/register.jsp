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
        <title>自动排课系统</title>

        <link rel="stylesheet" href="${context}/res/css/main.css">

        <script src="${context}/res/js/external/jquery-1.9.1.js"></script>
        <script src="${context}/res/js/main.js"></script>
        </head>
        <body>


        <label>用户名：</label>
        <input id="username">
        <label>密  码：</label>
        <input id="password">

        <button onClick="">确认</button>
        <button onClick="">重置</button>

        </body>
        </html>