var CLASS_PATH = "http://localhost:8080/wardrobe/";
var loadingInstance;
//主js模块
var mainJS = (function (){
    "use strict";
    var local = {}, vue = {}, data = {}, event = {}, ui = {}, ajax = {},
        module = {
            vue: vue,
            data: data,
            event: event,
            ui: ui,
	        ajax: ajax
        };
    //local
    {
        local.CLASS_PATH = "http://localhost:8080/wardrobe/";
    }
    //data
    {
        data.user = undefined;
    }
    //event
    {

    }
    //ui
    {

    }
    //ajax
    {
	    ajax.requestHtml = function (htmlName, parentDomId) {
	        if (htmlName !== "index" && mainJS.data.user === undefined) {
		        return ajax.requestHtml("index", parentDomId);
            }
		    loadingInstance = Vue.prototype.$loading({ target: "#" + parentDomId, text:"加载中..." });
		    $.ajax({
			    url: CLASS_PATH + htmlName + ".html",
			    type: "GET",
			    dataType: "html",
			    success: function (data) {
				    loadingInstance.close();
				    $("#" + parentDomId).html(data);
			    },
			    error: function () {
				    loadingInstance.close();
				    alert("网络连接异常");
			    }
		    });
	    };

        ajax.requestPartialHtml = function (htmlName, parentDomId) {
	        loadingInstance = Vue.prototype.$loading({ target: "#" + parentDomId, text:"加载中..." });
            var str = htmlName.split("-");
	        $.ajax({
		        url: CLASS_PATH + str[0] + "/" + str[1],
		        type: "GET",
		        dataType: "html",
		        success: function (data) {
			        loadingInstance.close();
			        $("#" + parentDomId).html(data);
		        },
		        error: function () {
			        loadingInstance.close();
			        alert("网络连接异常");
		        }
	        });
        };

        //登录页
	    ajax.signIn = function (user) {
	        var result;
            $.ajax({
                url: CLASS_PATH + "sign-in",
                type: "POST",
	            async: false,
                dataType: "json",
                contentType: "application/json",
                data: JSON.stringify(user),
                success: function (data) {
                    if (data !== null) {
	                    mainJS.data.user = data;
	                    CLASS_PATH = local.CLASS_PATH + data.userId + "/";
                        result = true;
                    }
                    else {
	                    result = false;
                    }
                },
                error: function () {
	                result = undefined;
                    alert("网络连接异常");
                }
            });
            return result;
        };

	    ajax.signOut = function () {
		    CLASS_PATH = local.CLASS_PATH;
		    mainJS.data.user = undefined;
	    };

	    ajax.signUp = function (user) {
		    var result;
		    $.ajax({
			    url: CLASS_PATH + "sign-up",
			    type: "POST",
			    async: false,
			    dataType: "json",
			    contentType: "application/json",
			    data: JSON.stringify(user),
			    success: function (data) {
				    if (data !== null) {
					    result = true;
				    }
				    else {
					    result = false;
				    }
			    },
			    error: function () {
				    result = undefined;
				    alert("网络连接异常");
			    }
		    });
		    return result;
	    };

        //用户页
        //发布信息，根据父元素的type确定信息的类型
        ajax.sendOut = function (e) {
            var information = {};
            information.type = e.targetElement.getAttribute("type");
            information.content = $("#send_content", $(e.targetElement.parentNode)).val();

            $.ajax({
                url: CLASS_PATH + "send-out",
                type: "POST",
                dataType: "json",
                contentType: "application/json",
                data: JSON.stringify(information),
                success: function (data) {
                    console.log(data);
                    if (data === true) {
                        alert("send out success !");
                    }
                    else if (data === false) {
                        alert("send out fail !");
                    }
                    else {
                        alert("success !");
                    }
                },
                error: function () {
                    alert("error !");
                }
            });
        };

    }

    return module;
})();

