<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<div class="holder">
<div class="content">
<h1>编辑会员档案</h1>

<div class="crumb" id="crumb">
    <button class="btn btn-red time">
        <i class="fa fa-calendar"></i>
        <span>${requestScope.web_date}</span>
    </button>
    <ul class="clearfix">
        <li>
            <i class="icon icon-home"></i>
            <a>会员中心</a>
            <i class="icon-angle-right"></i>
        </li>
        <li>
            <a>会员档案</a>
            <i class="icon-angle-right"></i>
        </li>
        <li>
            <a>编辑会员档案</a>
        </li>
    </ul>
</div>
<div class="tab tab-horizon tab-red">
<ul class="tab-nav clearfix">
    <li class="active">
        <a href="javascript:;">账户信息</a>
    </li>
    <li>
        <a href="javascript:;">联系人信息</a>
    </li>
    <li>
        <a href="javascript:;">公司信息</a>
    </li>
    <li>
        <a href="javascript:;">其他信息</a>
    </li>
    <li>
        <a href="javascript:;">微信信息</a>
    </li>
</ul>
<form data-fold="fold" autocomplete="off" class="box box-blue no-margin-box J_editForm"
      action="${website}user/member/edit" method="post">
<input type="hidden" value="PUT" name="_method">
<input type="hidden" class="showErrInp" value="${eMsg}" name="">

<div class="tab-panel tab-no-border">
<div class="tab-content">
    <div class="box-title clearfix">
                                    <span>
                                        <i class="fa fa-reorder"></i>
                                    </span>
        <span>编辑会员档案</span>
    </div>
    <div class="box-container">
        <div class="box-body">
            <div class="control-group">
                <label class="control-label">
                    公司全称
                    <span class="required">*</span>
                </label>

                <div class="controls">
                    <input type="hidden" readonly="readonly" name="id" value="${memberDTO.id}"/>
                    <input type="hidden" readonly="readonly" name="partyId" value="${memberDTO.partyId}"/>
                    <input type="text" class="w200" readonly="readonly" name="name" value="${memberDTO.name}"/>
                </div>
            </div>
            <div class="control-group">
                <label class="control-label">
                    输入原密码
                </label>

                <div class="controls">
                    <input type="text" onfocus="this.type='password'" autocomplete="off" class="w200 valid-icon"
                           data-valid-tip="8-15个字符，请输入原密码|原密码有误，请重新填写"
                           data-valid-rule="isPassword&length(7,16)|isNull" name="oldPassword" value=""/>
                </div>
            </div>
            <div class="control-group">
                <label class="control-label">
                    设置新密码
                </label>

                <div class="controls">
                    <input id="J_pwd" class="w200 valid-icon" type="text" onfocus="this.type='password'"
                           data-valid-rule="isPassword&length(7,16)|isNull" data-valid-tip="8-15个字符，请输入新密码|密码有误，请重新填写"
                           value="" name="newPassword"/>
                </div>
            </div>
            <div class="control-group">
                <label class="control-label">
                    确认新密码
                </label>

                <div class="controls">
                    <input class="w200 valid-icon" type="password"
                           data-valid-rule="isPassword&require(J_pwd)&equal(J_pwd)|isNull"
                           data-valid-tip="8-15个字符，请再次输入密码|确认密码有误，请重新填写" name="code"/>
                </div>
            </div>
        </div>
    </div>
</div>
<div class="tab-content">
    <div class="box-title clearfix">
                                    <span>
                                        <i class="fa fa-reorder"></i>
                                    </span>
        <span>编辑会员档案</span>
    </div>
    <div class="box-container">
        <div class="box-body">
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
                    <input type="text" class="w200 valid-icon" data-valid-tip="请输入固定电话,区号-电话号码 如：010-12345678|固定电话有误，请重新填写"
                           data-valid-rule="isTelephone" name="contactTel" value="${memberDTO.contactTel}"/>
                </div>
            </div>
            <div class="control-group">
                <label class="control-label">
                    联系人手机
                    <span class="required">*</span>
                </label>

                <div class="controls">
                    <input class="w200 valid-icon" type="text" data-valid-rule="isMobile"
                           data-valid-tip="请输入手机号码|手机号码有误，请重新填写" name="contactPhone" value="${memberDTO.contactPhone}"/>
                </div>
            </div>
            <div class="control-group">
                <label class="control-label">
                    联系人邮箱
                    <span class="required">*</span>
                </label>

                <div class="controls">
                    <input class="w200 valid-icon" type="text" data-valid-rule="isEmail"
                           data-valid-tip="请输入邮箱|邮箱有误，请重新填写" value="${memberDTO.contactEmail}" name="contactEmail"/>
                </div>
            </div>
            <div class="control-group">
                <label class="control-label">
                    所在部门
                </label>

                <div class="controls">
                    <input class="w200 valid-icon" type="text" data-valid-rule="length(-1,11)"
                           data-valid-tip="0-10个字符，请输入所在部门|部门有误，请重新填写" value="${memberDTO.department}"
                           name="department"/>
                </div>
            </div>
            <div class="control-group">
                <label class="control-label">
                    所在职位
                </label>

                <div class="controls">
                    <input class="w200 valid-icon" type="text" data-valid-rule="length(-1,11)"
                           data-valid-tip="0-10个字符，请输入所在职位|职位有误，请重新填写" value="${memberDTO.position}" name="position"/>
                </div>
            </div>
        </div>
    </div>
