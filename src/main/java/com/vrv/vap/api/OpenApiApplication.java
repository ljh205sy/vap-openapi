package com.vrv.vap.api;


import com.xphsc.easyjdbc.springboot.annotation.EnableEasyJdbc;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cloud.client.discovery.EnableDiscoveryClient;

/**
 * @author huipei.x
 * @data 创建时间 2018/8/21
 * @description 类说明 :
 */


@EnableEasyJdbc
@EnableDiscoveryClient
@SpringBootApplication
public class OpenApiApplication {
    public static void main(String[] args) {
        SpringApplication.run(OpenApiApplication.class, args);
    }

}
