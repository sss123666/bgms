package com.hzlx.service;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public interface EasyCaptchaService {

    //获取验证码
    void captcha(HttpServletRequest request, HttpServletResponse response);

    //校验验证码
     String check(HttpServletRequest request);
}
