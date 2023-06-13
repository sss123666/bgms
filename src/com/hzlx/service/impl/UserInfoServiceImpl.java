package com.hzlx.service.impl;

import com.hzlx.component.BgmsConfig;
import com.hzlx.dao.UserInfoDao;
import com.hzlx.dao.impl.UserInfoDaoImpl;
import com.hzlx.entity.UserInfo;
import com.hzlx.service.UserInfoService;
import com.hzlx.utils.BaseResult;
import com.hzlx.utils.MD5Utils;
import com.mysql.cj.util.StringUtils;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.List;

public class UserInfoServiceImpl implements UserInfoService {
    UserInfoDao userInfoDao=new UserInfoDaoImpl();
    @Override
    public String login(HttpServletRequest request) {
        //从请求中获取用户名和密码
        String userName = request.getParameter("userName");
        String password = request.getParameter("password");
        //非空校验
        if (StringUtils.isNullOrEmpty(userName)||StringUtils.isNullOrEmpty(password)){
            return BaseResult.error(10001,"用户名和密码不能为空");
        }
        //给密码加密
        String encryptPwd = MD5Utils.encryptMD5(password, userName);
        //拿加密后的密码和名去数据库查
        UserInfo userInfo = userInfoDao.getUserInfoByUserNameAndPassword(userName, encryptPwd);

        if (userInfo==null){
            return BaseResult.error(10002,"账号或密码错误");
        }
        System.out.println("账号密码正确");
        //登录成功后把信息存到session作用域中，后续使用
        request.getSession().setAttribute(BgmsConfig.SESSION_USER_KEY,userInfo);
        return BaseResult.success();
    }


    //获取所有用户
    @Override
    public void getUserList(HttpServletRequest request, HttpServletResponse response) {
        String keyword = request.getParameter("keyword");
        request.setAttribute(BgmsConfig.USER_LIST,userInfoDao.getUserAll(keyword));
        request.setAttribute(BgmsConfig.KEYWORD,keyword);

    }

    @Override
    public String getUser(HttpServletRequest request) {
        String id = request.getParameter("id");
        if (id == null) {
            return BaseResult.error(20001,"用户id不能为空");
        }
        UserInfo userInfo= userInfoDao.getUserById(id);
        return BaseResult.success(userInfo);


    }

    @Override
    public String adduser(HttpServletRequest request ,Integer a ) {
        String id = request.getParameter("id");
        Integer sex = Integer.parseInt(request.getParameter("sex"));
        String userName = request.getParameter("userName");
        String tel = request.getParameter("tel");
        String nickName = request.getParameter("nickName");
        String address = request.getParameter("address");
        String password = request.getParameter("password");
        String encryptPwd = MD5Utils.encryptMD5(password, userName);
        int rows;
        if (a==1){
            rows=userInfoDao.addUser(userName,encryptPwd,nickName,tel,address,sex);
            if (rows>0){
                return BaseResult.success();
            }else {
                return BaseResult.error(20003,"新增用户失败");
            }
        }else {
            rows=userInfoDao.updateUser(userName,encryptPwd,nickName,tel,address,sex ,id);
            if (rows>0){
                return BaseResult.success();
            }else {
                return BaseResult.error(20003,"修改用户失败");
            }
        }



    }

    @Override
    public String enableUsers(HttpServletRequest request) {
        Integer sta = Integer.parseInt(request.getParameter("sta"));
        String idsStr = request.getParameter("ids");
        String[] ids = idsStr.substring(0, idsStr.length() - 1).split(",");
        int rows= userInfoDao.batchUpdateUserStatus(ids,sta);
        if (rows>0){
            return BaseResult.success();
        }else {
            return BaseResult.error(20003,"更改用户失败");
        }

    }

    @Override
    public String deleteUser(HttpServletRequest request) {
        String idsStr = request.getParameter("ids");
        String[] ids = idsStr.substring(0, idsStr.length() - 1).split(",");

        int rows=userInfoDao.deleteUserById(ids);
        if (rows>0){
            return BaseResult.success();
        }else {
            return BaseResult.error(20003,"删除用户失败");
        }
    }


}