var initVue = function () {
	new Vue({
		el: "#app",
		data: function () {
			//"登录"验证函数
			var checkName = (rule, value, callback) => {
				if (!value) {
					return callback(new Error('用户名不能为空'));
				}
			};
			var validatePass = (rule, value, callback) => {
				if (value === '') {
					callback(new Error('请输入密码'));
				} else {
					if (this.ruleForm2.checkPass !== '') {
						this.$refs.ruleForm2.validateField('checkPass');
					}
					callback();
				}
			};
			//"注册"验证函数
			var checkName = (rule, value, callback) => {
				if (!value) {
					return callback(new Error('用户名不能为空'));
				}
			};
			var validatePass = (rule, value, callback) => {
				if (value === '') {
					callback(new Error('请输入密码'));
				} else {
					if (this.ruleForm3.checkPass !== '') {
						this.$refs.ruleForm3.validateField('checkPass');
					}
					callback();
				}
			};
			var validatePass2 = (rule, value, callback) => {
				if (value === '') {
					callback(new Error('请再次输入密码'));
				} else if (value !== this.ruleForm3.pass) {
					callback(new Error('两次输入密码不一致!'));
				} else {
					callback();
				}
			};
			return {
				items: [
					"res/imgs/slider-1.jpg",
					"res/imgs/blog-1.jpg",
					"res/imgs/blog-2.jpg",
					"res/imgs/blog-3.jpg"
				],

				//"登录"
				dialogVisible2: false,
				ruleForm2: {
					// age改为userName,
					userName: '',
					pass: '',
				},
				rules2: {
					pass: [
						{validator: validatePass, trigger: 'blur'}
					],
					// 此处vlidator: checkAge修改为checkName
					userName: [
						{validator: checkName, trigger: 'blur'}
					]
				},
				//"注册"
				dialogVisible3: false,
				ruleForm3: {
					userName: '',
					pass: '',
					checkPass: ''
				},
				rules3: {
					pass: [
						{validator: validatePass, trigger: 'blur'}
					],
					checkPass: [
						{validator: validatePass2, trigger: 'blur'}
					],
					// 此处vlidator: checkAge修改为checkName
					userName: [
						{validator: checkName, trigger: 'blur'}
					]
				},
				// currentDate: new Date()

				//page_2
				activeIndex: '1',
				activeIndex2: '1',
				activeManage: 'first',
				isShowLike: false,
				isShowMarket: false,
				isShowClean: false,
				//将formInline改成Conditions
				Conditions: {
					purcher_time: '',
					season: '',
					occasion: '',
					material: '',
					color: '',
				},
				selling: false,
				cleaning: false,
				input: '',
				// 表单
				form: {
					month: '',
					season: '',
					material: '',
					occasion: '',
					color: '',
					size: '',
					desc: ''
				},
				//上传图片
				imageUrl: '',

				//page_3
				checked3: false,

				//page_4
				textarea: '',
				textarea3: '',

			};
		},

		methods: {
			//登录注册对话框
			submitForm(formName) {
				this.$refs[formName].validate((valid) => {
					if (valid) {
						alert('submit!');
					} else {
						console.log('error submit!!');
						return false;
					}
				});
			},
			resetForm(formName) {
				this.$refs[formName].resetFields();
			},
			//page_2选项卡
			handleClickManage(tab, event) {
				console.log(tab, event);

				mainJS.ajax.requestPartialHtml("cloth-all", "cloth-content");

			},

			//“确定”按钮
			onSubmit2() {
				console.log('submit2!');
			},
			//“添加”按钮
			clothAdd() {
				console.log('submit3!');
			},
			//“修改”按钮
			onSubmit4() {
				console.log('submit4!');
			},
			//添加新衣图片
			handleAvatarSuccess(res, file) {
				this.imageUrl = URL.createObjectURL(file.raw);
			},
			beforeAvatarUpload(file) {
				const isJPG = file.type === 'image/jpeg';
				const isLt2M = file.size / 1024 / 1024 < 2;

				if (!isJPG) {
					this.$message.error('上传头像图片只能是 JPG 格式!');
				}
				if (!isLt2M) {
					this.$message.error('上传头像图片大小不能超过 2MB!');
				}
				return isJPG && isLt2M;
			}

		}
	});

	var xxxx = function () {
		var xx = document.getElementById("xxxx"),
			yy = document.getElementById("yyyy");
		xx.style.display = "none";
		yy.style.display = "block";
	};

	var yyyy = function () {
		var xx = document.getElementById("xxxx"),
			yy = document.getElementById("yyyy");
		yy.style.display = "none";
		xx.style.display = "block";
	};

};