package com.fzu.entity;

import org.apache.commons.lang3.builder.ToStringBuilder;

import java.io.Serializable;

public class BaseEntity implements Serializable {

    public String toString() {
        return ToStringBuilder.reflectionToString(this);
    }
}
