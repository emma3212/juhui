<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<div class="holder">
    <div class="content">
        <h1>员工档案管理</h1>
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
                    <a>员工档案管理</a>
                </li>
            </ul>
        </div>
        <div class="tab tab-horizon tab-red">
            <ul class="tab-nav clearfix">
                <li class="active">
                    <a href="javascript:;">基本信息</a>
                </li>
                <li>
                    <a href="javascript:;">微信信息</a>
                </li>
            </ul>
            <form data-fold="fold" autocomplete="off" class="box box-blue no-margin-box J_addForm" method="POST"
                  action="${website}admin/web/employee/files/${partyEmployeeDTO.partyId}">
                <input type="hidden" class="showErrInp" value="${eMsg}" name="">
                <input type="hidden" value="put" name="_method">

                <div class="tab-panel tab-no-border ">
                    <div class="tab-content ">
                        <div class="box-title clearfix">
                                    <span>
                                        <i class="fa fa-reorder"></i>
                                    </span>
                            <span>员工档案管理</span>
                        </div>
                        <div class="box-container">
                            <div class="box-body">
                                <div class="control-group">
                                    <label class="control-label">
                                        姓名
                                        <span class="required">*</span>
                                    </label>
                                    <div class="controls">
                                        <input type="text" class="w200" data-valid-tip="1-10个字符，汉字，请输入员工姓名|姓名有误，请重新填写"
                                               data-valid-rule="length(0,11)" name="name"
                                               value="${partyEmployeeDTO.name}"/>
                                    </div>
                                </div>
                                <div class="control-group">
                                    <label class="control-label">
                                        密码
                                    </label>

                                    <div class="controls">
                                        <input type="text" onfocus="this.type='password'" class="w200 " data-valid-tip="8-15个字符，请输入密码|密码有误，请重新填写"
                                               data-valid-rule="isPassword&length(7,16)|isNull" id="J_pwd" name="passWord"
                                               value=""/>
                                    </div>
                                </div>
                                <div class="control-group">
                                    <label class="control-label">
                                        确认密码
                                    </label>

                                    <div class="controls">
                                        <input type="text" onfocus="this.type='password'" class="w200" data-valid-tip="8-15个字符，请再次输入密码|密码有误，请重新填写"
                                               data-valid-rule="require(J_pwd)&equal(J_pwd)"
                                               name="conformPwd" value=""/>
                                    </div>
                                </div>
                                <div class="control-group">
                                    <label class="control-label">
                                        性别
                                        <span class="required">*</span>
                                    </label>
                                    <div class="controls">
                                        <input type="radio" id="male" name="gender" value="0" <c:if
                                                test="${partyEmployeeDTO.gender == 0}"> checked </c:if>  />
                                        <label for="male">男</label>
                                        <input type="radio" id="female" name="gender" value="1" <c:if
                                                test="${partyEmployeeDTO.gender == 1}"> checked </c:if> />
                                        <label for="female">女</label>
                                    </div>
                                </div>
                                <div class="control-group">
                                    <label class="control-label">
                                        邮箱
                                        <span class="required">*</span>
                                    </label>

                                    <div class="controls">
                                        <input type="text" class="w200" data-valid-rule="isEmail"
                                               data-valid-tip="请输入邮箱|邮箱有误，请重新填写" name="email"
                                               value="${partyEmployeeDTO.email}"/>
                                    </div>
                                </div>
                                <div class="control-group">
                                    <label class="control-label">
                                        手机
                                        <span class="required">*</span>
                                    </label>

                                    <div class="controls">
                                        <input type="text" class="w200" data-valid-rule="isMobile"
                                               data-valid-tip="请输入手机号|手机号有误，请重新填写" name="phone"
                                               value="${partyEmployeeDTO.phone}"/>
                                    </div>
                                </div>
                                <div class="control-group">
                                    <label class="control-label">
                                        QQ
                                        <span class="required">*</span>
                                    </label>
                                    <div class="controls">
                                        <input type="text" class="w200" data-valid-rule="isQQ"
                                               data-valid-tip="请输入QQ|QQ有误，请重新填写" name="qq"
                                               value="${partyEmployeeDTO.qq}"/>
                                    </div>
                                </div>
                                <div class="control-group">
                                    <label class="control-label">
                                        角色
                                        <span class="required">*</span>
                                    </label>
                                    <div class="controls">
                                        <select class="J_actors" data-valid-tip="|角色填写有误"
                                                data-valid-rule="scale(0,1000)" name="roleTypeId">
                                            <option value="0">请选择</option>
                                            <c:forEach items="${partyRoleTypes}" var="rt">
                                                <option value="${rt.id}"
                                                        <c:if test="${rt.enabled == 0}">class="J_disable"</c:if>
                                                        <c:if test="${rt.id == partyEmployeeDTO.roleTypeId }">selected="selected"</c:if> >${rt.name}
                                                    <c:if test="${rt.enabled == 0}">(已停用)</c:if></option>
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
                                        <select class="J_region" data-valid-tip="|所属区域填写有误"
                                                data-valid-rule="scale(0,100000)" name="regionId">
                                            <option value="0">请选择</option>
                                            <c:forEach items="${regionList}" var="region">
                                                <option value="${region.id}"
                                                        <c:if test="${region.id == partyEmployeeDTO.regionId}">selected="selected"</c:if>>${region.name}
                                                    <c:if test="${region.enabled == 0}">(已停用)</c:if></option>
                                            </c:forEach>
                                        </select>
                                    </div>
                                </div>
                                <div class="control-group">
                                    <label class="control-label">
                                        所属服务站点
                                        <span class="required">*</span>
                                    </label>

                                    <div class="controls">
                                        <select class="J_site" data-valid-tip="|所属服务站点填写有误"
                                                data-valid-rule="scale(0,100000)" name="siteId">
                                            <option value="0">请选择</option>
                                            <c:forEach items="${siteList}" var="site">
                                                <option value="${site.partyId}"
                                                        <c:if test="${site.enabled == 0}">class="J_disable"</c:if>
                                                        <c:if test="${site.partyId == partyEmployeeDTO.siteId}">selected="selected"</c:if> >${site.name}
                                                    <c:if test="${site.enabled == 0}">(已停用)</c:if> </option>
                                            </c:forEach>
                                        </select>
                                    </div>
                                </div>

                                <div class="control-group">
                                    <div class="controls">

                                        <input type="checkbox" value="0"
                                               <c:if test="${partyEmployeeDTO.adminStatus == 0}">checked</c:if> name="adminStatus"/>
                                        <span>是否是网站管理员</span>
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
                            <span>添加微信信息</span>
                        </div>
                        <div class="box-container">
                            <div class="box-body">
                                <div class="control-group">
                                    <label class="control-label">是否绑定微信</label>
                                    <div class="controls J_weixin">
                                        <c:choose>
                                            <c:when test="${empty partyEmployeeDTO.openId}">
                                                否
                                            </c:when>
                                            <c:otherwise>
                                                是
                                            </c:otherwise>
                                        </c:choose>
                                    </div>
                                </div>
                                <div class="control-group">
                                    <label class="control-label">OPENID</label>
                                    <div class="controls">
                                        <span>
                                            <c:if test="${empty partyEmployeeDTO.openId}">无</c:if>
                                            ${partyEmployeeDTO.openId}
                                        </span>
                                    </div>
                                </div>
                                <div class="control-group  J_weixinBox" style="display:none;">
                                    <label class="control-label">是否解绑</label>
                                    <div class="controls">
                                        <input id="yes" type="radio" value="1" name="weChatStatus">
                                        <label for="yes">是</label>
                                        <input id="no" type="radio" value="0" name="weChatStatus" checked="checked">
                                        <label for="no">否</label>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="form-footer form-footer-margin">
                    <button class="btn btn-blue btn-ok btn-margin-right" data-loading-text="正在提交，请稍后"
                            data-btn-type="loading" type="submit">保存
                    </button>
                </div>
            </form>
        </div>
    </div>
</div>