package cn.wy.insurance.pojo;

import java.util.Date;

/**
 * 这个类，用来存放通用字段，达到复用的目的
 */
public class BasePojo {

	    private String createBy;//创建者
	    private String createDept;//创建部门
	    private Date createTime;//创建日期
	    private String updateBy;//更新者
	    private Date updateTime;//更新日期
		public String getCreateBy() {
			return createBy;
		}
		public void setCreateBy(String createBy) {
			this.createBy = createBy;
		}
		public String getCreateDept() {
			return createDept;
		}
		public void setCreateDept(String createDept) {
			this.createDept = createDept;
		}
		public Date getCreateTime() {
			return createTime;
		}
		public void setCreateTime(Date createTime) {
			this.createTime = createTime;
		}
		public String getUpdateBy() {
			return updateBy;
		}
		public void setUpdateBy(String updateBy) {
			this.updateBy = updateBy;
		}
		public Date getUpdateTime() {
			return updateTime;
		}
		public void setUpdateTime(Date updateTime) {
			this.updateTime = updateTime;
		}
	    
	    
}
