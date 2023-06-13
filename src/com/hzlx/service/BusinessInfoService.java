package com.hzlx.service;

import javax.servlet.http.HttpServletRequest;

public interface BusinessInfoService {

    void getbusList(HttpServletRequest request);

    String getbus(HttpServletRequest request);

    String addBus(HttpServletRequest request,Integer b);

    String deleteBus(HttpServletRequest request);

    String enableBus(HttpServletRequest request);
}
