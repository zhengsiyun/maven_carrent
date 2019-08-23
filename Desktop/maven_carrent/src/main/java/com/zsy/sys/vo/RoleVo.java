package com.zsy.sys.vo;

import com.zsy.sys.domain.Menu;
import com.zsy.sys.domain.Role;

public class RoleVo extends Role{
	private Integer[] ids;
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
	public Integer[] getIds() {
		return ids;
	}
	public void setIds(Integer[] ids) {
		this.ids = ids;
	}
	
	
}
