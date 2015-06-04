<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>


<tiles:insertDefinition name="admin">
    <tiles:putAttribute name="title" value="${webTitle}" />
    <tiles:putAttribute name="body" value="/WEB-INF/views/admin/party/role/body/role_search_body.jsp" />
</tiles:insertDefinition>

<script type="text/template" id="tpl">
    {@each list as it}
    <tr data-actor-id="&{it.id}">
        <td class="J_name" data-disabled="&{it.enabled}">&{it.name}</td>
        <td class="J_desc">&{it.desc}</td>
        <td>
            <a class="J_edit" href="javascript:;">编辑</a>
        </td>
        <td>
            <a class="J_enlight" href="javascript:;">
                {@if it.enabled == 0}启用{@/if}
                {@if it.enabled == 1}停用{@/if}
            </a>
        </td>
    </tr>
    {@/each}
</script>
<script type="text/template" id="editTpl">
    <tr data-actor-id="&{actors.id}" data-oper-type="&{actors.type}">
        <td>
            <input type="hidden" name="id" value="&{actors.id}" />
            <input type="text" class="form-control input-small J_actionName" data-valid-rule="notNull & length(0,11)
" name="name" value="&{actors.name}" /></td>
        <td><input type="text" class="form-control input-small J_actionDesc" data-valid-rule="length(0,200,1)" name="desc" value="&{actors.desc}" /></td>
        <td><a class="J_save" href="javascript:;">保存</a>
        </td>
        <td> <a class="J_cancel" href="javascript:;">取消</a></td>
    </tr>
</script>
<script type="text/javascript">
    KISSY.ready(function(S){
        S.use('widget/box, page/actors/list',function(){
            PW.page.actors.List({
                renderTo: '#J_pagination',
                juicerRender: '#tpl',
                dataRender: '#J_template',
                themeCss: '.J_pagination_theme2',
                pageSize: 10,
                url: '${website}admin/role/ajax/list',
                configUrl: function(url,page,me,prevPaginationData){
                    return url+'/'+ page;
                }
            });
        })
    })
</script>