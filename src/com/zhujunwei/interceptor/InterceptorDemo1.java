package com.zhujunwei.interceptor;

import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.interceptor.AbstractInterceptor;

/**
 * 自定义的拦截器一
 * @author zhujunwei
 * 2019年4月16日 上午8:09:06
 */
public class InterceptorDemo1 extends AbstractInterceptor{

	private static final long serialVersionUID = 1L;

	@Override
	public String intercept(ActionInvocation invocation) throws Exception {
		
		System.out.println("InterceptorDemo1执行了。。。");
		String invoke = invocation.invoke();
		System.out.println("InterceptorDemo1执行结束。。。");
		
		return invoke ;
	}

}
