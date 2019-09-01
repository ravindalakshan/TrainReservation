package com.mobitel.mtktweb.entity;

public class GenericEntity<T> {
    private String message;
    private String responseCode;
    private T obj;
    
    public void setMessage(final String message) {
        this.message = message;
    }
    public String getMessage() {
        return this.message;
    }

    public void setResponseCode(final String responseCode) {
        this.responseCode = responseCode;
    }
    public String getResponseCode() {
        return this.responseCode;
    }

    public void setObj(final T obj) {
        this.obj = obj;
    }
    public T getObj() {
        return this.obj;
    }
}