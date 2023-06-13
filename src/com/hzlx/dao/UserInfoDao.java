package com.hzlx.dao;

import com.hzlx.entity.UserInfo;

import java.util.List;
import java.util.Map;

public interface UserInfoDao {

    //根据用户名和密码查寻信息
    UserInfo getUserInfoByUserNameAndPassword(String userName,String password);

      List<UserInfo>getUserAll(String keyword);

    UserInfo getUserById(String id);

    int addUser(String userName,String password, String nickName, String tel, String address, Integer sex);

    int updateUser(String userName, String encryptPwd, String nickName, String tel, String address, Integer sex,String id);

    int batchUpdateUserStatus(String[] ids, Integer sta);

    int deleteUserById(String[] ids);
}
