package com.henleo.rbac.web.action;

import com.henleo.rbac.domian.Authorization;
import com.henleo.rbac.domian.Menu;
import com.henleo.rbac.service.AuthorizationServiceInterface;
import com.henleo.rbac.service.MenuServiceInterface;
import com.henleo.rbac.service.RoleServiceInterface;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.util.ArrayList;
import java.util.List;

/**
 * 权限控制器
 */
@Controller
public class authorizationController {

    @Resource
    private MenuServiceInterface menuServiceImpl;

    public MenuServiceInterface getMenuServiceImpl() {
        return menuServiceImpl;
    }

    public void setMenuServiceImpl(MenuServiceInterface menuServiceImpl) {
        this.menuServiceImpl = menuServiceImpl;
    }

    @Resource
    private RoleServiceInterface roleServiceImpl;

    public RoleServiceInterface getRoleServiceImpl() {
        return roleServiceImpl;
    }

    public void setRoleServiceImpl(RoleServiceInterface roleServiceImpl) {
        this.roleServiceImpl = roleServiceImpl;
    }

    @Resource
    private AuthorizationServiceInterface authorizationServiceImpl;

    public AuthorizationServiceInterface getAuthorizationServiceImpl() {
        return authorizationServiceImpl;
    }

    public void setAuthorizationServiceImpl(AuthorizationServiceInterface authorizationServiceImpl) {
        this.authorizationServiceImpl = authorizationServiceImpl;
    }

    @RequestMapping("/authorization1")
    public String authorization1(HttpServletRequest request) {
        // 查询所有角色
        request.setAttribute("ROLES", roleServiceImpl.findAll());

        return "authorization1";
    }

    @RequestMapping("/authorization2")
    public String authorization2(int roleid, HttpServletRequest request) {
        // 查询当前选择角色对应的权限菜单
        List<Authorization> authorizations = authorizationServiceImpl.findByRoleId(roleid);
        List<Menu> partmenus = new ArrayList<>();

        // 部分菜单
        for (Authorization au : authorizations) {
            partmenus.add(au.getMenu());
        }

        request.setAttribute("PARTMENUS", partmenus);

        // 全部菜单
        request.setAttribute("ALLMENUS", menuServiceImpl.findAll());

        // 当前选择角色的角色id
        request.setAttribute("ROLEID", roleid);

        return "authorization2";
    }

    /**
     *
     * @param roleid
     * @param menus
     * @return
     */
    @RequestMapping("/authorization3")
    public String authorization3(int roleid, int[] menus) {
        // 先删除当前角色的旧权限信息
        authorizationServiceImpl.delByRoleId(roleid);

        // 再为当前角色添加修改后的新权限信息
        for (int menuid : menus) {
            authorizationServiceImpl.addAu(roleid, menuid);
        }

        return "forward:authorization1";
    }

}
