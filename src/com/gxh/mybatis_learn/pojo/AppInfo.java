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