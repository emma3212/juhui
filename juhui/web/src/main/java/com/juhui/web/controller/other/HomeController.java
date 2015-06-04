package com.juhui.web.controller.other;

import com.juhui.common.annotation.IgnoreAuthorization;
import com.juhui.common.entity.user.UserGroup;
import com.juhui.common.enums.UserGroupEnums;
import com.juhui.common.utils.URLConstants;
import com.juhui.common.utils.WebConstants;
import com.juhui.web.spring.AbstractController;
import com.ebiz.base.util.Assert;
import com.pandawork.core.exception.SSException;
import com.pandawork.core.log.LogClerk;
import net.sf.json.JSONObject;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 * home页
 */
@IgnoreAuthorization
@Controller
@RequestMapping(value = URLConstants.HOME_URL)
public class HomeController extends AbstractController {

    /**
     * home页
     *
     * @param model
     * @return
     */
    @RequestMapping(value = "")
    public String home(Model model) {
        UserGroup group = null;
        Object object = getRequest().getAttribute(WebConstants.WebUserId);
        int userId = 0;
        if (!Assert.isNull(object)) {
            userId = (Integer) object;
        }
        Integer id = getHostId();
        try {
            group = userGroupService.queryUserGroupByUserId(userId);
        } catch (Exception e) {
            LogClerk.errLog.error(e);
        }
        if (Assert.isNull(group)) {
            return ADMIN_NOT_FOUND_PAGE;
        }else if (UserGroupEnums.Member.getId().equals(group.getId())) {
            return "/vip/index/home_home";
        } else {
            return "/admin/index/home_home";
        }
    }

    /**
     * ajax修改用户密码
     *
     * @param oldPwd
     * @param pwd
     * @param confirmPwd
     * @return
     */
    @RequestMapping(value = "pwd/ajax/update", method = RequestMethod.PUT)
    public
    @ResponseBody
    JSONObject updatePwd(String oldPwd,
                         String pwd,
                         String confirmPwd) {
        try {
            userService.updatePwdById(getHostId(), oldPwd, pwd, confirmPwd);

        } catch (SSException e) {
            LogClerk.errLog.error(e);
            return sendErrMsgAndErrCode(e);
        }
        return sendJsonObject(AJAX_SUCCESS_CODE);
    }

}