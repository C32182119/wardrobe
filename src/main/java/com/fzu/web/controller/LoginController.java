package com.fzu.web.controller;

import com.fzu.entity.User;
import com.fzu.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class LoginController extends BaseController {

    @Autowired
    private UserService userService;

    @RequestMapping("/sign-in")
    public @ResponseBody
    boolean signIn (@RequestBody User u) {
        boolean isSuccess = false;
        String username = u.getUsername();
        String password = u.getPassword();

        User user = userService.queryUserByUsername(username);
        if (user != null && user.getPassword().equals(password)) {
            isSuccess = true;
        }

        return isSuccess;
    }

}
