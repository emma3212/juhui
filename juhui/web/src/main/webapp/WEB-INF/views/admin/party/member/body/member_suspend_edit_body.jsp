    <%@ page contentType="text/html;charset=UTF-8" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
    <%@ taglib prefix="html" uri="http://jakarta.apache.org/struts/tags-html" %>

    <div class="holder">
    <div class="content">
    <h1>修改停用会员信息</h1>
    <div class="crumb" id="crumb">
        <ul class="clearfix">
        <li>
            <i class="icon icon-home"></i>
            <a>管理员面板</a>
            <i class="icon-angle-right"></i>
        </li>
        <li>
            <a>会员管理</a>
            <i class="icon-angle-right"></i>
        </li>
        <li>
            <a>修改停用会员信息</a>
        </li>
    </ul>
</div>
<div class="tab tab-horizon tab-red">
<ul class="tab-nav clearfix">
    <li class="active">
        <a href="javascript:;">基本信息</a>
    </li>
    <li >
        <a href="javascript:;">其他信息</a>
    </li>
    <li >
        <a href="javascript:;">微信信息</a>
    </li>
</ul>
<form data-fold="fold" autocomplete="off" spellcheck="false"  class="box box-blue no-margin-box J_addForm" action="${website}admin/member/edit/1" method="post">
<input type="hidden" value="PUT" name="_method">
<input type="hidden" class="showErrInp" value="${eMsg}" name="">
<div class="tab-panel tab-no-border ">
<div class="tab-content ">
    <div class="box-title clearfix">
                                    <span >
                                        <i class="fa fa-reorder"></i>
                                    </span>
        <span>修改会员信息</span>
    </div>
    <div class="box-container">
        <div class="box-body">
            <div class="control-group">
                <label class="control-label">
                    公司全称
                    <span class="required">*</span>
                </label>
                <div class="controls">
                    <input type="hidden" name="id" value="${memberDTO.id}"/>
                    <input type="hidden" name="partyId" value="${memberDTO.partyId}"/>
                    <input type="text" class="w200 valid-icon" data-valid-tip="1-25个字符，请输入公司全称|公司全称有误，请重新填写"
                           data-valid-rule="length(0,26)" name="name" value="${memberDTO.name}"/>
                </div>
            </div>
            <div class="control-group">
                <label class="control-label">
                    详细办公地址
                    <span class="required">*</span>
                </label>
                <div class="controls">
                    <input type="text" class="w200 valid-icon" data-valid-tip="1-25个字符，请输入详细办公地址|详细办公地址有误，请重新填写"
                           data-valid-rule="length(0,26)" name="officeSiteName" value="${memberDTO.officeSiteName}"/>
                </div>
            </div>
            <div class="control-group">
                <label class="control-label">
                    联系人姓名
                    <span class="required">*</span>
                </label>
                <div class="controls">
                    <input type="text" class="w200 valid-icon" data-valid-tip="1-10个字符，请输入联系人姓名|联系人姓名有误，请重新填写"
                           data-valid-rule="length(0,11)" name="contactPerson" value="${memberDTO.contactPerson}"/>
                </div>
            </div>
            <div class="control-group">
                <label class="control-label">
                    联系人固定电话
                    <span class="required">*</span>
                </label>
                <div class="controls">
                    <input type="text"  class="w200 valid-icon" data-valid-rule="isTelephone"
                           data-valid-tip="请输入固定电话,区号-电话号码 如：010-12345678|固定电话有误，请重新填写"  name="contactTel" value="${memberDTO.contactTel}"/>
                </div>
            </div>
            <div class="control-group">
                <label class="control-label">
                    联系人手机
                    <span class="required">*</span>
                </label>
                <div class="controls">
                    <input type="text" class="w200 valid-icon" data-valid-rule="isMobile" data-valid-tip="请输入手机号|手机号有误，请重新填写"
                           name="contactPhone" value="${memberDTO.contactPhone}"/>
                </div>
            </div>
            <div class="control-group">
                <label class="control-label">
                    联系人邮箱
                    <span class="required">*</span>
                </label>
                <div class="controls">
                    <input type="text" class="w200 valid-icon"  data-valid-rule="isEmail" data-valid-tip="请输入邮箱|邮箱有误，请重新填写"
                           name="contactEmail" value="${memberDTO.contactEmail}"/>
                </div>
            </div>

            <div class="control-group">
                <label class="control-label">
                    公司行业
                    <span class="required">*</span>
                </label>
                <div class="controls">
                    <select data-valid-rule="scale(0,1000,1)" data-valid-tip="请输入公司行业|公司行业有误，请重新填写" name="industry">
                        <option value="-1">请选择</option>
                        <c:forEach items="${industryTypeList}" var="item">
                            <option value="${item.id}" <c:if test="${item.id==memberDTO.industry}">selected="selected"</c:if>>${item.name}</option>
                        </c:forEach>
                    </select>
                </div>
            </div>
            <div class="control-group">
                <label class="control-label">
                    所属区域
                    <span class="required">*</span>
                </label>
                <div class="controls">
                    <select data-valid-rule="scale(0,1000)" data-valid-tip="请输入所属区域|所属区域有误，请重新填写" class="w200 J_region" name="regionId">
                        <option value="0">请选择</option>
                        <c:forEach items="${regionList}" var="region">
                            <option value="${region.id}" <c:if test="${region.id==memberDTO.regionId}">selected="selected"</c:if> >${region.name}<c:if test="${region.enabled == 0}">(已停用)</c:if></option>
                        </c:forEach>
                    </select>
                </div>
            </div>
            <div class="control-group">
                <label class="control-label">
                    所属站点
                    <span class="required">*</span>
                </label>
                <div class="controls">
                    <select data-valid-rule="scale(0,100000)" data-valid-tip="请输入所属站点|所属站点有误，请重新填写" class="w200 J_site" name="siteId">
                        <option value="0">请选择</option>
                        <c:forEach items="${siteList}" var="site">
                            <option value="${site.partyId}" <c:if test="${site.partyId==memberDTO.siteId}">selected="selected"</c:if> >${site.name}<c:if test="${site.enabled == 0}">(已停用)</c:if></option>
                        </c:forEach>
                    </select>
                </div>
            </div>
            <div class="control-group">
                <label class="control-label">
                    客户经理
                    <span class="required">*</span>
                </label>
                <div class="controls">
                    <select data-valid-rule="scale(0,100000)" data-valid-tip="请输入客户经理|客户经理有误，请重新填写" class="w200 J_manager" name="managerId">
                        <option value="0">请选择</option>
                        <c:forEach items="${managerList}" var="manager">
                            <option value="${manager.partyId}" <c:if test="${manager.enabled == 0}">class="J_disable"</c:if> <c:if test="${manager.partyId==memberDTO.managerId}">selected="selected"</c:if> >${manager.name}<c:if test="${manager.enabled == 0}">(已停用)</c:if></option>
                        </c:forEach>
                    </select>
                </div>
            </div>
        </div>
    </div>
