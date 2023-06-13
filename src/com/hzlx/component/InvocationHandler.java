package com.hzlx.component;

import java.lang.reflect.Method;

//封装成Handler
public class InvocationHandler {
//比如找到了UserController下的info，那么代表UserController实例对象，反射调用info方法
private Object classObject;

//info方法
private Method method;


    public InvocationHandler() {
    }

    public InvocationHandler(Object classObject, Method method) {
        this.classObject = classObject;
        this.method = method;
    }

    /**
     * 获取
     * @return classObject
     */
    public Object getClassObject() {
        return classObject;
    }

    /**
     * 设置
     * @param classObject
     */
    public void setClassObject(Object classObject) {
        this.classObject = classObject;
    }

    /**
     * 获取
     * @return method
     */
    public Method getMethod() {
        return method;
    }

    /**
     * 设置
     * @param method
     */
    public void setMethod(Method method) {
        this.method = method;
    }


}
