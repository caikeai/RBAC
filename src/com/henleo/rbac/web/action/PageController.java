package com.henleo.rbac.web.action;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class PageController {
    /**
     * SpringMVC 在 controller 层创建通用的页面跳转方法
     */
    @RequestMapping(value = "{page}", method = RequestMethod.GET)
    public String page(@PathVariable("page") String page) {
        return page;
    }
}
