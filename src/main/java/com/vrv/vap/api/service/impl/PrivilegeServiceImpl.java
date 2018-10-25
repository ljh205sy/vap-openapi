package com.vrv.vap.api.service.impl;

import com.github.xtool.mutable.Integers;
import com.vrv.vap.api.dao.SysPrivilegeDao;
import com.vrv.vap.api.model.response.PrivilegeDTO;
import com.vrv.vap.api.service.PrivilegeService;
import com.xphsc.easyjdbc.core.entity.Example;
import com.xphsc.easyjdbc.page.PageInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * @author huipei.x
 * @date 创建时间 2018-8-10
 * @description 类说明 :
 */
@Service
public class PrivilegeServiceImpl implements PrivilegeService {

    @Autowired
    private SysPrivilegeDao sysPrivilegeDao;

    @Override
    public PageInfo<PrivilegeDTO> listPrivilege(Integer pageNum, Integer pageSize){
        Example example= sysPrivilegeDao.example().
                entityClass(PrivilegeDTO.class) ;
        if(Integers.isNotEmpty(pageNum)){
            example.pageInfo(pageNum,pageSize);
        }
        PageInfo<PrivilegeDTO>  pageInfo=example.page();
        return pageInfo;
    }
}
