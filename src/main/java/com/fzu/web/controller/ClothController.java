package com.fzu.web.controller;

import com.fzu.entity.ClothInfo;
import com.fzu.service.ClothService;
import com.fzu.util.Util;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.ArrayList;
import java.util.List;

@Controller
@RequestMapping("/{userId}/cloth")
public class ClothController extends BaseController {

    @Autowired
    private ClothService clothService;

    @RequestMapping("/{html}")
    public String clothAll (@PathVariable("html") String html) {
        System.out.println("ClothController: " + html);
        return "cloth/" + html + ".html";
    }

    @RequestMapping("/add-cloth")
    public @ResponseBody
    boolean addCloth(@PathVariable("userId") String userId,
                    @RequestBody ClothInfo clothInfo) {
        clothInfo.setUserId(userId);
        clothInfo.setClothId(Util.getNewIdByType("c"));
        clothService.saveClothInfo(clothInfo);
        return true;
    }

    @RequestMapping("/get-all")
    public @ResponseBody
    List<ClothInfo> getAll(@PathVariable("userId") String userId) {
        return clothService.queryClothInfoByUserId(userId);
    }


}
