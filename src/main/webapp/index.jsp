<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en" xmlns:font-family="http://www.w3.org/1999/xhtml">
<head>
    <meta charset="UTF-8">
    <title>wardrobe</title>

    <!-- 引入样式 -->
    <link rel="stylesheet" href="res/styles/external/index.css">
    <link rel="stylesheet" href="res/styles/main.css">

    <script src="res/js/external/jquery-1.9.1.js"></script>
    <!-- 引入Vue -->
    <script src="res/js/external/vue.js"></script>
    <!-- 引入组件库 -->
    <script src="res/js/external/index.js"></script>

</head>
<body>
    <div id="app_1">
        <!-- header -->
        <div class="container">
            <!-- 导航栏 -->
            <el-row class="bg-white">
                <!-- nav-header -->
                <el-col :span="6">
                    <div class="grid-content bg-white">
                        <a href="../page_1.html" class="header-brand">Wardrobe</a>
                    </div>
                </el-col>
                <!-- nav-header /- -->

                <!-- nav-menu -->
                <el-col :span="10" :offset="6">
                    <div class="grid-content">
                        <el-menu default-active="1" mode="horizontal" @select="handleSelect">
                            <el-menu-item index="1"><a href="#">首页</a></el-menu-item>
                            <el-menu-item index="2"><a href="../page_2_01.html">衣橱管理</a></el-menu-item>
                            <el-menu-item index="3"><a href="../page_3.html">二手市场</a></el-menu-item>
                            <el-menu-item index="4"><a href="../page_4.html">动态</a></el-menu-item>
                            <el-menu-item index="5"><a href="../page_5.html">后台</a></el-menu-item>
                        </el-menu>
                    </div>
                </el-col>
                <!-- nav-menu /- -->

                <!-- nav-user -->
                <el-col :span="2">
                    <div class="login point"><a @click="dialogVisible2 = true">登录</a></div>
                    <el-dialog title="登录" v-model="dialogVisible2" size="tiny">
                        <el-form :model="ruleForm2" :rules="rules2" ref="ruleForm2" label-width="100px">
                        <!-- 需要修改验证 -->
                            <div class="login_form">
                                <el-form-item label="用户名" prop="userName">
                                    <el-input v-model.number="ruleForm2.userName"></el-input>
                                </el-form-item>
                                <el-form-item label="密码" prop="pass">
                                    <el-input type="password" v-model="ruleForm2.pass" auto-complete="off"></el-input>
                                </el-form-item>
                                <el-form-item class="center">
                                    <el-button type="primary" @click="submitForm('ruleForm2')">登录</el-button>
                                </el-form-item>
                            </div>
                        </el-form>
                    </el-dialog>
                    <div class="deliver-line">&nbsp; | &nbsp;</div>
                    <div class="register point"><a @click="dialogVisible3 = true">注册</a>
                        <el-dialog title="注册" v-model="dialogVisible3" size="tiny">
                            <el-form :model="ruleForm3" :rules="rules3" ref="ruleForm3" label-width="100px">
                            <!-- 需要修改验证 -->
                                <div class="login_form">
                                    <el-form-item label="用户名" prop="userName">
                                        <el-input v-model.number="ruleForm3.userName"></el-input>
                                    </el-form-item>
                                    <el-form-item label="密码" prop="pass">
                                        <el-input type="password" v-model="ruleForm3.pass" auto-complete="off"></el-input>
                                    </el-form-item>
                                    <el-form-item label="确认密码" prop="checkPass">
                                        <el-input type="password" v-model="ruleForm3.checkPass" auto-complete="off"></el-input>
                                    </el-form-item>

                                    <el-form-item class="center">
                                        <el-button type="primary" @click="submitForm('ruleForm3')">注册</el-button>
                                    </el-form-item>
                                </div>
                            </el-form>
                        </el-dialog>
                    </div>
                </el-col>
                <!-- nav-user /- -->
            </el-row>
        <!-- 导航栏 /- -->
        </div>
        <!-- header /- -->
        <div id="main"></div>
    </div>

    <script src="res/js/main.js"></script>
    <script>mainJS.ajax.test();</script>
</body>
</html>