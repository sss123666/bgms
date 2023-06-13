package com.hzlx.service.impl;

import com.hzlx.component.BgmsConfig;
import com.hzlx.dao.BusinessInfoDao;
import com.hzlx.dao.UserInfoDao;
import com.hzlx.dao.impl.BusinessInfoDaoImpl;
import com.hzlx.entity.BusinessInfo;
import com.hzlx.service.BusinessInfoService;
import com.hzlx.utils.BaseResult;
import com.hzlx.utils.MD5Utils;

import javax.servlet.http.HttpServletRequest;

public class BussinessInfoServiceImpl implements BusinessInfoService {
    BusinessInfoDao businessInfoDao = new BusinessInfoDaoImpl();

    @Override
    public void getbusList(HttpServletRequest request) {
        request.setAttribute(BgmsConfig.BUS_LIST, businessInfoDao.getBusAll());

    }

    @Override
    public String getbus(HttpServletRequest request) {
        String id = request.getParameter("id");
        if (id == null) {
            return BaseResult.error(20001, "id不可为空");
        }
        BusinessInfo businessInfo = businessInfoDao.getBusById(id);
        return BaseResult.success(businessInfo);
    }

    @Override
    public String addBus(HttpServletRequest request, Integer b) {
       String id=request.getParameter("id");
        String name = request.getParameter("name");
        String password = request.getParameter("password");
        String tel=request.getParameter("tel");
        String address = request.getParameter("addresss");

        int rows;
        if (b == 1) {
            rows = businessInfoDao.addBus(name, password, tel, address);
            if (rows > 0) {
                return BaseResult.success();
            } else {
                return BaseResult.error(20003, "新增用户失败");
            }
        } else {
            rows = businessInfoDao.updateBus(name, password, tel, address);
            if (rows > 0) {
                return BaseResult.success();
            } else {
                return BaseResult.error(20003, "修改用户失败");
            }
        }
    }

    @Override
    public String deleteBus(HttpServletRequest request) {
        String idsStr=request.getParameter("ids");
        String[] ids = idsStr.substring(0, idsStr.length()-1).split(",");
        int rows= businessInfoDao.deleteBusById(ids);
        if (rows>0){
            return BaseResult.success();
        }else {
            return BaseResult.error(20003,"删除用户失败");
        }
    }

    @Override
    public String enableBus(HttpServletRequest request) {
        Integer sta=Integer.parseInt(request.getParameter("sta"));
        String idsStr=request.getParameter("ids");
        String[] ids=idsStr.substring(0,idsStr.length()-1).split(",");
        int rows=businessInfoDao.batchUpdateBusStatus(ids,sta);
        if (rows>0){
            return BaseResult.success();
        }else{
            return  BaseResult.error(20003,"更改用户失败");
        }
    }
}


