//主js模块
var mainJS = (function (){
    "use strict";
    var local = {}, event = {}, ui = {}, ajax = {},
        module = {
            event: event,
            ui: ui,
	        ajax: ajax
        };
    //local
    {
        local.CLASS_PATH = "http://localhost:8080/wardrobe/";
    }
    //event
    {

    }
    //ui
    {

    }
    //ajax
    {
        //登录页
	    ajax.signIn = function () {
            var user = {};
            user.username = $("#username").val();
            user.password = $("#password").val();
            $.ajax({
                url: local.CLASS_PATH + "sign-in",
                type: "POST",
                dataType: "json",
                contentType: "application/json",
                data: JSON.stringify(user),
                success: function (data) {
                    console.log(data);
                    if (data === true) {
                        alert("sign in success !");
                    }
                    else if (data === false) {
                        alert("sign in fail !");
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

        //用户页
        //发布信息，根据父元素的type确定信息的类型
        ajax.sendOut = function (e) {
            var information = {};
            information.type = e.targetElement.getAttribute("type");
            information.content = $("#send_content", $(e.targetElement.parentNode)).val();

            $.ajax({
                url: local.CLASS_PATH + "send-out",
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

        ajax.test = function () {
	        $.ajax({
		        url: local.CLASS_PATH + "home.html",
		        type: "POST",
		        dataType: "html",
		        success: function (data) {
			        console.log(data);
			        $("#main").html(data);
		        },
		        error: function () {
			        alert("error !");
		        }
	        });
        };

    }

    return module;
})();