package com.biz.iolist.controller;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.biz.mapper.IoDao;
import com.biz.model.IoVO;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
@RequestMapping(value = "/iolist")
public class IoController {
	
	@RequestMapping(value={"/",""},method=RequestMethod.GET)
	public String list(Model model) {
		
		List<IoVO>bookList = 
		model.addAttribute("BODY", "oilist");
		
		return "home";
	}
}
	
