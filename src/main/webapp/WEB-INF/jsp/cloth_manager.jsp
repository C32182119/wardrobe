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

    <%--菜单栏以外的部分的右侧区域--%>
    <div>
        <%--筛选条件区域,右上--%>
        <div>
            <select id="purchase_time">
                <option selected>不限</option>
                <option>三个月内</option>
                <option>半年内</option>
                <option>一年内</option>
                <option>两年内</option>
                <option>两年以上</option>
            </select>

            <select id="season">
                <option selected>不限</option>
                <option>春秋</option>
                <option>夏</option>
                <option>冬</option>
            </select>

            <select id="occasion">
                <option selected>不限</option>
                <option>工作</option>
                <option>休闲</option>
                <option>宴会</option>
                <option>其他</option>
            </select>

            <select id="material">
                <option selected>不限</option>
                <option>羊毛</option>
                <option>丝绸</option>
                <option>羽绒</option>
                <option>棉麻</option>
                <option>其他</option>
            </select>

            <select id="color">
                <option selected>不限</option>
                <option>浅色</option>
                <option>深色</option>
                <option>亮色</option>
                <option>其他</option>
            </select>

            <input type="checkbox" text="待出售"/>

            <input type="checkbox" text="待清理"/>
        </div>

        <%--整齐排列，右下--%>
        <div>
            <%--多个--%>
            <div>
                <img />
                <button>♥</button>
                <button>二</button>
                <button>×</button>
            </div>

            <%--添加新衣--%>
            <button id="add">＋</button>
        </div>


        <div>
            <%--图片区域，右左--%>
            <div>
                <div>
                <%--显示图片--%>
                <img />
                <button>♥</button>
                <button>二</button>
                <button>×</button>
                <a>修改</a>
                <a>删除</a>
                </div>

                <div>
                <%--添加，修改图片--%>
                <img />
                <button>♥</button>
                <button>二</button>
                <button>×</button>
                </div>
            </div>

            <%--信息区域，右右--%>
            <div>
                <div>
                    <%--显示基本信息--%>
                    <div>
                    显示基本信息
                    </div>

                    <%--修改基本信息--%>
                    <div>
                    <%--默认值为修改前信息--%>
                    修改基本信息
                    <select></select>
                    </div>

                    <%--录入基本信息--%>
                    <div>
                    <select id="write_purchase_time">
                    <option selected>不限</option>
                    <option>三个月内</option>
                    <option>半年内</option>
                    <option>一年内</option>
                    <option>两年内</option>
                    <option>两年以上</option>
                    </select>

                    <select id="write_season">
                    <option selected>不限</option>
                    <option>春秋</option>
                    <option>夏</option>
                    <option>冬</option>
                    </select>

                    <select id="write_occasion">
                    <option selected>不限</option>
                    <option>工作</option>
                    <option>休闲</option>
                    <option>宴会</option>
                    <option>其他</option>
                    </select>

                    <select id="write_material">
                    <option selected>不限</option>
                    <option>羊毛</option>
                    <option>丝绸</option>
                    <option>羽绒</option>
                    <option>棉麻</option>
                    <option>其他</option>
                    </select>

                    <select id="write_color">
                    <option selected>不限</option>
                    <option>浅色</option>
                    <option>深色</option>
                    <option>亮色</option>
                    <option>其他</option>
                    </select>

                    <button id="commit">提交</button>
                    </div>
                </div>
            </div>
        </div>
    </div>
    </body>
</html>