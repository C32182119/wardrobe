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


    }

    return module;
})();