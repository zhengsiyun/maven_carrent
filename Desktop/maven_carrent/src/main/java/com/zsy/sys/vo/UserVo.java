package com.zsy.sys.vo;

import com.zsy.sys.domain.User;

public class UserVo extends User{
	private Integer page;
	private Integer limit;
	private Integer[] ids;
	public Integer getPage() {
		return page;
	}
	public void setPage(Integer page) {
		this.page = page;
	}
	public Integer getLimit() {
		return limit;
	}
	public void setLimit(Integer limit) {
		this.limit = limit;
	}
	public Integer[] getIds() {
		return ids;
	}
	public void setIds(Integer[] ids) {
		this.ids = ids;
	}
	
}
