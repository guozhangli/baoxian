package cn.wy.insurance.pojo;

public class OperateLog {

	private String userId;
	private String remoteAddr;
	private String url;
	private String reqMethod;
	private long requestTime;
	private long processTime;
	private String params;
	public String getParams() {
		return params;
	}
	public void setParams(String params) {
		this.params = params;
	}
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public String getRemoteAddr() {
		return remoteAddr;
	}
	public void setRemoteAddr(String remoteAddr) {
		this.remoteAddr = remoteAddr;
	}
	public String getUrl() {
		return url;
	}
	public void setUrl(String url) {
		this.url = url;
	}
	public String getReqMethod() {
		return reqMethod;
	}
	public void setReqMethod(String reqMethod) {
		this.reqMethod = reqMethod;
	}
	public long getRequestTime() {
		return requestTime;
	}
	
	public void setRequestTime(long requestTime) {
		this.requestTime = requestTime;
	}
	public long getProcessTime() {
		return processTime;
	}
	public void setProcessTime(long processTime) {
		this.processTime = processTime;
	}

	@Override
	public String toString() {
		return "OperateLog [userId=" + userId + ", remoteAddr=" + remoteAddr + ", url=" + url + ", reqMethod="
				+ reqMethod + ", requestTime=" + requestTime + ", processTime=" + processTime + ", params=" + params
				+ "]";
	}
}
