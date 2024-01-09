package com.yuxuan66.ecmc.modules.discord.api;

import com.dtflys.forest.backend.okhttp3.OkHttpClientProvider;
import com.dtflys.forest.handler.LifeCycleHandler;
import com.dtflys.forest.http.ForestRequest;
import okhttp3.OkHttpClient;
import org.springframework.beans.factory.annotation.Value;

import java.net.InetSocketAddress;
import java.net.Proxy;
import java.util.concurrent.TimeUnit;

/**
 * @author Sir丶雨轩
 * @since 2023/1/12
 */
public class ProxyHttpClientProvider implements OkHttpClientProvider {

    @Value("${proxy.host}")
    private String proxyHost;

    @Value("${proxy.port}")
    private String proxyPort;
    @Override
    public OkHttpClient getClient(ForestRequest request, LifeCycleHandler lifeCycleHandler) {
        return new OkHttpClient.Builder()
                .connectTimeout(700, TimeUnit.SECONDS)
                .readTimeout(700, TimeUnit.SECONDS)
                .writeTimeout(700, TimeUnit.SECONDS)
                .callTimeout(700, TimeUnit.SECONDS)
                .followSslRedirects(false)
                .retryOnConnectionFailure(false)
                .followRedirects(false)
                .proxy(new Proxy(Proxy.Type.SOCKS,new InetSocketAddress(proxyHost, Integer.parseInt(proxyPort))))
                .build();
    }
}
