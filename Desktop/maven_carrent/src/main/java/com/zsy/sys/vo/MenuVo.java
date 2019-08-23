package com.zsy.sys.vo;

import com.zsy.sys.domain.Menu;

public class MenuVo extends Menu{
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
	
	
}
