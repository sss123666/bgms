package com.hzlx.dao;

import com.hzlx.entity.MenuInfo;

import java.util.List;
import java.util.Map;

public interface MenuInfoDao {

    //根据pid查询父级菜单集合
    List<MenuInfo> getMenuInfoListByPid(Integer userId,Integer pId);

    List<Map<String,Object>> getMenuAll(String keyword);

    MenuInfo getMenuInfoById(Integer id);

    int updateMenuById(Integer id, String title1, String icon,String href,Integer pId);

    int deleteMenuById(String[] ids);

    List<MenuInfo> getMenuInfoBypId(Integer pId);
    int saveMenu(String title1, String icon,String href,Integer pId);

    int batchUpdateMenuStatus(String[] ids, Integer sta);
}
