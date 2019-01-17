package com.entity;

import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

//作用目标
@Target(ElementType.FIELD)
//生效时机
@Retention(RetentionPolicy.RUNTIME)
public @interface Comment {
	//属性
	String value();
}
