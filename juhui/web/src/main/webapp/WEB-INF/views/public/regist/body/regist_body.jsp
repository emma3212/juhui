<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="html" uri="http://jakarta.apache.org/struts/tags-html" %>

<div class="container">
<div class="row">
<h1 class="col-xs-12 welcome hidden-xs">欢迎注册成为博曼会员</h1>
<div class="boman-production col-xs-12 hidden-xs">
    <div class="col-xs-3">
        <h2>适用客户</h2>
        <ul>
            <li>中小企业及初创企业</li>
            <li>主营业务需要依托计算机及局域网</li>
            <li>没有独立的IT职能部门解决各类IT需求</li>
            <li>希望节约成本的同时获得更好的服务</li>
        </ul>
    </div>
    <div class="col-xs-3">
        <h2>专享服务</h2>
        <ul>
            <li>每月4次免费IT维护</li>
            <li>电脑、配件、办公、网络产品上门安装</li>
            <li>各种博曼会员专享的优惠活动</li>
            <li>企业业务、管理、财务信息化培训</li>
            <li>博曼会员专享服务套餐</li>
            <li>企业信息化建设咨询与实施</li>
        </ul>
    </div>
    <div class="col-xs-3">
        <h2>核心优势</h2>
        <ul>
            <li>博曼企业会员专属客户经理</li>
            <li>企业IT需求一站式服务</li>
            <li>日常IT维护真正免费</li>
            <li>服务响应速度快，上门及时</li>
            <li>IT产品直送价格更低，速度更快</li>
            <li>根据企业信息化情况提供月度建议报告</li>
        </ul>
    </div>
    <div class="col-xs-3">
        <h2>注册须知</h2>
        <ul>
            <li>注册后请等待客户经理联系您激活账户</li>
            <li>如您对企业用户注册有疑问或有其他需求，请拨打客服热线：010-88689968 88689668</li>
        </ul>
    </div>
