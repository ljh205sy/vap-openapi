package com.vrv.vap.api.service;


import com.vrv.vap.api.model.response.OauthClientDTO;

/**
 * @author huipei.x
 * @date 创建时间 2018-8-10
 * @description 类说明 :
 */
public interface OauthClientDetailsService {

    public OauthClientDTO getClientByClientId(String clientId);
}
