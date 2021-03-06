package com.juhui.service.user.impl;

import com.ebiz.base.util.Assert;
import com.juhui.common.entity.user.User;
import com.juhui.common.enums.EnabledEnums;
import com.juhui.common.exception.JuhuiException;
import com.juhui.common.utils.Constants;
import com.juhui.mapper.user.UserMapper;
import com.juhui.service.login.LoginManageService;
import com.juhui.service.user.UserService;
import com.pandawork.core.dao.CommonDao;
import com.pandawork.core.exception.ExceptionMes;
import com.pandawork.core.exception.SSException;
import com.pandawork.core.log.LogClerk;
import com.pandawork.core.util.CommonUtil;
import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.session.ExpiredSessionException;
import org.apache.shiro.subject.Subject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import java.util.Date;

@Service("userService")
public class UserServiceImpl implements UserService {

    @Autowired
    private UserMapper userMapper;

    @Autowired
    @Qualifier("commonDao")
    private CommonDao commonDao;

    @Autowired
    @Qualifier("loginManageService")
    private LoginManageService loginManageService;

    @Autowired
    @Qualifier("securityManager")
    private org.apache.shiro.mgt.SecurityManager securityManager;

    @Override
    public Subject validLogin(String loginName, String pwd) throws SSException {
        Assert.isNotNull(loginName, JuhuiException.LoginNameIsEmpty);
        Assert.isNotNull(pwd, JuhuiException.PwdIsEmpty);

        // 进行md5转化
        pwd = CommonUtil.md5(pwd);
//        Subject subject = SecurityUtils.getSubject();
        UsernamePasswordToken token = new UsernamePasswordToken(loginName, pwd);
        Subject subject = null;
        try {
            // 验证登录
//            subject.login(token);

            subject = securityManager.login(null, token);
        } catch (AuthenticationException e) {
            LogClerk.errLog.error(e);
            throw SSException.get(JuhuiException.LoginNameOrPwdIsNotCorrect);
        } catch (ExpiredSessionException e) {
            LogClerk.errLog.error(e);
        }
        // 添加到缓存中
        loginManageService.addSubject(subject);

        return subject;
    }

    @Override
    public User queryById(int id) throws SSException {
        if (Assert.lessOrEqualZero(id)) {
            // 如果小于等于零，则默认为空.
            return null;
        }
        try {
            return commonDao.queryById(User.class, id);
        } catch (Exception e) {
            LogClerk.errLog.error(e);
            throw SSException.get(ExceptionMes.SYSEXCEPTION, e);
        }
    }

    @Override
    public User queryUerByLoginName(String loginName) throws SSException {
        Assert.isNotNull(loginName, JuhuiException.LoginNameIsEmpty);
        User user = null;
        try {
            user = userMapper.queryUserByLoginName(loginName);
        } catch (Exception e) {
            LogClerk.errLog.error(e);
            throw SSException.get(ExceptionMes.SYSEXCEPTION, e);
        }

        //验证用户和状态是否合法
        if (Assert.isNull(user) || !EnabledEnums.Enabled.getId().equals(user.getEnabled())) {
            throw SSException.get(JuhuiException.LoginNameIsForbid);
        }

        return user;
    }

    @Override
    public void updatePwdById(int id, String oldPwd, String pwd, String conformPwd) throws SSException {
        if (Assert.isZero(id)) {
            // 用户不存在，则直接返回
            return;
        }

        Assert.isNotNull(oldPwd, JuhuiException.OldPwdIsEmpty);
        Assert.isNotNull(pwd, JuhuiException.PwdIsEmpty);
        Assert.isNotNull(conformPwd, JuhuiException.ConformPwdIsEmpty);
        Assert.equal(pwd, conformPwd, JuhuiException.PwdNotEqualConformPwd);

        User user = null;
        try {
            user = commonDao.queryById(User.class, id);
        } catch (Exception e) {
            LogClerk.errLog.error(e);
            throw SSException.get(ExceptionMes.SYSEXCEPTION, e);
        }

        oldPwd = CommonUtil.md5(oldPwd);
        // 验证老密码是否
        Assert.equal(user.getPwd(), oldPwd, JuhuiException.OldPwdNotCorrect);

        // 通过，新密码md5计算
        pwd = CommonUtil.md5(pwd);

        try {
            userMapper.updatePwdById(id, pwd);
        } catch (Exception e) {
            LogClerk.errLog.error(e);
            throw SSException.get(ExceptionMes.SYSEXCEPTION, e);
        }
    }

    @Override
    public void del(int id) throws SSException {
        if (Assert.lessOrEqualZero(id)) {
            //如果 id<=0 ,直接返回
            return;
        }
        try {
            commonDao.deleteById(User.class, id);
        } catch (Exception e) {
            LogClerk.errLog.error(e);
            throw SSException.get(ExceptionMes.SYSEXCEPTION, e);
        }
    }

    @Override
    public void queryLoginNameIsExist(String loginName) throws SSException {
        if (Assert.isNull(loginName)) {
            return;
        }
        int num = 0;
        try {
            num = userMapper.countLoginName(loginName);
        } catch (Exception e) {
            LogClerk.errLog.error(e);
            throw SSException.get(ExceptionMes.SYSEXCEPTION, e);
        }
        if (num> Constants.ZERO) {
            throw SSException.get(JuhuiException.LoginNameIsExist);
        }
    }

    @Override
    @Transactional(propagation = Propagation.REQUIRED, rollbackFor = {SSException.class, Exception.class, RuntimeException.class})
    public User add(User user, String conformPwd) throws SSException {
        Assert.isNotNull(user.getLoginName(), JuhuiException.LoginNameIsEmpty); // 用户名不能为空

        this.queryLoginNameIsExist(user.getLoginName());

        Assert.isNotNull(user.getPwd(), JuhuiException.PwdIsEmpty); // 用户密码不能为空
        Assert.isNotNull(conformPwd, JuhuiException.ConformPwdIsEmpty); // 用户验证密码不能为空
        Assert.equal(conformPwd, user.getPwd(), JuhuiException.ConformPwdIsEmpty);


        user.setPwd(CommonUtil.md5(user.getPwd()));
        user.setCreatedTime(new Date());
        try {
            return commonDao.insert(user);
        } catch (Exception e) {
            LogClerk.errLog.error(e);
            throw SSException.get(ExceptionMes.SYSEXCEPTION, e);
        }
    }

}
