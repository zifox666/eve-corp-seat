package com.yuxuan66.ecmc;

import com.dtflys.forest.annotation.HTTPProxy;
import com.yuxuan66.ecmc.job.modules.SdeJob;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cache.annotation.EnableCaching;
import org.springframework.scheduling.annotation.EnableAsync;
import org.springframework.scheduling.annotation.EnableScheduling;
import org.springframework.boot.CommandLineRunner;


/**
 * @author Sir丶雨轩
 * @since 2022/12/22
 */
@SpringBootApplication
@EnableCaching
@EnableAsync
@EnableScheduling
@HTTPProxy(host = "192.168.1.7" , port = "7890")
/*public class EcmcJobApplication {

    public static void main(String[] args) {
        SpringApplication.run(EcmcJobApplication.class, args);
    }
}*/
public class EcmcJobApplication implements CommandLineRunner {

    private final SdeJob sdeJob;

    public EcmcJobApplication(SdeJob sdeJob) {
        this.sdeJob = sdeJob;
    }

    public static void main(String[] args) {

        // 设置 HTTP 代理
        System.setProperty("http.proxyHost", "192.168.1.7");
        System.setProperty("http.proxyPort", "7890");

        // 设置 HTTPS 代理
        System.setProperty("https.proxyHost", "192.168.1.7");
        System.setProperty("https.proxyPort", "7890");

        SpringApplication.run(EcmcJobApplication.class, args);
    }

    @Override
    public void run(String... args) throws Exception {
        // 在应用启动时执行 SdeJob 中的数据导入逻辑
        sdeJob.process();
    }
}