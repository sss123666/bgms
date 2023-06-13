package com.hzlx.service;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public interface UserInfoService {
    //用户登录的方法
    //放回json字符串
    String login(HttpServletRequest request);


    void getUserList(HttpServletRequest request, HttpServletResponse response);

    String getUser(HttpServletRequest request);


    //添加或修改用户
    String adduser(HttpServletRequest request ,Integer a);

    //修改状态
    String enableUsers(HttpServletRequest request);

    String deleteUser(HttpServletRequest request);
}
