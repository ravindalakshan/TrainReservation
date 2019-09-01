package com.mobitel.mtktweb.entity;

import java.util.List;

public class SearchResponse {
	private String message;
	private String responseCode;
	private Obj obj;
	

	public String getMessage() {
		return message;
	}

	public void setMessage(String message) {
		this.message = message;
	}

	public String getResponseCode() {
		return responseCode;
	}

	public void setResponseCode(String responseCode) {
		this.responseCode = responseCode;
	}

	public Obj getObj() {
		return obj;
	}

	public void setObj(Obj obj) {
		this.obj = obj;
	}

	
}
