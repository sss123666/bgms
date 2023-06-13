package com.hzlx.dao.impl;

import com.hzlx.dao.BusinessInfoDao;
import com.hzlx.dao.UserInfoDao;
import com.hzlx.entity.BusinessInfo;
import com.hzlx.utils.BaseDao;
import com.hzlx.utils.BaseResult;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

public class BusinessInfoDaoImpl extends BaseDao<BusinessInfo> implements BusinessInfoDao {
    @Override
    public List<BusinessInfo> getBusAll() {
        String sql="select * from t_business_info";
        return selectListForObject(sql, BusinessInfo.class);
    }

    @Override
    public BusinessInfo getBusById(String id) {
        String sql="select * from t_business_info where id=?";
        return selectOne(sql, BusinessInfo.class,id);
    }

    @Override
    public int addBus(String name,String password,String tel,String address) {
        String sql="insert into t_business_info values (default,?,?,?,?,default)";
        return executeUpdate(sql,name,password,tel,address);
    }

    @Override
    public int updateBus(String name,String password,String tel,String address) {
        String sql="update t_business_info set name=?,password=?,tel=?,address=? where id=?";
        return executeUpdate(sql,name,password,tel,address);
    }

    @Override
    public int deleteBusById(String[] ids) {
        String sql="delete from t_business_info  where id in (";
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

    @Override
    public int batchUpdateBusStatus(String[] ids, Integer sta) {
        String sql="update t_business_info set `status`=? where id in (";
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
    }

