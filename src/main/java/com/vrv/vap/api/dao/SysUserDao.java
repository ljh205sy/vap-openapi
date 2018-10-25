package com.vrv.vap.api.dao;

import com.vrv.vap.api.model.SysUser;
import com.vrv.vap.api.model.response.UserDTO;
import com.xphsc.easyjdbc.annotation.SqlParam;
import com.xphsc.easyjdbc.annotation.SqlSelect;
import com.xphsc.easyjdbc.core.EasyJdbcDao;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Map;


/**
 * @author huipei.x
 * @DATE 创建时间  2018-8-10
 * @description 类说明 :
 */
@Repository
public interface SysUserDao extends EasyJdbcDao<SysUser> {

     @SqlSelect(value = "select * from sys_user where id=#{id}",
         entityClass =UserDTO.class
     )
     public UserDTO getById(@SqlParam("id") Integer id);

}
