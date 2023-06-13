package com.hzlx.dao.impl;

import com.hzlx.dao.MenuInfoDao;
import com.hzlx.entity.MenuInfo;
import com.hzlx.utils.BaseDao;
import com.mysql.cj.util.StringUtils;

import java.util.List;
import java.util.Map;

public class MenuInfoDaoImpl extends BaseDao<MenuInfo>implements MenuInfoDao {
    @Override
    public List<MenuInfo> getMenuInfoListByPid(Integer userId,Integer pId) {
//        String sql="select * from t_menu_info where `status`=1 and p_id=?";
        String sql="select  tmi.* from t_menu_info tmi left join t_menu_role_info tmri on tmri.menu_id=tmi.id left join t_user_role_info turi on tmri.role_id = turi.role_id where turi.user_id=? and tmi.`status`=1 and tmi.p_id=?";
        return selectListForObject(sql,MenuInfo.class,userId,pId);
    }

    @Override
    public List<Map<String, Object>> getMenuAll(String keyword) {
        String sql="select tmi1.*,tmi2.title as pName from t_menu_info tmi1\n" +
                "left join t_menu_info tmi2 on tmi2.id=tmi1.p_id";
        if (!StringUtils.isNullOrEmpty(keyword)){
            sql += " where tmi1.title like concat('%',?,'%')";
            return selectListForMap(sql,keyword);
        }
        return selectListForMap(sql);
    }

    @Override
    public MenuInfo getMenuInfoById(Integer id) {
        String sql="select * from t_menu_info where id=?";
        return selectOne(sql,MenuInfo.class,id);
    }

    @Override
    public int updateMenuById(Integer id, String title1, String icon,String href,Integer pId) {
        String sql="update t_menu_info set title=?,icon=?,href=?,p_id=? where id=?";
        return executeUpdate(sql,title1,icon,href,pId,id);
    }

    @Override
    public int deleteMenuById(String[] ids) {
//        if (ids.length==1){
//            String sql="delete from t_menu_info where id=?";
//            return executeUpdate(sql,ids[0]);
//        }
        String sql="delete from t_menu_info  where id in (";
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
    public List<MenuInfo> getMenuInfoBypId(Integer pId) {
        String sql="select * from t_menu_info where `status`=1 and p_id=?";
        return selectListForObject(sql,MenuInfo.class,pId);
    }

    @Override
    public int saveMenu(String title1, String icon, String href, Integer pId) {
        String sql="insert into t_menu_info values(default,?,?,?,?,now(),default)";
        return  executeUpdate(sql,title1,icon,href,pId);
    }

    @Override
    public int batchUpdateMenuStatus(String[] ids,Integer sta) {

            String sql="update t_menu_info set `status`=? where id in (";
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
