package com.vrv.vap.api.common.request;


import io.swagger.annotations.ApiModelProperty;
import lombok.Data;

/**
 * @author huipei.x
 * @data 创建时间 2018/8/21
 * @description 类说明 :
 */
@Data
public class BaseQuery {
    @ApiModelProperty( value= "当前页")
    private Integer pageNum;
    @ApiModelProperty( value= "显示数")
    private Integer pageSize;
}
