package com.example.entity;

public class RelateDTO {
	/** 用户id */
	private Integer userId;
	/** 课程id */
	private Integer courseId;
	/** 指数 */
	private Integer index;

	public RelateDTO(Integer userId, Integer courseId, Integer index) {
		this.userId = userId;
		this.courseId = courseId;
		this.index = index;
	}

	public Integer getUserId() {
		return userId;
	}

	public void setUserId(Integer userId) {
		this.userId = userId;
	}

	public Integer getCourseId() {
		return courseId;
	}

	public void setCourseId(Integer courseId) {
		this.courseId = courseId;
	}

	public Integer getIndex() {
		return index;
	}

	public void setIndex(Integer index) {
		this.index = index;
	}
}