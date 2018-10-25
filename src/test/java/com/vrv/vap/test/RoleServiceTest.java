package com.vrv.vap.test;

import com.alibaba.fastjson.JSON;
import com.vrv.vap.api.OpenApiApplication;
import com.vrv.vap.api.service.RoleService;
import lombok.extern.slf4j.Slf4j;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

/**
 * @author huipei.x
 * @data 创建时间 2018/8/22
 * @description 类说明 :
 */
@RunWith(SpringRunner.class)
//@SpringBootTest(classes = OpenApiApplication.class)
@Slf4j
public class RoleServiceTest {
    @Autowired
    private RoleService roleService;

    @Test
    public void list(){
        log.info("1111"+ JSON.toJSON(roleService.getMetaSource()));
    }
}
