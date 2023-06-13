package com.hzlx.controller;

import com.google.gson.Gson;
import com.hzlx.annotation.Controller;
import com.hzlx.annotation.RequestMapping;
import com.hzlx.annotation.RequestParameter;
import com.hzlx.annotation.ResponseBody;
import com.hzlx.service.UserInfoService;
import com.hzlx.service.impl.UserInfoServiceImpl;
import com.hzlx.utils.BaseResult;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@Controller
@RequestMapping("/api/user")
public class UserInfoController {

     private UserInfoService userInfoService=new UserInfoServiceImpl();

    @RequestMapping("/login.do")
    @ResponseBody
    public String login(HttpServletRequest request,HttpServletResponse response) throws IOException {
       return userInfoService.login(request);
    }


    @RequestMapping("/manage")

    public String manage(HttpServletRequest request,HttpServletResponse response){
         userInfoService.getUserList(request,response);
         return "pages/user";
    }
    @RequestMapping("/getUser")
    @ResponseBody
    public String getUser(HttpServletRequest request,HttpServletResponse response){
        return userInfoService.getUser(request);
    }

    @RequestMapping("/adduser")
    @ResponseBody
    public String adduser(HttpServletRequest request,HttpServletResponse response){
        //1新增，其它修改
        Integer a=1;
        return userInfoService.adduser(request ,a);
    }

    @RequestMapping("/edit")
    @ResponseBody
    public String edit(HttpServletRequest request,HttpServletResponse response){
        Integer a=2;
        return userInfoService.adduser(request ,a);
    }

    @RequestMapping("/enableUsers")
    @ResponseBody
    public String enableUsers(HttpServletRequest request,HttpServletResponse response){
        return userInfoService.enableUsers(request);
    }

    @RequestMapping("/deleteUser")
    @ResponseBody
    public String deleteUser(HttpServletRequest request,HttpServletResponse response){
        return userInfoService.deleteUser(request);
    }



}
