package com.mega.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.mega.entity.t_menu;
import com.mega.mapper.megaMapper;

@RestController
public class RestlessController {

	@Autowired
	megaMapper mapper;
	
	@RequestMapping("/getCorrespMenu")
	public t_menu getCorrespMenu(String menu_seq) {
		
		t_menu resultMenu = mapper.getCorrespMenu(Integer.parseInt(menu_seq));
		System.out.println(resultMenu);
		return resultMenu;
	}
	
//	@RequestMapping("/getCorrespOptions")
//	public 
}
