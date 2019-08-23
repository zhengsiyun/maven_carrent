package com.zsy.sys.controller;

import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.zsy.sys.domain.New;
import com.zsy.sys.domain.User;
import com.zsy.sys.service.NewService;
import com.zsy.sys.utils.DataGridView;
import com.zsy.sys.utils.ResultObj;
import com.zsy.sys.utils.WebUtils;
import com.zsy.sys.vo.NewVo;

@RestController
@RequestMapping("news")
public class NewController {
	@Autowired
	private NewService newService;

	/**
	 * 加载新闻列表返回DataGridView
	 */
	@RequestMapping("loadAllNews")
	public DataGridView loadAllNews(NewVo newVo) {
		return newService.queryAllNew(newVo);
	}

	// 添加公告
	@RequestMapping("addNews")
	public ResultObj addNews(NewVo newVo) {
		try {
			newVo.setCreatetime(new Date());
			User user = (User) WebUtils.getHttpSession().getAttribute("user");
			newVo.setOpername(user.getRealname());
			newService.addNew(newVo);
			return ResultObj.ADD_SUCCESS;
		} catch (Exception e) {
			e.printStackTrace();
			return ResultObj.ADD_ERROR;
		}
	}

	// 添加公告
	@RequestMapping("updateNews")
	public ResultObj updateNews(NewVo newVo) {
		try {
			newService.updateNew(newVo);
			return ResultObj.UPDATE_SUCCESS;
		} catch (Exception e) {
			e.printStackTrace();
			return ResultObj.UPDATE_ERROR;
		}
	}

	// 刪除新闻
	@RequestMapping("deleteNews")
	public ResultObj deleteNews(NewVo newVo) {
		try {
			newService.deleteNew(newVo.getId());
			return ResultObj.DELETE_SUCCESS;
		} catch (Exception e) {
			e.printStackTrace();
			return ResultObj.DELETE_ERROR;
		}
	}

	// 批量刪除新闻
	@RequestMapping("deleteBatchNews")
	public ResultObj deleteBatchNews(NewVo newVo) {
		try {
			newService.deleteBatchNew(newVo.getIds());
			return ResultObj.DELETE_SUCCESS;
		} catch (Exception e) {
			e.printStackTrace();
			return ResultObj.DELETE_ERROR;
		}
	}
	//根据id查询公告
	@RequestMapping("loadNewsById")
	public New loadNewsById(Integer id) {
		return newService.queryNewsById(id);
	}
}
