package com.example.ali.datax.entity;

import com.baomidou.mybatisplus.annotation.TableName;

import java.io.Serializable;

/**
 * <p>
 * 
 * </p>
 *
 * @author ptm
 * @since 2023-06-16
 */
@TableName("json_config")
public class JsonConfig implements Serializable {

    private static final long serialVersionUID = 1L;

    private Integer id;

    private String jsonName;

    private String jsonText;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }
    public String getJsonName() {
        return jsonName;
    }

    public void setJsonName(String jsonName) {
        this.jsonName = jsonName;
    }
    public String getJsonText() {
        return jsonText;
    }

    public void setJsonText(String jsonText) {
        this.jsonText = jsonText;
    }

    @Override
    public String toString() {
        return "JsonConfig{" +
            "id=" + id +
            ", jsonName=" + jsonName +
            ", jsonText=" + jsonText +
        "}";
    }
}
