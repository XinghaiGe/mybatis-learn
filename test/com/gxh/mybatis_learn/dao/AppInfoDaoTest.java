package com.gxh.mybatis_learn.dao;

import com.gxh.mybatis_learn.pojo.AppInfo;
import com.gxh.mybatis_learn.utils.MybatisUtils;
import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;
import org.junit.Test;

import java.io.IOException;
import java.io.Reader;
import java.util.List;

public class AppInfoDaoTest {

    @Test
    public void selectNum() {
        try {
            Reader resourceAsReader = Resources.getResourceAsReader("mybatis-config.xml");
            SqlSessionFactory sessionFactory = new SqlSessionFactoryBuilder().build(resourceAsReader);
            SqlSession sqlSession = sessionFactory.openSession();

            AppInfoDao appInfoDao = sqlSession.getMapper(AppInfoDao.class);
            System.out.println("appInfoDao Num: " + appInfoDao.selectNum());

            sqlSession.close();

        } catch (IOException e) {
            throw new RuntimeException(e);
        }
    }

    @Test
    public void getAppInfoList() {

        SqlSession sqlSession = null;

        try {
            sqlSession = MybatisUtils.getSqlsession();

            AppInfoDao appInfoDao = sqlSession.getMapper(AppInfoDao.class);
            List<AppInfo> appInfoList = appInfoDao.getAppInfoList();
            appInfoList.forEach(appInfo -> {
                System.out.println(appInfo.toString());
            });
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            MybatisUtils.closeSqlsession(sqlSession);
        }


    }
}