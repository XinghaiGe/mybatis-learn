# 初识 MyBatis




# JDBC
Java Database Connectivity java数据库连接技术

使用**mysql driver jar**包作驱动

![](https://cdn.nlark.com/yuque/0/2025/png/43817461/1746252940716-0e6f9412-cdbe-45df-a5af-4fc162ad8dec.png)



框架->简历



# ORM
Object-Relational Mapping 对象关系映射



![画板](https://cdn.nlark.com/yuque/0/2025/jpeg/43817461/1746253617603-6a4be192-3c7a-4130-be50-0571119fbee3.jpeg)



# 配置mybatis
new java project

config code template

![](https://cdn.nlark.com/yuque/0/2025/png/43817461/1746254143452-30d82d76-c5cb-4a84-8a5f-49c941217a3a.png)

导入成功

![](https://cdn.nlark.com/yuque/0/2025/png/43817461/1746254773619-4248d6a1-f670-4c26-949f-0e46a2cdba13.png)

配置mybatis

[https://mybatis.net.cn/configuration.html](https://mybatis.net.cn/configuration.html)

![](https://cdn.nlark.com/yuque/0/2025/png/43817461/1746254556995-a576c388-292e-47b3-ab10-765d4a43275f.png)



# 安装插件
![](https://cdn.nlark.com/yuque/0/2025/png/43817461/1746255421110-604dc543-db84-43d9-89d9-9902f55f1a70.png)

![](https://cdn.nlark.com/yuque/0/2025/png/43817461/1746255431209-563939c3-ef72-4680-97f7-38a90cfb69de.png)

# pojo
com.gxh.mybatis_learn.pojo.AppInfo.java

复制数据库表中名称粘贴到文件

**Alt+鼠标左键多行编辑**

```java
package com.gxh.mybatis_learn.pojo;

import lombok.Data;

import java.math.BigDecimal;
import java.util.Date;

@Data
public class AppInfo {
    private Long id;

    private String softwarename;

    private String  apkname;

    private String supportrom;

    private String interfacelanguage;

    private BigDecimal softwaresize;

    private java.util.Date updatedate;

    private Long devid;

    private String appinfo;

    private Long status;

    private java.util.Date onsaledate;

    private java.util.Date offsaledate;

    private Long flatformid;

    private Long categorylevel3;

    private Long downloads;

    private Long createdby;

    private java.util.Date creationdate;

    private Long modifyby;

    private Date modifydate;

    private Long categorylevel1;

    private String level1Name;
    private String level2Name;
    private String level3Name;

    private Long categorylevel2;

    private String logopicpath;

    private String logolocpath;

    private Long versionid;
}
```



tip：开启代码提示不区分大小写（提高开发效率）

![](https://cdn.nlark.com/yuque/0/2025/png/43817461/1746257781955-f1ede914-8305-4485-a068-4883ee75923c.png)



# mapper(dao)
sql映射文件模版

按照[配置mybatis](#MfQVK)的配置方法

[https://mybatis.net.cn/getting-started.html](https://mybatis.net.cn/getting-started.html)

```java
package com.gxh.mybatis_learn.dao;

public interface AppInfoDao {

    int selectNum();

}

```

```xml
<?xml version="1.0" encoding="UTF-8" ?>
<!DOCTYPE mapper
        PUBLIC "-//mybatis.org//DTD Mapper 3.0//EN"
        "http://mybatis.org/dtd/mybatis-3-mapper.dtd">
<mapper namespace="com.gxh.mybatis_learn.dao.AppInfoDao">

    <select id="selectNum" resultType="java.lang.Integer">
        select count(*) from app_info;
    </select>

</mapper>
```

# 单元测试
右键selectNum方法，goto-test

![](https://cdn.nlark.com/yuque/0/2025/png/43817461/1746259133020-02725913-e5e1-405c-bbe2-b48afb8972f3.png)

import @Test

![](https://cdn.nlark.com/yuque/0/2025/png/43817461/1746259368161-e1c5c87f-7268-470d-bba2-1dfa4581ac79.png)

test/com.gxh.mybatis_learn.dao.AppInfoDaoTest.java

```java
package com.gxh.mybatis_learn.dao;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;
import org.junit.Test;

import java.io.IOException;
import java.io.Reader;

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
}
```

# mybatis配置文件
configuration

<font style="color:#bcbec4;background-color:#1e1f22;"><properties resource="db.properties"/>便于运维</font>

```plain
jdbc.driver=com.mysql.cj.jdbc.Driver
jdbc.url=jdbc:mysql://localhost:3306/appstudy?characterEncoding=utf-8&serverTimezone=Asia/Shanghai&useSSL=false
jdbc.username=root
jdbc.password=123.com
```

```plain
<?xml version="1.0" encoding="UTF-8" ?>
<!DOCTYPE configuration
        PUBLIC "-//mybatis.org//DTD Config 3.0//EN"
        "http://mybatis.org/dtd/mybatis-3-config.dtd">
<configuration>

    <properties resource="db.properties"/>
    <typeAliases>
        <package name="com.gxh.mybatis_learn.pojo"/>
    </typeAliases>

    <environments default="development">
        <environment id="development">
            <transactionManager type="JDBC"/>
            <dataSource type="POOLED">
                <property name="driver" value="${jdbc.driver}"/>
                <property name="url" value="${jdbc.url}"/>
                <property name="username" value="${jdbc.username}"/>
                <property name="password" value="${jdbc.password}"/>
            </dataSource>
        </environment>
        <environment id="production">
            <transactionManager type="JDBC"/>
            <dataSource type="POOLED">
                <property name="driver" value="${jdbc.driver}"/>
                <property name="url" value="${jdbc.url}"/>
                <property name="username" value="${jdbc.username}"/>
                <property name="password" value="${jdbc.password}"/>
            </dataSource>
        </environment>
    </environments>
    <mappers>
<!--        换为扫描包的方式-->
        <package name="com.gxh.mybatis_learn.dao"/>
<!--        <mapper resource="com/gxh/mybatis_learn/dao/AppInfoDao.xml"/>-->
    </mappers>
</configuration>
```

# utils封装sqlsession
```plain
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
```

代码复用

```plain
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
```

