package com.zsy.bus.vo;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

import com.zsy.bus.domain.Customer;

public class CustomerVo extends Customer{
	private String[] ids;
	private Integer limit;
	private Integer page;
	
	
	
	public Integer getLimit() {
		return limit;
	}
	public void setLimit(Integer limit) {
		this.limit = limit;
	}
	public Integer getPage() {
		return page;
	}
	public void setPage(Integer page) {
		this.page = page;
	}
	public String[] getIds() {
		return ids;
	}
	public void setIds(String[] ids) {
		this.ids = ids;
	}
	
}
