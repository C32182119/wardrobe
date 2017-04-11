package com.fzu.web.controller;


import com.fzu.entity.Information;
import com.fzu.entity.User;
import com.fzu.service.InformationService;
import com.fzu.service.UserService;
import com.fzu.util.Util;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping("/{userId}")
public class UserController extends BaseController {

    @Autowired
    private UserService userService;

    @Autowired
    private InformationService informationService;

    @RequestMapping("/home-page")
    public String homePage () {
        return "home_page";
    }

    @RequestMapping("/send-out")
    public @ResponseBody
    boolean sendOut (@PathVariable("userId") String userId,
                       @RequestBody Information information) {
        boolean isSuccess = false;
        //
        information.setUserId(userId);
        information.setInfoId(Util.generateIdByUserId(userId));
        informationService.saveInformation(information);
        isSuccess = true;
        return isSuccess;
    }

}
