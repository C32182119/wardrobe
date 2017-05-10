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
</head>
<body>
<div id="app">
        <!-- header -->
        <div class="container">
            <!-- 导航栏 -->
            <el-row class="bg-white">
                <!-- nav-header -->
                <el-col :span="6">
                    <div class="grid-content bg-white">
                        <a href="javascript:mainJS.ajax.requestHtml('index', 'main');" class="header-brand">Wardrobe</a>
                    </div>
                </el-col>
                <!-- nav-header /- -->
                <!-- nav-menu -->
                <el-col :span="10" :offset="6">
                    <div class="grid-content">
                        <el-menu default-active="1" mode="horizontal">
                            <el-menu-item index="1"><a href="javascript:mainJS.ajax.requestHtml('index', 'main');">首页</a></el-menu-item>
                            <el-menu-item index="2"><a href="javascript:mainJS.ajax.requestHtml('management', 'main');">衣橱管理</a></el-menu-item>
                            <el-menu-item index="3"><a href="javascript:mainJS.ajax.requestHtml('market', 'main');">二手市场</a></el-menu-item>
                            <el-menu-item index="4"><a href="javascript:mainJS.ajax.requestHtml('info-release', 'main');">动态</a></el-menu-item>
                            <el-menu-item index="5"><a href="javascript:mainJS.ajax.requestHtml('index', 'main');">后台</a></el-menu-item>
                        </el-menu>
                    </div>
                </el-col>
                <!-- nav-menu /- -->
                <!-- nav-user -->
                <el-col :span="2">
                    <div class="login point"><a @click="signIn = true">登录</a></div>
                    <el-dialog title="登录" v-model="signIn" size="tiny">
                        <el-form :model="signInForm" :rules="signInRule" ref="signInForm" label-width="100px">
                            <!-- 需要修改验证 -->
                            <div class="login-form">
                                <el-form-item label="用户名" prop="username">
                                    <el-input v-model="signInForm.username"></el-input>
                                </el-form-item>
                                <el-form-item label="密码" prop="password">
                                    <el-input type="password" v-model="signInForm.password" auto-complete="off"></el-input>
                                </el-form-item>
                                <el-form-item class="center">
                                    <el-button type="primary" @click="submitForm('signInForm')">登录</el-button>
                                </el-form-item>
                            </div>
                        </el-form>
                    </el-dialog>
                    <div class="deliver-line">&nbsp; | &nbsp;</div>
                    <div class="register point"><a @click="signUp = true">注册</a></div>
                    <el-dialog title="注册" v-model="signUp" size="tiny">
                        <el-form :model="signUpForm" :rules="signUpRule" ref="signUpForm" label-width="100px">
                            <!-- 需要修改验证 -->
                            <div class="login-form">
                                <el-form-item label="用户名" prop="username">
                                    <el-input v-model.number="signUpForm.username"></el-input>
                                </el-form-item>
                                <el-form-item label="密码" prop="password">
                                    <el-input type="password" v-model="signUpForm.password" auto-complete="off"></el-input>
                                </el-form-item>
                                <el-form-item label="确认密码" prop="checkPassword">
                                    <el-input type="password" v-model="signUpForm.checkPassword" auto-complete="off"></el-input>
                                </el-form-item>
                                <el-form-item class="center">
                                    <el-button type="primary" @click="submitForm('signUpForm')">注册</el-button>
                                </el-form-item>
                            </div>
                        </el-form>
                    </el-dialog>
                </el-col>
                <!-- nav-user /- -->
            </el-row>
        <!-- 导航栏 /- -->
        </div>
        <!-- header /- -->
        <div id="main">

        </div>
</div>

<script src="res/js/external/jquery-1.9.1.js"></script>
<!-- 引入Vue -->
<script src="res/js/external/vue.js"></script>
<!-- 引入组件库 -->
<script src="res/js/external/index.js"></script>

<script src="res/js/main.js"></script>
<script>
    (function (mainJS) {
        mainJS.vue.app = new Vue({
            el: "#app",
            data: function () {
                //登录注册验证函数
                var checkUsername = (rule, value, callback) => {
                    if (value === '') {
                        return callback(new Error('用户名不能为空'));
                    }
                    else {
                        callback();
                    }
                };
                var validatePassword = (rule, value, callback) => {
                    if (value === '') {
                        callback(new Error('请输入密码'));
                    }
                    else {
                        if (this.signUpForm.password !== '') {
                            this.$refs.signUpForm.validateField('checkPassword');
                        }
                        callback();
                    }
                };
                var revalidatePassword = (rule, value, callback) => {
                    if (value === '') {
                        callback(new Error('请再次输入密码'));
                    }
                    else if (value !== this.signUpForm.password) {
                        callback(new Error('两次输入密码不一致!'));
                    }
                    else {
                        callback();
                    }
                };
                return {
                    user: mainJS.data.user,
                    signIn: false,
                    signUp: false,
                    //登录
                    signInForm: {
                        username: '',
                        password: '',
                    },
                    signInRule: {
                        username: [
                            { validator: checkUsername, trigger: 'blur' }
                        ],
                        password: [
                            { validator: validatePassword, trigger: 'blur' }
                        ]
                    },
                    //注册
                    signUpForm: {
                        username: '',
                        password: '',
                        checkPassword: ''
                    },
                    signUpRule: {
                        username: [
                            { validator: checkUsername, trigger: 'blur' }
                        ],
                        password: [
                            { validator: validatePassword, trigger: 'blur' }
                        ],
                        checkPassword: [
                            { validator: revalidatePassword, trigger: 'blur' }
                        ]
                    }

                };
            },
            methods: {
                //登录注册对话框
                submitForm(formName) {
                    var user = {}, result;
                    user.username = this[formName].username;
                    user.password = this[formName].password;
                    if (formName === "signInForm") {
                        result = mainJS.ajax.signIn(user);
                        if (result === true) {
                            alert("登录成功");
                            this.signIn = false;
                        }
                        else if (result === false) {
                            alert("密码错误");
                        }
                    }
                    else if (formName === "signUpForm") {
                        result = mainJS.ajax.signUp(user);
                        if (result === true) {
                            alert("注册成功");
                            this.signUp = false;
                        }
                        else if (result === false) {
                            alert("用户名已存在");
                        }
                    }
                }
            }
        });
    })(mainJS);
    mainJS.ajax.requestHtml("index", "main");
</script>
</body>
</html>