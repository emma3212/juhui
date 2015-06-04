<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<div class="holder">
    <div class="content">
        <h1>敏感操作密码设置</h1>
        <div class="crumb" id="crumb">
            <ul class="clearfix">
                <li>
                    <i class="icon icon-home"></i>
                    <a>管理员面板</a>
                    <i class="icon-angle-right"></i>
                </li>
                <li>
                    <a>系统配置管理</a>
                    <i class="icon-angle-right"></i>
                </li>
                <li>
                    <a>敏感操作密码设置</a>
                </li>
            </ul>
        </div>
        <div class="tab tab-horizon tab-red">
            <ul class="tab-nav clearfix">
                <li class="active">
                    <a href="javascript:;">基本信息</a>
                </li>
            </ul>
            <form autocomplete="off" data-fold="fold" class="box box-blue no-margin-box J_operForm" action="${website}admin/security/pass/setting/update" method="post">
                <input type="hidden" class="J_errMsg" value="${eMsg}" />
                <div class="tab-panel tab-no-border ">
                    <div class="tab-content ">
                        <div class="box-title clearfix">
                                    <span >
                                        <i class="fa fa-reorder"></i>
                                    </span>
                            <span>设置敏感操作密码</span>
                        </div>
                        <div class="box-container">
                            <div class="box-body">
                                <div class="control-group">
                                    <label class="control-label">
                                        设置新敏感操作密码
                                        <span class="required">*</span>
                                    </label>
                                    <div class="controls">
                                        <input type="text" onfocus="this.type='password'" id="J_pwd"  class="w200 valid-icon" data-valid-tip="8-15个字符，请输入敏感操作密码|输入无效，请重新输入" data-valid-rule="isPassword&length(7,16)" name="sensitiveCode" value="" />
                                    </div>
                                </div>
                                <div class="control-group">
                                    <label class="control-label">
                                        输入原敏感操作密码
                                        <span class="required">*</span>
                                    </label>
                                    <div class="controls">
                                        <input type="text" onfocus="this.type='password'" class="w200 valid-icon" data-valid-tip="8-15个字符，请输入敏感操作密码|输入无效，请重新输入" data-valid-rule="isPassword&length(7,16)" name="oldSensitiveCode" value="" />
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="form-footer form-footer-margin">
                    <button type="submit" class="btn btn-blue btn-ok btn-margin-right J_save" data-loading-text="正在提交，请稍后" data-btn-type="loading" >保存</button>
                    <button type="reset" class="btn btn-yellow btn-refresh">重置</button>
                </div>
            </form>
        </div>
    </div>
</div>
