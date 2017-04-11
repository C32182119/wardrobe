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


        <%--二手交易商品--%>
        <div>
                <%--多个商品--%>
                <ul>
                    <li>
                        <%--商品--%>
                        <div>
                            <%--添加，修改图片--%>
                            <img />
                            <label>商品名</label>
                            <label>出售价格</label>
                            <label>卖家用户名</label>
                        </div>
                    </li>
                    <li></li>
                    <li></li>
                    ……
                </ul>

                <%--商品详情--%>
                <div>
                        <%--左侧--%>
                        <img />
                        <%--右侧--%>
                        <div>
                        <%--商品信息--%>
                        <div>
                            <a>卖家用户名</a>
                            <label>商品名</label>
                            <label>原始价格</label>
                            <label>出售价格</label>
                            <label>尺码</label>
                        </div>
                        <%--留言板--%>
                        <div>
                        </div>
                        </div>


                </div>
        </div>


        </body>
        </html>