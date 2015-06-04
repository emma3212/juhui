<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<div class="holder">
    <div class="content">
        <h1>添加友情链接</h1>
        <div class="crumb" id="crumb">
            <ul class="clearfix">
                <li>
                    <i class="icon icon-home"></i>
                    <a>管理员面板</a>
                    <i class="icon-angle-right"></i>
                </li>
                <li>
                    <a>友情链接管理</a>
                    <i class="icon-angle-right"></i>
                </li>
                <li>
                    <a>添加友情链接</a>
                </li>
            </ul>
        </div>
        <div class="tab tab-horizon tab-red">
            <ul class="tab-nav clearfix">
                <li class="active">
                    <a href="javascript:;">基本信息</a>
                </li>
            </ul>
            <form data-fold="fold" class="box box-blue no-margin-box J_addForm" method="POST"
                  action="${website}admin/link/add" enctype="multipart/form-data">
                <input type="hidden" class="showErrInp" value="${eMsg}" name="">
                <div class="tab-panel tab-no-border">
                    <div class="tab-content">
                        <div class="box-title clearfix">
                                    <span >
                                        <i class="fa fa-reorder"></i>
                                    </span>
                            <span>填写友情链接</span>
                        </div>
                        <div class="box-container">
                            <div class="box-body">
                                <div class="control-group">
                                    <label class="control-label">
                                        链接名称
                                        <span class="required">*</span>
                                    </label>
                                    <div class="controls">
                                        <input type="text" class="w200 valid-icon" data-valid-tip="1-10个字符，输入友情链接名称|链接名称有误，请重新填写" data-valid-rule="length(0,11)" name="name" value="${friendlyLink.name}" />
                                    </div>
                                </div>
                                <div class="control-group">
                                    <label class="control-label">
                                        链接地址
                                    </label>
                                    <div class="controls">
                                        <input type="text" class="w200 valid-icon" data-valid-tip="链接格式，请输入链接地址|链接地址有误，请重新填写" data-valid-rule="isHttp&length(0,50)|isNull" name="linkAddress" value="${friendlyLink.linkAddress}"/>
                                    </div>
                                </div>
                                <div class="control-group">
                                    <label class="control-label">
                                        排序
                                    </label>
                                    <div class="controls">
                                        <input type="text" class="w200 valid-icon" data-valid-tip="0-10个数字，请再次输入排序|排序有误，请重新填写" data-valid-rule="isNumber&length(0,10)|isNull" name="sortWeight" value="${friendlyLink.sortWeight}"/>
                                    </div>
                                </div>
                                <div class="control-group">
                                    <label class="control-label">
                                        上传LOGO
                                    </label>
                                    <div class="controls">
                                        <input type="file" data-valid-tip="请上传logo图片|上传logo图片有误，请重新上传" data-valid-rule="isImage|isNull" id="images" accept="image/png,image/gif" class="w300 uploadImg" name="logoPic"/>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
        </div>
        <div class="form-footer form-footer-margin">
            <button class="btn btn-blue btn-ok btn-margin-right J_submit" data-loading-text="正在提交，请稍后" data-btn-type="loading" type="submit">保存</button>
            <button class="btn btn-yellow btn-refresh" type="reset" >重置</button>
        </div>
        </form>
    </div>
</div>