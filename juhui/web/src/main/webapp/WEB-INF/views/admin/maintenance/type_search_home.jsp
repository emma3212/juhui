<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<tiles:insertDefinition name="admin">
    <tiles:putAttribute name="title" value="${webTitle}" />
    <tiles:putAttribute name="body" value="/WEB-INF/views/admin/maintenance/body/type_search_body.jsp" />
</tiles:insertDefinition>

<script type="text/template" id="tpl">
    {@each list as it}
    <tr data-order-type-id="&{it.id}">
        <td class="name">&{it.name}</td>
        <td class="fatherName">&{it.parentName}</td>
        <td class="desc">&{it.desc}</td>
        <td>
            <a class="J_edit" href="javascript:;">编辑</a>
        </td>
        <td>
            <a class="J_enlight" href="javascript:;">
                {@if it.enabled == 1}停用{@/if}
                {@if it.enabled == 0}启用{@/if}
            </a>
        </td>
        {@if it.parentId == 0}
        <td class="enter">
            <a class="J_enter" href="javascript:;">子类型</a>
        </td>
        {@/if}
    </tr>
    {@/each}
</script>

<script type="text/template" id="editTpl">
    <tr data-order-type-id="&{type.id}" data-oper-type="&{type.type}">
        <td>
            <input type="hidden" name="parentId" value="&{type.fatherId}" />
            <input type="hidden" name="id" value="&{type.id}" />
            <input type="text" class="form-control input-small valid-icon J_typeName"
                   data-valid-rule="notNull & length(0,11)" name="name" value="&{type.name}" /></td>
        <td class="J_typeFatherName">&{type.fatherName}</td>
        <td><input type="text" class="form-control input-small valid-icon J_typeDesc"
                   data-valid-rule="notNull & length(0,101)" name="desc" value="&{type.desc}" /></td>
        <td><a class="J_save" href="javascript:;">保存</a>
        </td>
        <td><a class="J_cancel" href="javascript:;">取消</a></td>
        {@if type.fatherId == 0}
        <td class="enter">
            <a class="J_enter" href="javascript:;">子类型</a>
        </td>
        {@/if}
    </tr>
</script>

<script type="text/javascript">
    KISSY.ready(function (S) {
        S.use('page/order/maintainenceOrderType/list', function () {
            PW.page.order.maintainenceOrderType.List({
                renderTo: '#J_pagination',
                juicerRender: '#tpl',
                dataRender: '#J_template',
                themeCss: '.J_pagination_theme2',
                pageSize: 10,
                url: '${website}admin/maintenance/type/ajax/list',
                configUrl: function (url, page, me, prevPaginationData) {
                    return url+'/'+ page;
                    // return url;
                }
            });
        })
    })
</script>