</div>
<div class="tab-content">
    <div class="box-title clearfix">
                                    <span>
                                        <i class="fa fa-reorder"></i>
                                    </span>
        <span>编辑会员档案</span>
    </div>
    <div class="box-container">
        <div class="box-body">
            <div class="control-group">
                <label class="control-label">
                    公司详细办公地址
                    <span class="required">*</span>
                </label>

                <div class="controls">
                    <input type="text" class="w200 valid-icon" data-valid-rule="length(0,26)"
                           data-valid-tip="1-25个字符，请输入公司地址|公司地址有误，请重新填写" name="officeSiteName"
                           value="${memberDTO.officeSiteName}"/>
                </div>
            </div>
            <div class="control-group">
                <label class="control-label">
                    公司行业
                    <span class="required">*</span>
                </label>

                <div class="controls">
                    <input type="text" class="w200" readonly="readonly" name="industryName"
                           value="${memberDTO.industryName}"/>
                    <input type="hidden" class="w200" readonly="readonly" name="industry"
                           value="${memberDTO.industry}"/>
                </div>
            </div>
            <div class="control-group">
                <label class="control-label">
                    公司网址
                </label>

                <div class="controls">
                    <input class="w200 valid-icon" type="text" data-valid-rule="length(-1,21)"
                           data-valid-tip="0-20个字符，请输入网址|网址有误，请重新填写" name="website" value="${memberDTO.website}"/>
                </div>
            </div>
        </div>
    </div>
</div>
<div class="tab-content ">
    <div class="box-title clearfix">
                                    <span>
                                        <i class="fa fa-reorder"></i>
                                    </span>
        <span>编辑会员档案</span>
    </div>
    <div class="box-container">
        <div class="box-body">
            <div class="control-group">
                <label class="control-label">
                    推荐人PIN
                    <span class="required">*</span>
                </label>

                <div class="controls">
                    <input type="text" class="w200" readonly="readonly" name="rPin" value="${memberDTO.rPin}"/>
                </div>
            </div>
            <div class="control-group">
                <label class="control-label">
                    选择所属区域
                    <span class="required">*</span>
                </label>

                <div class="controls">
                    <input type="text" class="w200" readonly="readonly" name="regionName"
                           value="${memberDTO.regionName}"/>
                </div>
            </div>
            <div class="control-group">
                <label class="control-label">
                    选择所属站点
                    <span class="required">*</span>
                </label>

                <div class="controls">
                    <input type="text" class="w200" readonly="readonly" name="siteName" value="${memberDTO.siteName}"/>
                </div>
            </div>
        </div>
    </div>
</div>
<div class="tab-content ">
    <div class="box-title clearfix">
                                    <span>
                                        <i class="fa fa-reorder"></i>
                                    </span>
        <span>编辑会员档案</span>
    </div>
    <div class="box-container">
        <div class="box-body">
            <div class="control-group">
                <label class="control-label">
                    是否绑定微信
                </label>

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
                <label class="control-label">
                    OPENID
                </label>

                <div class="controls">
                    <span>
                        <c:if test="${empty memberDTO.openId}">无</c:if>
                         ${memberDTO.openId}
                    </span>
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
    <button type="submit" class="btn btn-blue btn-ok btn-margin-right J_submitBtn" data-loading-text="正在提交，请稍后"
            data-btn-type="loading">保存
    </button>
    <button type="button" class="btn btn-yellow btn-refresh" onclick="history.go(-1)">返回</button>
</div>
</form>
</div>
</div>
</div>