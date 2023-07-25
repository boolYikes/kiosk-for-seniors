package com.mega.mapper;

import java.util.List;

import com.mega.entity.t_category;
import com.mega.entity.t_menu;

public interface megaMapper {

	public List<t_category> getCate();

	public List<t_menu> getMenus(t_menu menu);

	public t_menu getCorrespMenu(int menu_seq);

	public List<t_menu> getAllMenus();
	

}