</div>
<div class="tab-content">
    <div class="box-title clearfix">
                                    <span >
                                        <i class="fa fa-reorder"></i>
                                    </span>
        <span>修改会员信息</span>
    </div>
    <div class="box-container">
        <div class="box-body">
            <div class="control-group">
                <label class="control-label">所在部门</label>
                <div class="controls">
                    <input type="text" data-valid-rule="isNull|length(0,11)" data-valid-tip="0-10个字符，请输入所在部门|所在部门有误，请重新填写" class="w200 valid-icon"  name="department" value="${memberDTO.department}" />
                </div>
            </div>
            <div class="control-group">
                <label class="control-label">所在职位</label>
                <div class="controls">
                    <input type="text" class="w200 valid-icon"  data-valid-rule="length(-1,11)"
                           data-valid-tip="0-10个字符，请输入职位名称|职位名称有误，请重新填写" name="position" value="${memberDTO.position}"/>
                </div>
            </div>

            <div class="control-group">
                <label class="control-label">推荐人</label>
                <div class="controls">
                    <input type="text" class="w50" readonly="readonly" name="rPin" value="${memberDTO.rPin}" />
                    <span class="input-group-addon">-</span><input type="text" class="w50" readonly="readonly" name="recommender" value="${memberDTO.recommender}" />
                </div>
            </div>

            <div class="control-group">
                <label class="control-label">公司网站</label>
                <div class="controls">
                    <input type="text" data-valid-rule="isNull|length(0,21)" data-valid-tip="0-20个字符，请输入公司网站|公司网站有误，请重新填写" class="w200 valid-icon" name="website" value="${memberDTO.website}" />
                </div>
            </div>
            <div class="control-group">
                <label class="control-label">新密码</label>
                <div class="controls">
                    <input type="text" onfocus="this.type='password'" class="w200 valid-icon" data-valid-rule="isPassword&length(7,16)|isNull" data-valid-tip="8-15位字符或者空，请输入密码|密码有误，请重新填写" name="newPassword" value="" />
                </div>
            </div>
        </div>
    </div>
</div>
<div class="tab-content">
    <div class="box-title clearfix">
                                    <span >
                                        <i class="fa fa-reorder"></i>
                                    </span>
        <span>修改会员信息</span>
    </div>
    <div class="box-container">
        <div class="box-body">
            <div class="control-group">
                <label class="control-label">是否绑定微信</label>
                <div class="controls">
                    <span class="J_weixin">
                        <c:choose>
                            <c:when test="${empty memberDTO.openId}">
                                否
                            </c:when>
                            <c:otherwise>
                                是
                            </c:otherwise>
                        </c:choose>
                    </span>
                </div>
            </div>
            <div class="control-group">
                <label class="control-label">OPENID</label>
                <div class="controls">
                    <span>
                    <c:if test="${empty memberDTO.openId}">无</c:if>
                             ${memberDTO.openId}
                </div>
            </div>
            <div class="control-group  J_weixinBox" style="display:none;">
                <label class="control-label">是否解绑</label>
                <div class="controls">
                    <input id="yes" type="radio" value="1" name="flag">
                    <label for="yes">是</label>
                    <input id="no" type="radio" value="0" name="flag" checked="checked">
                    <label for="no">否</label>
                </div>
            </div>
        </div>
    </div>
</div>
</div>
<div class="form-footer form-footer-margin">
    <button type="submit" class="btn btn-blue btn-ok btn-margin-right" data-loading-text="正在提交，请稍后" data-btn-type="loading" >保存</button>
    <button type="button" class="btn btn-yellow btn-refresh"
            onclick="window.location.href='${website}admin/member/'+
            <c:if test="${status == 0}">'active/list'</c:if>
            <c:if test="${status == 1}">'suspend/list'</c:if>
            <c:if test="${status == 2}">'inactive/list'</c:if>
                    ">返回
    </button>
</div>
</form>
</div>
</div>
</div>