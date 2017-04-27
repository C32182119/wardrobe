package com.fzu.web.controller;

import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

public class BaseController {

    //ֱ直接访问jsp
    @RequestMapping("/{jsp}")
    public String jsp(@PathVariable(value="jsp") String jsp) {
        System.out.println("BaseController: " + jsp);
        return jsp;
    }

    @RequestMapping("/{html}.html")
    public String html(@PathVariable("html") String html) {
        System.out.println("BaseController: " + html);
        return html;
    }

}
