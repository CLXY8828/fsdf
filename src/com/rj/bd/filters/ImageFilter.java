package com.rj.bd.filters;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * @desc   利用过滤器实现图片防盗链
 * @author wyh
 * @time   2021-12-27
 */
public class ImageFilter implements Filter {

	@Override
	public void destroy() {
     System.out.println("ImageFilter销毁");		
	}

	@Override
	public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse, FilterChain chain)
			throws IOException, ServletException {
     System.out.println("ImageFilter开始过");	
     //1.通过强转获取到request对象和response对象
     HttpServletRequest request=(HttpServletRequest) servletRequest;
     HttpServletResponse response=(HttpServletResponse) servletResponse;
     
     //2.通过request获取HTTP请求头中的referer对象
      String  referer=request.getHeader("referer");
      System.out.println("referer--->"+referer);
      
      //3.获取请求的服务名字
      String serverName = request.getServerName();//当前项目是www.projecta.com
      System.out.println("serverName--->"+serverName);

      if (referer == null || !(referer.contains(serverName))) 
		{
            //给盗用者一个错误的提示，同时也是给他们一个警示
    	    request.getRequestDispatcher("/static/images/error.png").forward(request, response);
			return ;
		}
		
		//放行 
		chain.doFilter(request, response);
	}

	@Override
	public void init(FilterConfig arg0) throws ServletException {
      System.out.println("ImageFilter初始化");		
	}

}
