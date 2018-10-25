package com.vrv.vap.api.controller;


import com.vrv.vap.api.common.response.PageResult;
import com.vrv.vap.api.model.request.ListUserQuery;
import com.vrv.vap.api.model.response.UserDTO;
import com.vrv.vap.api.service.SysService;
import com.xphsc.easyjdbc.page.PageInfo;
import io.swagger.annotations.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

/**
 * @author huipei.x
 * @data 创建时间 2018/8/21
 * @description 类说明 :
 */
@RestController
@RequestMapping(value = "/api/user")
@Api(tags = "/user",description = "用户管理")
public class UserController {
   @Autowired
    private SysService service;

    @PostMapping(value = "/query")
    @ApiResponses(value = {
            @ApiResponse(code = 200, message = "OK"),
            @ApiResponse(code = 500, message = "Internal Server Error") })
    @ApiOperation(value="用户列表", response = UserDTO.class,notes = "请求头部携带access_token")
    public PageResult listUser(@RequestBody ListUserQuery listUserQuery ) {
        PageInfo<UserDTO> pageInfo=service.listUser(listUserQuery);
        return  new PageResult().ok(
                pageInfo.getList(),
                pageInfo.getTotal()
        );
    }
}
