package com.juhui.web.controller.other;

import com.juhui.common.annotation.IgnoreAuthorization;
import com.juhui.common.annotation.IgnoreLogin;
import com.juhui.common.utils.URLConstants;
import com.juhui.web.spring.AbstractController;
import com.pandawork.core.exception.SSException;
import com.pandawork.core.log.LogClerk;
import net.sf.json.JSONObject;
import org.apache.shiro.subject.Subject;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 * 登录、403、404、500管理
 */
@IgnoreLogin
@IgnoreAuthorization
@Controller
@RequestMapping(value = URLConstants.INDEX_URL)
public class LoginController extends AbstractController {

    /**
     * 进入登录页面
     *
     * @param url
     * @param model
     * @return
     */
    @RequestMapping(value = "login", method = RequestMethod.GET)
    public String index(String url, Model model) {
        try {
            Subject subject = loginManageService.isLogined(getRequest());
            if (subject != null) {
                // 如果已经登录过，则直接返回
                return "redirect:home";
            }

            model.addAttribute("url", url);
        } catch (SSException e) {
            LogClerk.errLog.error(e);
        }
        return "/other/login";
    }

    /**
     * ajax登录
     *
     * @param username
     * @param password
     * @return
     */
    @RequestMapping(value = "ajax/login", method = RequestMethod.POST)
    public
    @ResponseBody
    JSONObject checkUser(@RequestParam(value = "username") String username,
                         @RequestParam(value = "password") String password) {
        try {
            // 验证过程
            Subject subject = userService.validLogin(username, password);
            // 生成t票表示
            loginManageService.generatTGT(subject.getSession().getId().toString(), getRequest(), getResponse());
        } catch (SSException e) {
            LogClerk.errLog.error(e);
            return sendErrMsgAndErrCode(e);
        }
        return sendJsonObject(AJAX_SUCCESS_CODE);
    }

    /**
     * 登录跳转
     *
     * @return
     */
    @RequestMapping(value = "login", method = RequestMethod.POST)
    public String loginDo() {
        return "redirect:/home";
    }

    /**
     * 注销登录
     *
     * @return
     */
    @RequestMapping(value = "logout", method = RequestMethod.GET)
    public String logout() {
        try {
            loginManageService.logOut(getRequest());
        } catch (SSException e) {
            LogClerk.errLog.error(e);
        }
        return "redirect:/login";
    }

    /**
     * 500页面跳转，主要提供给内部
     *
     * @param msg
     * @return
     */
    @RequestMapping(value = "/500", method = {RequestMethod.POST, RequestMethod.GET, RequestMethod.PUT, RequestMethod.PUT, RequestMethod.HEAD, RequestMethod.OPTIONS, RequestMethod.TRACE})
    public String err500(@RequestParam(value = "eMsg", required = false) String msg) {
        if (msg != null) {
            sendErrMsg(msg);
        }
        return ADMIN_SYS_ERR_PAGE;
    }

    @RequestMapping(value = "/403", method = {RequestMethod.POST, RequestMethod.GET, RequestMethod.PUT, RequestMethod.PUT, RequestMethod.HEAD, RequestMethod.OPTIONS, RequestMethod.TRACE})
    public String err403(@RequestParam(value = "eMsg", required = false) String msg) {
        if (msg != null) {
            sendErrMsg(msg);
        }
        return ADMIN_FORBIDDEN_PAGE;
    }

    @RequestMapping(value = "/404", method = {RequestMethod.POST, RequestMethod.GET, RequestMethod.PUT, RequestMethod.PUT, RequestMethod.HEAD, RequestMethod.OPTIONS, RequestMethod.TRACE})
    public String err404(@RequestParam(value = "eMsg", required = false) String msg) {
        if (msg != null) {
            sendErrMsg(msg);
        }
        return ADMIN_NOT_FOUND_PAGE;
    }

}