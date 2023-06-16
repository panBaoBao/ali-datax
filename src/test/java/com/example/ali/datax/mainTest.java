package com.example.ali.datax;

import com.alibaba.datax.core.Engine;

public class mainTest {

    public static void main(String[] args) {
        fromHttp();
    }
    private static void fromLocal() {
        //这个datax.home一定要配，就是解压的那个文件的datax目录，执行的时候会去这底下找对应的同步插件
        System.setProperty("datax.home","E:\\code\\20230615\\ds\\datax");

        String localPath = "E:\\code\\20230615\\ali-datax\\src\\main\\resources\\t2dm.json";

        String[] datxArgs2 = {"-job", localPath, "-mode", "standalone", "-jobid", "-1"};
        try {
            Engine.entry(datxArgs2);
        } catch (Throwable e) {
            e.printStackTrace();
        }
    }
    private static void fromHttp() {
        //这个datax.home一定要配，就是解压的那个文件的datax目录，执行的时候会去这底下找对应的同步插件
        System.setProperty("datax.home","E:\\code\\20230615\\ds\\datax");

        String jsonHttp = "http://localhost:8080/json/text?jsonName=t2dm.json";

        String[] datxArgs2 = {"-job", jsonHttp, "-mode", "standalone", "-jobid", "-1"};
        try {
            Engine.entry(datxArgs2);
        } catch (Throwable e) {
            e.printStackTrace();
        }
    }

}
