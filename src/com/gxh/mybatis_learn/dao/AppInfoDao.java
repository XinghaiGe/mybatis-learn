package com.gxh.mybatis_learn.dao;

import com.gxh.mybatis_learn.pojo.AppInfo;

import java.util.List;

public interface AppInfoDao {

    int selectNum();

    List<AppInfo> getAppInfoList();

}
