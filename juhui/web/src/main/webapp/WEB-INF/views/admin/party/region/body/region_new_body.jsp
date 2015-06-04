<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib prefix="html" uri="http://jakarta.apache.org/struts/tags-html" %>

<div class="holder">
    <div class="content">
        <h1>添加服务区域</h1>
        <div class="crumb">
            <ul class="clearfix">
                <li>
                    <i class="icon icon-home"></i>
                    <a>管理员面板</a>
                    <i class="icon-angle-right"></i>
                </li>
                <li>
                    <a>组织管理</a>
                    <i class="icon-angle-right"></i>
                </li>
                <li>
                    <a>服务区域管理</a>
                    <i class="icon-angle-right"></i>
                </li>
                <li>
                    <a>添加服务区域</a>
                </li>
            </ul>
        </div>
        <div class="tab-horizon tab-red">
            <ul class="tab-nav clearfix">
                <li class="active">
                    <a href="javascript:;">基本信息</a>
                </li>
            </ul>
            <div class="tab-panel">
                <form data-fold="fold" autocomplete="off" class="box box-blue J_add_form" method="POST"
                      action="${website}admin/region">
                    <div class="box-title clearfix">
                        <span>
                            <i class="fa fa-reorder"></i>
                        </span>
                        <span>添加区域</span>
                    </div>
                    <div class="box-container">
                        <div class="box-body">
                            <div class="control-group">
                                <label class="control-label">
                                    服务区域名称 <span class="required">*</span>
                                </label>

                                <div class="controls">
                                    <input type="text" data-valid-tip="1-10个字符，请输入服务区域|服务区域有误，请重新填写"
                                           data-valid-rule="length(0,11)" class="w200" name="name"
                                           value="${bomanRegion.name}"/>
                                    <input class="showErrInp" type="hidden" value="${eMsg}"/>
                                </div>
                            </div>
                            <div class="control-group">
                                <label class="control-label">
                                    客户数量
                                </label>

                                <div class="controls">
                                    <input type="text" data-valid-tip="0-10个字符，请输入客户数量|客户数量有误，请重新填写"
                                           data-valid-rule="isNumber&length(0,11)|isNull" data-valid-tip="|1-10位数字或空"
                                           class="w200" name="customerNum" value="${bomanRegion.customerNum}">
                                </div>
                            </div>
                            <div class="control-group">
                                <label class="control-label">
                                    排序
                                </label>

                                <div class="controls">
                                    <input type="text" class="w200" data-valid-tip="0-10个字符，请输入排序|排序有误，请重新填写"
                                           data-valid-rule="isNumber&length(0,11)|isNull" data-valid-tip="|1-10位数字或空"
                                           name="sortWeight" value="${bomanRegion.sortWeight}"/>
                                </div>
                            </div>
                            <div class="control-group">
                                <div class="controls">
                                    <c:choose>
                                        <c:when test="${bomanRegion.openProducts == 1}">
                                            <input type="checkbox" value="1" checked name="openProducts"/>
                                        </c:when>
                                        <c:otherwise>
                                            <input type="checkbox" value="1" name="openProducts"/>
                                        </c:otherwise>
                                    </c:choose>
                                    <span>是否开通核心产品</span>
                                </div>
                            </div>
                        </div>
                        <div class="form-footer form-footer-reset">
                            <button class="btn btn-blue btn-ok btn-margin-right" data-loading-text="正在提交，请稍后"
                                    data-btn-type="loading" type="submit">保存
                            </button>
                            <button class="btn  btn-yellow btn-cancel" type="reset">
                                重置
                            </button>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>