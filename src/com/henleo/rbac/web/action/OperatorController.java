package com.henleo.rbac.web.action;

import com.henleo.rbac.domian.Authorization;
import com.henleo.rbac.domian.Menu;
import com.henleo.rbac.domian.Operator;
import com.henleo.rbac.service.AuthorizationServiceInterface;
import com.henleo.rbac.service.MenuServiceInterface;
import com.henleo.rbac.service.OperatorServiceInterface;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.List;

@Controller
public class OperatorController {

    @Resource
    private MenuServiceInterface menuServiceImpl;

    public MenuServiceInterface getMenuServiceImpl() {
        return menuServiceImpl;
    }

    public void setMenuServiceImpl(MenuServiceInterface menuServiceImpl) {
        this.menuServiceImpl = menuServiceImpl;
    }

    @Resource
    private AuthorizationServiceInterface authorizationServiceImpl;

    public AuthorizationServiceInterface getAuthorizationServiceImpl() {
        return authorizationServiceImpl;
    }

    public void setAuthorizationServiceImpl(AuthorizationServiceInterface authorizationServiceImpl) {
        this.authorizationServiceImpl = authorizationServiceImpl;
    }

    @Resource
    private OperatorServiceInterface operatorServiceImpl;

    public OperatorServiceInterface getOperatorServiceImpl() {
        return operatorServiceImpl;
    }

    public void setOperatorServiceImpl(OperatorServiceInterface operatorServiceImpl) {
        this.operatorServiceImpl = operatorServiceImpl;
    }

    /**
     * 登录控制
     * @param username 用户名
     * @param password 密码
     * @return 跳转资源
     */
    @RequestMapping("/login.do")
    public String login(String username, String password, HttpServletRequest request) {
        System.out.println(username+">"+password);

        // 调用业务方法,验证用户是否存在
        Operator operator = operatorServiceImpl.findByUsernameAndPassword(username, password);

        if (operator != null) {
            System.out.println(operator);
            // 将用户信息的信息、权限菜单存放到 session
            HttpSession session = request.getSession();

            // 用户信息
            session.setAttribute("OPERATOR", operator);

            // 权限菜单
            List<Authorization> authorizations = authorizationServiceImpl.findByRoleId(operator.getRole().getRole_id());
            List<Menu> menus = new ArrayList<>();

            for (Authorization au : authorizations) {
                menus.add(au.getMenu());
                System.out.println(au.getMenu());
            }


            /*
            // 查询所有一级菜单
            List<Menu> oneLevel = menuServiceImpl.findByParentId(0);

            // List<Menu> towLevel;

            // 遍历所有一级菜单，将其添加到 menes 集合中
            for (Menu one : oneLevel) {
                menus.add(one);
                // 查询对应的二级菜单
                List<Menu> towLevel = menuServiceImpl.findByParentId(one.getMenu_id());
                for (Menu tow : towLevel) {
                    menus.add(tow);
                }
            }*/


            session.setAttribute("MENUS", menus);

            return "main";
        } else {


            return "login";
        }
    }
}
