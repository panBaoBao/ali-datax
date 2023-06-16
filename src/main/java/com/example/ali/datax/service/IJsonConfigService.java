package com.example.ali.datax.service;

import com.baomidou.mybatisplus.extension.service.IService;
import com.example.ali.datax.entity.JsonConfig;

/**
 * <p>
 *  服务类
 * </p>
 *
 * @author ptm
 * @since 2023-06-16
 */
public interface IJsonConfigService extends IService<JsonConfig> {

    String getJsonTextByName(String jsonName);
}
