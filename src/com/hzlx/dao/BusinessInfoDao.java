package com.hzlx.dao;

import com.hzlx.annotation.ResponseBody;
import com.hzlx.entity.BusinessInfo;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

public interface BusinessInfoDao {
  int addBus(String name, String password, String tel, String address);

  List<BusinessInfo> getBusAll();

  BusinessInfo getBusById(String id);

  int updateBus(String name, String password, String tel, String address);

  int deleteBusById(String[] ids);
  int batchUpdateBusStatus(String[] ids,Integer sta);
}



