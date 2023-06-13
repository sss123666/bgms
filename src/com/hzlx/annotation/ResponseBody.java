package com.hzlx.annotation;

import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

@Retention(RetentionPolicy.RUNTIME)
//注解的生效范围，只能用于方法上面
@Target(ElementType.METHOD)
public @interface ResponseBody {
}