</div>
<form class="col-xs-12 J_registerForm" autocomplete="off" action="${website}registration" method="POST">
    <!-- 错误信息提示套在这里 -->
    <input type="hidden" class="J_loginError" value="${eMsg}"/>

    <h1 class="col-xs-12 title-tip">
        <span class="green-bar"></span>
        <span>账户信息</span>
    </h1>

    <div class="col-xs-12 form-content-border">
        <div class="col-xs-12 form-content">
            <div class="col-xs-12 col-sm-10 col-md-8 col-md-offset-2 col-sm-offset-1  control-group">
                <label class="control-label"><span>*</span>公司全称：</label>

                <div class="controls">
                    <input class="w325 valid-icon J_companyName" type="text" value="${memberDTO.name}" name="name"/>
                </div>
            </div>
            <div class="col-xs-12 col-sm-10 col-md-8 col-md-offset-2 col-sm-offset-1 control-group">
                <label class="control-label"><span>*</span>请设置密码：</label>

                <div class="controls">
                    <input class="w325 valid-icon" id="J_pwd" type="text" onfocus="this.type='password'" data-valid-rule="isPassword&length(7,16)"
                           data-valid-tip="8-15个字符，请输入密码|密码有误，请重新填写" value="" name="password"/>
                </div>
            </div>
            <div class="col-xs-12 col-sm-10 col-md-8 col-md-offset-2 col-sm-offset-1 control-group">
                <label class="control-label"><span>*</span>请确认密码：</label>

                <div class="controls">
                    <input class="w325 valid-icon" type="text" onfocus="this.type='password'"
                           data-valid-rule="isPassword&require(J_pwd)&equal(J_pwd)"
                           data-valid-tip="8-15个字符，请再次输入密码|密码有误，请重新填写" value="" name="conformPwd"/>
                </div>
            </div>
        </div>
    </div>
    <h1 class="col-xs-12 title-tip">
        <span class="green-bar"></span>
        <span>联系人信息</span>
    </h1>

    <div class="col-xs-12 form-content-border">
        <div class="col-xs-12 form-content">
            <div class="col-xs-12 col-sm-10 col-md-8 col-md-offset-2 col-sm-offset-1 control-group">
                <label class="control-label"><span>*</span>联系人姓名：</label>

                <div class="controls">
                    <input class="w325 valid-icon" type="text" data-valid-rule="length(0,11)"
                           data-valid-tip="1-10个字符，请输入联系人姓名|联系人姓名有误，请重新填写" value="${memberDTO.contactPerson}"
                           name="contactPerson"/>
                </div>
            </div>
            <div class="col-xs-12 col-sm-10 col-md-8 col-md-offset-2 col-sm-offset-1 control-group">
                <label class="control-label"><span>*</span>联系人固定电话：</label>

                <div class="controls">
                    <input class="w325 valid-icon" type="text" data-valid-rule="isTelephone"
                           data-valid-tip="请输入区号-固定电话号码|固定电话有误，请重新填写" value="${memberDTO.contactTel}"
                           name="contactTel"/>
                </div>
            </div>
            <div class="col-xs-12 col-sm-10 col-md-8 col-md-offset-2 col-sm-offset-1 control-group">
                <label class="control-label"><span>*</span>联系人手机：</label>

                <div class="controls">
                    <input class="w325 valid-icon" type="text" data-valid-rule="isMobile"
                           data-valid-tip="请输入手机号码|手机号码有误，请重新填写" value="${memberDTO.contactPhone}" name="contactPhone"/>
                </div>
            </div>
            <div class="col-xs-12 col-sm-10 col-md-8 col-md-offset-2 col-sm-offset-1 control-group">
                <label class="control-label"><span>*</span>联系人邮箱：</label>

                <div class="controls">
                    <input class="w325 valid-icon" type="text" data-valid-rule="isEmail"
                           data-valid-tip="请输入邮箱|邮箱有误，请重新填写" value="${memberDTO.contactEmail}" name="contactEmail"/>
                </div>
            </div>
            <div class="col-xs-12 col-sm-10 col-md-8 col-md-offset-2 col-sm-offset-1 control-group">
                <label class="control-label">所在部门：</label>

                <div class="controls">
                    <input class="w325 valid-icon" type="text" data-valid-rule="length(-1,11)"
                           data-valid-tip="0-10个字符，请输入所在部门|部门有误，请重新填写" value="${memberDTO.department}"
                           name="department"/>
                </div>
            </div>
            <div class="col-xs-12 col-sm-10 col-md-8 col-md-offset-2 col-sm-offset-1 control-group">
                <label class="control-label">所在职位：</label>

                <div class="controls">
                    <input class="w325 valid-icon" type="text" data-valid-rule="length(-1,11)"
                           data-valid-tip="0-10个字符，请输入所在职位|职位有误，请重新填写" value="${memberDTO.position}" name="position"/>
                </div>
            </div>
        </div>
    </div>
    <h1 class="col-xs-12 title-tip">
        <span class="green-bar"></span>
        <span>公司信息</span>
    </h1>

    <div class="col-xs-12 form-content-border">
        <div class="col-xs-12 form-content">
            <div class="col-xs-12 col-sm-10 col-md-8 col-md-offset-2 col-sm-offset-1 control-group">
                <label class="control-label"><span>*</span>公司详细办公地址：</label>

                <div class="controls">
                    <input class="w325 valid-icon" type="text" data-valid-rule="length(0,26)"
                           data-valid-tip="1-25个字符，请输入公司地址|公司地址有误，请重新填写" value="${memberDTO.officeSiteName}"
                           name="officeSiteName"/>
                </div>
            </div>
            <div class="col-xs-12 col-sm-10 col-md-8 col-md-offset-2 col-sm-offset-1 control-group">
                <label class="control-label"><span>*</span>公司行业：</label>

                <div class="controls">
                    <select data-valid-rule="scale(0,1000)" data-valid-tip="请选择公司行业|公司行业有误，请重新选择"
                            value="${memberDTO.industry}" name="industry">
                        <option value="-1">请选择</option>
                        <c:forEach items="${industryTypeList}" var="item">
                            <option value="${item.id}"
                                    <c:if test="${item.id==memberDTO.industry}">selected="selected"</c:if>>${item.name}</option>
                        </c:forEach>
                    </select>
                </div>
            </div>
            <div class="col-xs-12 col-sm-10 col-md-8 col-md-offset-2 col-sm-offset-1 control-group">
                <label class="control-label">公司网址：</label>

                <div class="controls">
                    <input class="w325 valid-icon" data-valid-rule="length(-1,21)"
                           data-valid-tip="0-20个字符，请输入网址|网址有误，请重新填写" type="text" value="${memberDTO.website}"
                           name="website"/>
                </div>
            </div>
        </div>
    </div>
    <h1 class="col-xs-12 title-tip">
        <span class="green-bar"></span>
        <span>其他信息</span>
    </h1>

    <div class="col-xs-12 form-content-border">
        <div class="col-xs-12 form-content">
            <div class="col-xs-12 col-sm-10 col-md-8 col-md-offset-2 col-sm-offset-1 control-group">
                <label class="control-label"><span>*</span>推荐人PIN：</label>

                <div class="controls">
                    <input class="w325 valid-icon J_PIN" type="text" value="${memberDTO.rPin}" name="rPin"/>
                </div>
            </div>
            <div class="col-xs-12 col-sm-10 col-md-8 col-md-offset-2 col-sm-offset-1 control-group">
                <label class="control-label"><span>*</span>选择所属区域：</label>

                <div class="controls">
                    <select class=" J_region" data-valid-rule="scale(0,1000)" data-valid-tip="请选择所属区域|所属区域有误，请重新选择"
                            name="regionId">
                        <option value="0">请选择</option>
                        <c:forEach items="${regionList}" var="region">
                            <option value="${region.id}"
                                    <c:if test="${region.id==memberDTO.regionId}">selected="selected"</c:if>>${region.name}
                                <c:if test="${region.enabled == 0}">(已停用)</c:if></option>
                        </c:forEach>
                    </select>
                </div>
            </div>
            <div class="col-xs-12 col-sm-10 col-md-8 col-md-offset-2 col-sm-offset-1 control-group">
                <label class="control-label"><span>*</span>选择所属站点</label>

                <div class="controls">
                    <select class="J_site" data-valid-rule="scale(0,100000)" data-valid-tip="请选择所属站点|所属站点有误，请重新选择"
                            name="siteId">
                        <option value="0">请选择</option>
                        <c:forEach items="${siteList}" var="site">
                            <option value="${site.partyId}"
                                    <c:if test="${site.partyId==memberDTO.siteId}">selected="selected"</c:if> >${site.name}
                                <c:if test="${site.enabled == 0}">(已停用)</c:if></option>
                        </c:forEach>
                    </select>
                </div>
            </div>
            <div class="col-xs-12 col-sm-10 col-md-8 col-md-offset-2 col-sm-offset-1 control-group register-code">
                <label class="control-label"><span>*</span>验证码：</label>

                <div class="controls clearfix">
                    <input class="code J_validInp" data-valid-rule="length(3,5)" type="text" value="" name="valid"/>

                    <div class="code-tip">
                        <img src="Kaptcha.jpg" data-img-value="" class="J_codeImg">
                        <span><span class="span-tip">看不清？</span>&nbsp;&nbsp;<span
                                class="next-img J_validCode">换一张</span></span>
                    </div>
                </div>
            </div>
            <div class="col-xs-12 col-sm-10 col-md-8 col-md-offset-2 col-sm-offset-1 control-group">
                <div class="controls">
										<span class="checkbox-container checkbox-checked">
				                            <input type="checkbox" class="J_checkbox" checked="checked" name="agree"
                                                   value="0"/>
				                        </span>
				                        <span class="check-tip">
				                        	我已阅读并同意&nbsp;
				                        	<a href="${website}agreement" target="_blank">《博曼用户注册协议》</a>
				                        </span>
                </div>
            </div>
            <div class="col-xs-4 col-xs-offset-4">
                <button type="submit" class="btn register-btn J_submitBtn" data-loading-text="正在提交，请稍后"
                        data-btn-type="loading">立即注册
                </button>
            </div>
        </div>
    </div>
</form>
</div>
</div>

