package com.fzu.web.controller;

import com.fzu.entity.User;
import com.fzu.service.UserService;
import com.fzu.util.Util;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.text.SimpleDateFormat;
import java.util.Date;

@Controller
public class LoginController extends BaseController {

    @Autowired
    private UserService userService;

    @RequestMapping("/sign-in")
    public @ResponseBody
    User signIn(@RequestBody User u) {
        String username = u.getUsername();
        String password = u.getPassword();
        User user = userService.queryUserByUsername(username);
        if (user != null && user.getPassword().equals(password)) {
            return user;
        }
        return new User();
    }

    @RequestMapping("/sign-up")
    public @ResponseBody
    User signUp(@RequestBody User u) {
        String username = u.getUsername();
        User user = userService.queryUserByUsername(username);
        if (user == null) {
            u.setUserId(Util.getNewIdByType("u"));
            u.setCreateTime((new SimpleDateFormat("yyyy-MM-dd HH:mm:ss:SSS")).format(new Date()));
            userService.saveUser(u);
            return u;
        }
        return new User();
    }

}
