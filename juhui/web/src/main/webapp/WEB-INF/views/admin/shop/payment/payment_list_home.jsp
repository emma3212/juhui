<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<tiles:insertDefinition name="admin">
    <tiles:putAttribute name="title" value="${webTitle}"/>
    <tiles:putAttribute name="body" value="/WEB-INF/views/admin/shop/payment/body/payment_list_body.jsp"/>
</tiles:insertDefinition>

<script type="text/template" id="tpl">
    {@each list as it}
    <tr data-actor-id="&{it.id}">
        <td class="J_name">&{it.name}</td>
        <td class="J_desc">&{it.instruction}</td>
        <td class="J_order">&{it.seqNum}</td>
        <td>
            <a class="J_edit" href="javascript:;">编辑</a>
        </td>
        <td>
            <a class="J_enlight" href="javascript:;">
                {@if it.status == 0}启用{@/if}
                {@if it.status == 1}停用{@/if}
            </a>
        </td>
    </tr>
    {@/each}
</script>
<script type="text/template" id="editTpl">
    <tr data-actor-id="&{payment.id}" data-oper-type="&{payment.type}">
        <td>
            <input type="hidden" name="id" value="&{payment.id}"/>
            <input type="text" class="form-control input-small valid-icon J_paymentName"
                   data-valid-rule="notNull & length(0,11)" name="name" value="&{payment.name}"/></td>
        <td><input type="text" class="form-control input-small valid-icon J_paymentDesc"
                   data-valid-rule="length(0,20,1)" name="instruction" value="&{payment.desc}"/></td>
        <td><input type="text" class="form-control input-small valid-icon J_paymentOrder"
                   data-valid-rule="length(0,20,1) & isNumber | isNull" name="seqNum" value="&{payment.order}"/></td>
        <td><a class="J_save" href="javascript:;">保存</a>
        </td>
        <td><a class="J_cancel" href="javascript:;">取消</a></td>
    </tr>
</script>
<script type="text/javascript">
    KISSY.ready(function (S) {
        S.use('page/product/payment/list', function () {
            PW.page.product.payment.List({
                renderTo: '#J_pagination',
                juicerRender: '#tpl',
                dataRender: '#J_template',
                themeCss: '.J_pagination_theme2',
                url: '${website}admin/shop/product/payment/ajax/list',
                configUrl: function (url, page, me, prevPaginationData) {
                    return url + '/' + page;
                }
            });
        })
    })
</script>