<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<tiles:insertDefinition name="admin">
    <tiles:putAttribute name="title" value="${webTitle}" />
    <tiles:putAttribute name="body" value="/WEB-INF/views/admin/shop/category/body/category_list_body.jsp" />
</tiles:insertDefinition>
<!-- 刷列表模板 -->
<script type="text/template" id="tpl">
    {@each list as it}
    <tr data-category-id="&{it.id}">
        <td class="name">&{it.name}</td>
        <td class="parent-category">&{it.fatherName}</td>
        <td class="order">&{it.seqNum}</td>
        <td>
            <a class="J_edit" href="javascript:;">编辑</a>
        </td>
        <td>
            <a class="J_enlight" href="javascript:;">
                {@if it.status == 0}启用{@/if}
                {@if it.status == 1}停用{@/if}
            </a>
        </td>
        {@if it.fatherId == 0}
        <td class="enter">
            <a class="J_enter" href="javascript:;">子分类</a>
        </td>
        {@/if}
    </tr>
    {@/each}
</script>
<!-- 添加分类模板 -->
<script type="text/template" id="editTpl">
    <tr data-category-id="&{category.id}" data-oper-type="&{category.type}">
        <td>
            <input type="hidden" name="id" value="&{category.id}" />
            <input type="text" class="form-control input-small valid-icon J_categoryName" data-valid-rule="notNull & length(0,11)" name="name" value="&{category.name}" /></td>
        <td>&{category.fatherName}
            <input type="hidden" name="fatherId" value="&{category.fatherId}" />
            <input type="hidden"  value="&{category.fatherName}"  name="fatherName" />
        </td>
        <td><input type="text" class="form-control input-small valid-icon J_categoryOrder" data-valid-rule="isNumber | isNull" name="seqNum" value="&{category.seqNum}" /></td>
        <td><a class="J_save" href="javascript:;">保存</a>
        </td>
        <td><a class="J_cancel" href="javascript:;">取消</a></td>
        <td class="enter"><a class="J_enter" href="javascript:;">子分类</a></td>
    </tr>
</script>
<script type="text/javascript">
    KISSY.ready(function(S){
        S.use('page/product/category/list',function(){
            PW.page.product.category.List({
                renderTo: '#J_pagination',
                juicerRender: '#tpl',
                dataRender: '#J_template',
                themeCss: '.J_pagination_theme2',
                pageSize: 10,
                url: '${website}admin/shop/product/category/ajax/listAll',
                configUrl: function(url,page,me,prevPaginationData){
                    return url+'/'+ page;
                }
            });
        })
    })
</script>
</body>
</html>
