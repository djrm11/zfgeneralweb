package com.smart.web;

import org.apache.log4j.Logger;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.SimpleMappingExceptionResolver;

import com.smart.web.controller.ViewManageController;

/**
 * 异常处理
 */
public class ViewSpaceHandlerExceptionResolver extends SimpleMappingExceptionResolver {
	private static Logger logger = Logger.getLogger(ViewSpaceHandlerExceptionResolver.class);
	protected ModelAndView doResolveException(javax.servlet.http.HttpServletRequest httpServletRequest, javax.servlet.http.HttpServletResponse httpServletResponse, Object o, Exception e) {
		httpServletRequest.setAttribute("ex", e);
		logger.info("zf Exception: "+e);
		e.printStackTrace();
		return super.doResolveException(httpServletRequest, httpServletResponse, o, e);
	}
}
