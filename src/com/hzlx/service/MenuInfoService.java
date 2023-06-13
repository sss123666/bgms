package com.hzlx.service;

import com.hzlx.entity.vo.MenuInfoVo;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

public interface MenuInfoService {
    //根据用户id获取用户角色对应的菜单树
    //
    String showMenu(HttpServletRequest request);

//查询全部菜单
    void getMenuList(HttpServletRequest request);

    String getMenu(HttpServletRequest request);

    String editMenu(HttpServletRequest request);

    String deleteMenu(HttpServletRequest request);

    String addMenu(HttpServletRequest request);

    String enableMenus(HttpServletRequest request);
}
