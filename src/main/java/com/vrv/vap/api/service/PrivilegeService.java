package com.vrv.vap.api.service;

import com.vrv.vap.api.model.response.PrivilegeDTO;
import com.xphsc.easyjdbc.page.PageInfo;


/**
 * @author huipei.x
 * @date 创建时间 2018-8-10
 * @description 类说明 :
 */
public interface PrivilegeService {

    public PageInfo<PrivilegeDTO> listPrivilege(Integer pageNum, Integer pageSize);
}
