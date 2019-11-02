package com.henleo.rbac.web.action;

import com.henleo.rbac.domian.Menu;
import com.henleo.rbac.service.MenuServiceInterface;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

@Controller
public class MenuController {
    @Resource
    private MenuServiceInterface menuServiceImpl;

    public MenuServiceInterface getMenuServiceImpl() {
        return menuServiceImpl;
    }

    public void setMenuServiceImpl(MenuServiceInterface menuServiceImpl) {
        this.menuServiceImpl = menuServiceImpl;
    }

    @RequestMapping("/menu")
    public String menu(HttpServletRequest request) {
        // 查询所有菜单
        request.setAttribute("ALLMENUS", menuServiceImpl.findAll());
        return "menu";
    }

    @RequestMapping("/delmenu")
    public String delMenu(int id) {
        // 删除菜单
        menuServiceImpl.delete(id);
        // 跳转到控制器中的menu,而不是jsp页面
        return "forward:menu";
    }

    @RequestMapping("/addmenu")
    public String addMenu(HttpServletRequest request) {
        // 查询所有一级菜单
        request.setAttribute("ONELEVEL", menuServiceImpl.findByParentId(0));
        return "addmenu";
    }

    @RequestMapping("/doAddMenu")
    public String doAddMenu(String menu_name, int parent_id, String url) {
        menuServiceImpl.add(new Menu(menu_name, parent_id, url));
        return "forward:menu";
    }

}
