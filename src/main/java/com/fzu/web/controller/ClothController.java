package com.fzu.web.controller;

import com.fzu.entity.ClothInfo;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping("/{userId}/cloth")
public class ClothController extends BaseController {


    @RequestMapping("/{html}")
    public String clothAll (@PathVariable("html") String html) {
        System.out.println("ClothController: " + html);
        return "cloth/" + html + ".html";
    }

    @RequestMapping("/add-cloth")
    public @ResponseBody
    boolean addCloth(@PathVariable("userId") String userId,
                    @RequestBody ClothInfo clothInfo) {
        boolean isSuccess = false;


        isSuccess = true;
        return isSuccess;
    }

}
