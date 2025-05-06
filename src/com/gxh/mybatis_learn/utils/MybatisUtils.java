package com.gxh.mybatis_learn.utils;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import java.io.IOException;
import java.io.Reader;

public class MybatisUtils {

    static SqlSessionFactory sessionFactory =  null;

    static {
        Reader resourceAsReader = null;
        try {
            resourceAsReader = Resources.getResourceAsReader("mybatis-config.xml");
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
        sessionFactory = new SqlSessionFactoryBuilder().build(resourceAsReader);
    }

    // 获取sqlsession的方法
    public static SqlSession getSqlsession() {
        return sessionFactory.openSession();
    }

    // 关闭sqlsession
    public static void closeSqlsession(SqlSession sqlSession) {
        if (sqlSession!=null) {
            sqlSession.close();
        }
    }
}
