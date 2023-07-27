package com.mega.controller;
import java.util.ArrayList;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import com.mega.entity.t_category;
import com.mega.entity.t_menu;
import com.mega.mapper.megaMapper;

@Controller
public class megaController {
	
	@Autowired
	megaMapper mapper;
	
//	@RequestMapping("/")
//	public String index() {
//		return "index";
//	}
//	@RequestMapping("/next")
//	public String next() {
//		return "register";
//	}
//	@RequestMapping("/main")
//	public String main(Model model, @RequestParam("category_seq") int category_seq) {
//		List<t_category>cate = mapper.getCate();
//		List<t_menu> menu = mapper.getMenus(category_seq);
//		model.addAttribute("menu", menu);
//		model.addAttribute("cate", cate);
//		return "test2";
//	}
	@RequestMapping("/omain")
	public String omain(Model model, t_menu menu) {
		List<t_menu> menus = new ArrayList<t_menu> ();
		List<List<t_menu>> menuGroups = new ArrayList<>();
		List<t_category>cate = mapper.getCate();
		int groupSize = 6;
		if(menu.getCategory_seq()==0) {
			menus = mapper.getAllMenus();
		}else {
			menus = mapper.getMenus(menu);
		}
		int menuSize = menus.size();
		// 6개씩 메뉴를 담을 그룹의 갯수 구하는 구문
		int groupCount = (int)Math.ceil((double)menuSize / groupSize);
		for(int i = 0; i< groupCount;i++) {
			int startIndex = i*groupSize;
			int endIndex = Math.min(startIndex+groupSize,menuSize);
			List<t_menu> menugroup = menus.subList(startIndex, endIndex);
			menuGroups.add(menugroup);
		}
		model.addAttribute("menuGroups", menuGroups);
		model.addAttribute("cate", cate);
		return "oMenu";
	}
}
