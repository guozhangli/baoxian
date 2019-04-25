package cn.wy.insurance.filter;

import java.io.IOException;
import java.util.Enumeration;
import java.util.Map;
import java.util.Set;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.collections.SetUtils;
import org.apache.log4j.LogManager;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.BeanFactoryUtils;
import org.springframework.stereotype.Component;
import org.springframework.web.context.WebApplicationContext;
import org.springframework.web.context.support.WebApplicationContextUtils;
import org.springframework.web.method.HandlerMethod;
import org.springframework.web.servlet.HandlerMapping;
import org.springframework.web.servlet.mvc.condition.PatternsRequestCondition;
import org.springframework.web.servlet.mvc.method.RequestMappingInfo;
import org.springframework.web.servlet.mvc.method.annotation.RequestMappingHandlerMapping;

import cn.wy.insurance.pojo.*;


@Component("logFilter")
public class LogFilter implements Filter {

	private final Logger log = LogManager.getLogger(LogFilter.class);

	private FilterConfig config=null;
	public void destroy() {		
	}
	
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
		HttpServletRequest req=(HttpServletRequest)request;
	   HttpServletResponse resp=(HttpServletResponse)response;
	   long startTime = System.currentTimeMillis();
	   HttpSession session=null;
	 	OperateLog operateLog=new OperateLog();
	   if(null!=req){  
	   	operateLog.setRemoteAddr(req.getRemoteAddr());
	   	operateLog.setUrl(req.getRequestURI());
	   	session=req.getSession(false);
	   	operateLog.setReqMethod(req.getMethod());
	   	StringBuffer sb=new StringBuffer();
	   	Enumeration enumration=req.getParameterNames();
	   	while(enumration.hasMoreElements()){
	   		String param=enumration.nextElement().toString();
	   		sb.append(param);
	   		sb.append("="+req.getParameter(param)+" ");
	   	}
	   	operateLog.setParams(sb.toString());
	   }  
	   if(null!=session){
	   	if(null!=session.getAttribute("userId")){
	   		operateLog.setUserId(session.getAttribute("userId").toString());
	   	}	   	
	   }
	   String url=operateLog.getUrl();
	   	 
	  
	   chain.doFilter(request, response);	
	   long endTime=System.currentTimeMillis();
	   operateLog.setRequestTime(startTime);
	   operateLog.setProcessTime(endTime-startTime);
	   System.out.println(operateLog.toString());

	   getRequestToMethodItem(req);
	}

	public void init(FilterConfig fConfig) throws ServletException {
		this.config=fConfig;
	}
	public void getRequestToMethodItem(HttpServletRequest req){
		ServletContext context=null;
		if(null!=req){
			if(null!=req.getSession(false)){
				context=req.getSession().getServletContext();
			}
		}
		if(null==context){
			return;
		}
		WebApplicationContext appContext = WebApplicationContextUtils.getWebApplicationContext(context);
		Map<String, HandlerMapping> allRequestMappings = BeanFactoryUtils.beansOfTypeIncludingAncestors(appContext,
				HandlerMapping.class, true, false);
		for(HandlerMapping handlerMapping:allRequestMappings.values()){
			if(handlerMapping instanceof RequestMappingHandlerMapping){				
				Map<RequestMappingInfo, HandlerMethod> handlerMethods=
						((RequestMappingHandlerMapping) handlerMapping).getHandlerMethods();
				for(Map.Entry<RequestMappingInfo, HandlerMethod> handlerMethod :handlerMethods.entrySet()){
					RequestMappingInfo requestMappingInfo=handlerMethod.getKey();
					HandlerMethod method=handlerMethod.getValue();
					PatternsRequestCondition patternsRequestCondition=requestMappingInfo.getPatternsCondition();
					Set<String> urls=patternsRequestCondition.getPatterns();
					for(String url:urls){
						System.out.print(url);
					}
					String methodName=method.getMethod().getName();
					System.out.print(methodName);
					Object obj=method.getBean();
					System.out.print(obj.toString());
					System.out.println();
					
				}
			}
		}
	
	}
}

