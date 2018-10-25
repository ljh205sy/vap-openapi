package com.vrv.vap.api.model.request;

import com.vrv.vap.api.common.request.BaseQuery;
import io.swagger.annotations.ApiModel;

import lombok.Data;

/**
 * @author huipei.x
 * @data 创建时间 2018/8/21
 * @description 类说明 :
 */
@Data
@ApiModel(value = "ListUserQuery",description = "参数类")
public class ListUserQuery extends BaseQuery {

}
