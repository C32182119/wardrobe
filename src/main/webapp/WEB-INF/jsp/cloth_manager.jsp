<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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

    <select id="purchase_time">
        <option selected>不限</option>
        <option>三个月内</option>
        <option>半年内</option>
        <option>三个月内</option>
        <option>三个月内</option>
    </select>

    <select id="purchase_time">
    <option selected>不限</option>
    <option>三个月内</option>
    <option>半年内</option>
    <option>三个月内</option>
    <option>三个月内</option>
    </select>

    <select id="purchase_time">
    <option selected>不限</option>
    <option>三个月内</option>
    <option>半年内</option>
    <option>三个月内</option>
    <option>三个月内</option>
    </select>

    <select id="purchase_time">
    <option selected>不限</option>
    <option>三个月内</option>
    <option>半年内</option>
    <option>三个月内</option>
    <option>三个月内</option>
    </select>

    <select id="purchase_time">
    <option selected>不限</option>
    <option>三个月内</option>
    <option>半年内</option>
    <option>三个月内</option>
    <option>三个月内</option>
    </select>

    <select id="purchase_time">
    <option selected>不限</option>
    <option>三个月内</option>
    <option>半年内</option>
    <option>三个月内</option>
    <option>三个月内</option>
    </select>

    <input type="checkbox" text="待出售"/>

    <div>
        <img />
    <button>♥</button>
    <button></button>
    <button></button>
    </div>



    <a >xiugai</a>

    <div>
    显示基本信息
    </div>
    <div>
    修改基本信息
    <select></select>


    </div>

    </body>
</html>