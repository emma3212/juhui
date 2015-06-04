package com.juhui.common.exception;

import com.pandawork.core.exception.IBizExceptionMes;

/**
 * 异常枚举
 *
 * Created by yusheng on 2014/12/18.
 */
public enum JuhuiException implements IBizExceptionMes {

    SystemException("系统内部异常", 1),

    // 安全中心
    SecurityTGTKeyNotnull("系统内部异常，TGT key不能为空！", 10001),   // 权限名称不能为空
    SecurityTGTValueNotnull("系统内部异常，TGT值不能为空！", 10002),   // 权限名称不能为空

    PwdIsEmpty("密码不能为空", 11001),     // 密码不能为空
    PwdNotEqualConformPwd("密码和确认密码不一致！", 11002), //   用户名和密码为不合法\
    ConformPwdIsEmpty("确认密码不能为空", 11003), //   用户名不能为空
    OldPwdIsEmpty("旧密码不能为空", 11004), //   用户名不能为空
    OldPwdNotCorrect("旧密码不正确", 11005),  // 旧密码不正确
    LoginNameIsEmpty("登录用户不能为空", 11006), //   用户PIN不能为空
    LoginNameIsExist("登录用户已经存在,请重新输入", 11007), //   登录用户名已经存在
    LoginNameIsForbid("用户被禁用或者不是网站管理员", 11008), //   账户被停用或者不是网站管理员
    LoginNameOrPwdIsNotCorrect("用户名或密码不正确！", 11009), //   用户名和密码为不合法

    UploadFileFail("上传文件失败", 14005)

    ;

    private String msg;

    private int code;

    JuhuiException(String msg, int code) {
        this.msg = msg;
        this.code = code;
    }

    @Override
    public String getMes() {
        return msg;
    }

    @Override
    public int getCode() {
        return code;
    }
}
