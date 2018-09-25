package com.springrest.exception;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.servlet.ModelAndView;


@ControllerAdvice
public class GlobalException {
	
	private final Logger LOGGER = LoggerFactory.getLogger(this.getClass());

	@ExceptionHandler(CustomException.class)
	public ModelAndView handleCustomException(CustomException ex) {

		ModelAndView model = new ModelAndView("error");
		LOGGER.error("CustomException : ",ex);
		LOGGER.error("CustomException getErrMsg: ",ex.getErrMsg());
		LOGGER.error("CustomException getErrCode: ",ex.getErrCode());
		return model;

	}

	@ExceptionHandler(Exception.class)
	public ModelAndView handleAllException(Exception ex) {

		ModelAndView model = new ModelAndView("error");
		LOGGER.error("Common Exception - Error : ",ex);
		return model;

	}
	
}
