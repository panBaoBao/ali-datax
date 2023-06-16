package com.example.ali.datax.service.impl;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.example.ali.datax.entity.JsonConfig;
import com.example.ali.datax.mapper.JsonConfigMapper;
import com.example.ali.datax.service.IJsonConfigService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * <p>
 *  服务实现类
 * </p>
 *
 * @author ptm
 * @since 2023-06-16
 */
@Service
public class JsonConfigServiceImpl extends ServiceImpl<JsonConfigMapper, JsonConfig> implements IJsonConfigService {
    @Autowired
    private JsonConfigMapper jsonConfigMapper;
    @Override
    public String getJsonTextByName(String jsonName) {

        return jsonConfigMapper.getJsonTextByName(jsonName);
    }
}
