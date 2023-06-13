package com.hzlx.entity;

import java.io.Serializable;
import java.util.Date;

public class MenuInfo implements Serializable {
    private Integer id;
    private String title;
    private String icon;
    private String href;
    private Integer pId;
    private Date createTime;
    private Integer status;

    public MenuInfo() {
    }

    public MenuInfo(Integer id, String title, String icon, String href, Integer pId, Date createTime, Integer status) {
        this.id = id;
        this.title = title;
        this.icon = icon;
        this.href = href;
        this.pId = pId;
        this.createTime = createTime;
        this.status = status;
    }

    /**
     * 获取
     * @return id
     */
    public Integer getId() {
        return id;
    }

    /**
     * 设置
     * @param id
     */
    public void setId(Integer id) {
        this.id = id;
    }

    /**
     * 获取
     * @return title
     */
    public String getTitle() {
        return title;
    }

    /**
     * 设置
     * @param title
     */
    public void setTitle(String title) {
        this.title = title;
    }

    /**
     * 获取
     * @return icon
     */
    public String getIcon() {
        return icon;
    }

    /**
     * 设置
     * @param icon
     */
    public void setIcon(String icon) {
        this.icon = icon;
    }

    /**
     * 获取
     * @return href
     */
    public String getHref() {
        return href;
    }

    /**
     * 设置
     * @param href
     */
    public void setHref(String href) {
        this.href = href;
    }

    /**
     * 获取
     * @return pId
     */
    public Integer getPId() {
        return pId;
    }

    /**
     * 设置
     * @param pId
     */
    public void setPId(Integer pId) {
        this.pId = pId;
    }

    /**
     * 获取
     * @return createTime
     */
    public Date getCreateTime() {
        return createTime;
    }

    /**
     * 设置
     * @param createTime
     */
    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }

    /**
     * 获取
     * @return status
     */
    public Integer getStatus() {
        return status;
    }

    /**
     * 设置
     * @param status
     */
    public void setStatus(Integer status) {
        this.status = status;
    }

    public String toString() {
        return "MenuInfo{id = " + id + ", title = " + title + ", icon = " + icon + ", href = " + href + ", pId = " + pId + ", createTime = " + createTime + ", status = " + status + "}";
    }
}
