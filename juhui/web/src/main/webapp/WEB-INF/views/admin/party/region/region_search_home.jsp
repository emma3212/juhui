<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<tiles:insertDefinition name="admin">
    <tiles:putAttribute name="title" value="${webTitle}" />
    <tiles:putAttribute name="body" value="/WEB-INF/views/admin/party/region/body/region_search_body.jsp" />
</tiles:insertDefinition>

<script type="text/template" id="tpl">
    {@each list as it}
    <tr data-id="&{it.id}">
        <td class="J_region-name">&{it.name}</td>
        <td class="J_region-number">&{it.customerNum}</td>
        <td class="J_region-rank">&{it.sortWeight}</td>
        <td><input type="checkbox" disabled="disabled" class="J_region-core"
            {@if it.openState===1} checked="checked" {@/if}
            value="1"/>
        </td>
        <td>
            <a class="J_edit" href="javascript:;">编辑</a>
        </td>
        <td>
            <a class="J_enlight" href="javascript:;">
                {@if it.enabled == 1}停用{@/if}
                {@if it.enabled == 0}启用{@/if}
            </a>
        </td>
    </tr>
    {@/each}
</script>
<script type="text/javascript">
    KISSY.ready(function(S){
        S.use('widget/box, page/region/list',function(){
            PW.page.region.List({
                renderTo:'#J_pagination',
                juicerRender:'#tpl',
                dataRender:'#J_template',
                url: '${website}admin/region/ajax/list',
                configUrl: function(url,page,me,prevPaginationData){
                    return url+'/'+page;
                }
            });
        })
    })
</script>