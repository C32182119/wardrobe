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
    <title>wardrobe</title>

    <link rel="stylesheet" href="${context}/res/css/main.css">

    <script src="${context}/res/js/external/jquery-1.9.1.js"></script>
    <script src="${context}/res/js/main.js"></script>
</head>
<body>
    <%--菜单栏以外的部分--%>
    <div id="content">
    <%--左区域--%>
    <div>
        <%--头像--%>
        <div id="avatar">
            <img id="avatar_img"/>
            <a href="">xxxx</a>
        <%--自己的空间--%>
        <%--none--%>
        <%--别人的空间--%>
        <%--关注/取消--%>
            <a href="">关注</a>
        </div>
    </div>
    <%--右区域--%>
    <div>
        <%--xxxx的主页--%>
        <div>xxxx的主页</div>
        <%--主要信息--%>
        <div>
            <%--个人动态--%>
            <div>
                <%--。。。可能有很多--%>
                <div>
                    <%--内容--%>
                    <div></div>
                    <%--评论--%>
                    <a href="#">评论</a>
                </div>
            </div>
            <%--二手交易--%>
            <div>
                <%--。。。可能有很多--%>
                <div>
                <%--内容--%>
                <div></div>
                <%--评论--%>
                <a href="#">评论</a>
                </div>
            </div>
        </div>
    </div>
    </div>
    <%--显示个人动态内容区域--%>
    <div id="share_info">
    </div>
    <%--编辑个人动态框--%>
    <input id="edit_share_info">
    <%--显示二手交易信息区域--%>
    <div id="sale_info">
    </div>
    <%--显示二手交易信息区域--%>
    <input id="edit_sale_info">
    <%--评论框--%>
    <input id="common">
</body>
</html>