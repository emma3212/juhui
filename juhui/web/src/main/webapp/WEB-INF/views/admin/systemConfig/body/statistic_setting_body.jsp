<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

    <div class="holder">
        <div class="content">
            <h1>统计代码设置</h1>
            <input type="hidden" class="J_errMsg" value="${eMsg}" />
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
                        <a>统计代码设置</a>
                    </li>
                </ul>
            </div>
            <div class="tab tab-horizon tab-red">
                <ul class="tab-nav clearfix">
                    <li class="active">
                        <a href="javascript:;">基本信息</a>
                    </li>
                </ul>
                <form data-fold="fold" class="box box-blue no-margin-box J_operForm" action="${website}admin/web/statistics/code/setting/update" method="post">
                    <div class="tab-panel tab-no-border ">
                        <div class="tab-content ">
                            <div class="box-title clearfix">
                                <span>统计代码设置</span>
                            </div>
                            <div class="box-container">
                                <div class="box-body">
                                    <div class="control-group">
                                        <label class="control-label">
                                            设置统计代码
                                            <span class="required">*</span>
                                        </label>

                                        <div class="controls">
                                            <textarea class="w500" name="webStatisticsCode">${value}</textarea>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="form-footer form-footer-margin">
                        <button type="submit" class="btn btn-blue btn-ok btn-margin-right J_save"
                                data-loading-text="正在提交，请稍后" data-btn-type="loading">保存
                        </button>
                        <button type="reset" class="btn btn-yellow btn-refresh">重置</button>
                    </div>
                </form>
            </div>
        </div>
    </div>