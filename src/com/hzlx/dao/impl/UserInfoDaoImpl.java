package com.hzlx.dao.impl;

import com.hzlx.dao.UserInfoDao;
import com.hzlx.entity.UserInfo;
import com.hzlx.utils.BaseDao;
import com.mysql.cj.util.StringUtils;

import java.util.List;

public class UserInfoDaoImpl extends BaseDao<UserInfo>implements UserInfoDao {
    @Override
    public UserInfo getUserInfoByUserNameAndPassword(String userName, String password) {
        String sql="select * from t_user_info where user_name=? and `password`=?";
        return selectOne(sql,UserInfo.class,userName,password);
    }

    @Override
    public List<UserInfo> getUserAll(String keyword) {
        String sql="select * from t_user_info";
        if (!StringUtils.isNullOrEmpty(keyword)){
            sql+=" where user_name like concat('%',?,'%')";
            return selectListForObject(sql,UserInfo.class,keyword);
        }
        return  selectListForObject(sql,UserInfo.class);
    }

    @Override
    public UserInfo getUserById(String id) {
        String sql="select * from t_user_info where id=?";
        return selectOne(sql,UserInfo.class,id);
    }

    @Override
    public int addUser(String userName,String password, String nickName, String tel, String address, Integer sex) {
        String sql="insert into t_user_info values(default,?,?,?,?,?,?,null,now(),default)";
        return executeUpdate(sql,userName,password,nickName,tel,address,sex);
    }

    @Override
    public int updateUser(String userName, String encryptPwd, String nickName, String tel, String address, Integer sex,String id) {
        String sql="update t_user_info set user_name=?,password=?,nick_name=?,tel=?,address=?,sex=? where id=?";
        return executeUpdate(sql,userName,encryptPwd,nickName,tel,address,sex,id);
    }

    @Override
    public int batchUpdateUserStatus(String[] ids, Integer sta) {
        String sql="update t_user_info set `status`=? where id in (";
        for (int i = 0; i < ids.length; i++) {
            if (i==ids.length-1){
                sql+="?";
            }else {
                sql+="?,";
            }
        }
        sql+= ")";
        return executeUpdate(sql,sta,ids);
    }

    @Override
    public int deleteUserById(String[] ids) {
        String sql="delete from t_user_info  where id in (";
        for (int i = 0; i < ids.length; i++) {
            if (i==ids.length-1){
                sql+="?";
            }else {
                sql+="?,";
            }
        }
        sql+= ")";
        return executeUpdate(sql,ids);
    }
}
