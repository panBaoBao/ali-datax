package com.example.ali.datax.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.example.ali.datax.entity.JsonConfig;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.ResultType;
import org.apache.ibatis.annotations.Select;

/**
 * <p>
 *  Mapper 接口
 * </p>
 *
 * @author ptm
 * @since 2023-06-16
 */
public interface JsonConfigMapper extends BaseMapper<JsonConfig> {
    @Select("SELECT json_text FROM `json_config` WHERE json_name = #{jsonName} LIMIT 1")
    @ResultType(String.class)
    String getJsonTextByName(@Param("jsonName") String jsonName);
}
