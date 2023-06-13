package com.hzlx.controller;

import com.hzlx.annotation.Controller;
import com.hzlx.annotation.RequestMapping;
import com.hzlx.annotation.ResponseBody;
import com.hzlx.service.BusinessInfoService;
import com.hzlx.service.impl.BussinessInfoServiceImpl;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@Controller
@RequestMapping("/api/bus")
public class BussinessInfoController {
    private BusinessInfoService businessInfoService=new BussinessInfoServiceImpl();
@RequestMapping("/manage")
    public String manage(HttpServletRequest request, HttpServletResponse response){
    businessInfoService.getbusList(request);
    return "pages/bus";
}
@RequestMapping("/getBus")
@ResponseBody
public String getBus(HttpServletRequest request,HttpServletResponse response){
    return businessInfoService.getbus(request);
}
@RequestMapping("/addBus")
    @ResponseBody
    public String addBus(HttpServletRequest request,HttpServletResponse response){
    //1.新增
    Integer b=1;
    return businessInfoService.addBus(request,b);
}
@RequestMapping("/editBus")//编辑修改
@ResponseBody
public String editBus(HttpServletRequest request,HttpServletResponse response){
    Integer c=2;
    return businessInfoService.addBus(request,c);
}
@RequestMapping("/deleteBus")//删除
    @ResponseBody
    public String deleteBus(HttpServletRequest request,HttpServletResponse response){
    return businessInfoService.deleteBus(request);
}
@RequestMapping("/enableBus")
    @ResponseBody
    public  String enableBus(HttpServletRequest request,HttpServletResponse response){
    return businessInfoService.enableBus(request);
}
}

