package com.hzlx.controller;

import com.hzlx.annotation.Controller;
import com.hzlx.annotation.RequestMapping;
import com.hzlx.annotation.RequestParameter;
import com.hzlx.annotation.ResponseBody;
import com.hzlx.service.MenuInfoService;
import com.hzlx.service.impl.MenuInfoServiceImpl;
import com.hzlx.utils.BaseResult;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@Controller
@RequestMapping("/api/menu")
public class MenuInfoController {
    private MenuInfoService menuInfoService = new MenuInfoServiceImpl();

    @RequestMapping("/showMenuTree")
    public String showMenuTree(HttpServletRequest request, HttpServletResponse response) {
        return menuInfoService.showMenu(request);
    }

    @RequestMapping("/home")
    public String home(HttpServletRequest request, HttpServletResponse response) {
        return "pages/home";
    }

    @RequestMapping("/table")
    public String tableView(HttpServletRequest request, HttpServletResponse response) {
        menuInfoService.getMenuList(request);
        return "pages/table";
    }

    @RequestMapping("/getMenu")
    @ResponseBody
    public String getMenu(HttpServletRequest request, HttpServletResponse response) {
        return menuInfoService.getMenu(request);
    }


    @RequestMapping("/edit")
    @ResponseBody
    public String edit(HttpServletRequest request, HttpServletResponse response) {
        return menuInfoService.editMenu(request);
    }

    @RequestMapping("/deleteMenu")
    @ResponseBody
    public String deleteMenu(HttpServletRequest request, HttpServletResponse response) {
        return menuInfoService.deleteMenu(request);
    }


    @RequestMapping("/addMenu")
    @ResponseBody
    public String addMenu(HttpServletRequest request, HttpServletResponse response) {
        return menuInfoService.addMenu(request);
    }


    @RequestMapping("/enableMenus")
    @ResponseBody
    public String enableMenus(HttpServletRequest request,HttpServletResponse response){
       return menuInfoService.enableMenus(request);
    }


}
