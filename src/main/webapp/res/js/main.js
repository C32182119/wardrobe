//主js模块
var mainJS = (function (){
    "use strict";
    var local = {}, event = {}, ui = {}, func = {},
    module = {
        event: event,
        ui: ui,
        func: func
    };
    //local
    {

    }
    //event
    {

    }
    //ui
    {

    }
    //func
    {
        func.signIn = function () {
	        var user = {};
	        user.username = $("#inputUserName").val();
	        user.password = $("#inputPassword").val();
	        $.ajax({
		        url: "http://localhost:8088/wardrobe/sign-in",
		        type: "POST",
		        dataType: "json",
		        contentType: "application/json",
		        data: JSON.stringify(user),
		        success: function(data) {
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


    }

    return module;
})();