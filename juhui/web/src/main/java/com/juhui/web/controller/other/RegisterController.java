package com.juhui.web.controller.other;

import com.ebiz.base.enums.EnabledEnums;
import com.juhui.common.annotation.IgnoreAuthorization;
import com.juhui.common.annotation.IgnoreLogin;
import com.juhui.common.entity.user.User;
import com.juhui.common.enums.UserGroupEnums;
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

import java.util.List;

/**
 * 登录、403、404、500管理
 */
@IgnoreLogin
@IgnoreAuthorization
@Controller
@RequestMapping(value = URLConstants.INDEX_URL)
public class RegisterController extends AbstractController {

    /**
     * 进入注册页
     *
     * @param model
     * @return
     */
    @RequestMapping(value = "reg", method = RequestMethod.GET)
    public String view(Model model) {
        return "other/register";
    }

    /**
     * ajax查询用户登陆名是否存在
     *
     * @param nickname
     * @return
     */
    @RequestMapping(value = "ajax/query/exist", method = RequestMethod.GET)
    @ResponseBody
    public JSONObject queryLoginNameIsExist(String nickname) {
        try {
            userService.queryLoginNameIsExist(nickname);
        } catch (SSException e) {
            LogClerk.errLog.error(e);
            return sendErrMsgAndErrCode(e);
        }
        return sendJsonObject(AJAX_SUCCESS_CODE);
    }

    @RequestMapping(value = "reg", method = RequestMethod.POST)
    @ResponseBody
    public JSONObject reg(User user, String conformPwd, Model model){

        try {
            user.setEnabled(EnabledEnums.Disabled.getId());
            user.setGroupId(UserGroupEnums.Member.getId());
            userService.add(user, conformPwd);
        } catch (SSException e) {
            LogClerk.errLog.error(e);
            sendErrMsg(e.getMessage());
            return sendJsonObject(AJAX_FAILURE_CODE);
        }
        return sendJsonObject(AJAX_SUCCESS_CODE);
    }

}