package com.juhui.common.dto.user;

import java.util.Date;

/**
 * T票存储实体
 * Created by Lionel on 2014/5/31.
 */
public class TGT {

	// key值
	private String key;

	// 用户标识
	private String uid;

	// 最近访问时间
	private Date lastLoginTime;

	// 创建时间
	private Date createdTime;

	public String getKey() {
		return key;
	}

	public void setKey(String key) {
		this.key = key;
	}

	public String getUid() {
		return uid;
	}

	public void setUid(String uid) {
		this.uid = uid;
	}

	public Date getLastLoginTime() {
		return lastLoginTime;
	}

	public void setLastLoginTime(Date lastLoginTime) {
		this.lastLoginTime = lastLoginTime;
	}

	public Date getCreatedTime() {
		return createdTime;
	}

	public void setCreatedTime(Date createdTime) {
		this.createdTime = createdTime;
	}
}
