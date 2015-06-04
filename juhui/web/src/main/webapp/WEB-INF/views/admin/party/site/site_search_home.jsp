<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>


<tiles:insertDefinition name="admin">
    <tiles:putAttribute name="title" value="${webTitle}" />
    <tiles:putAttribute name="body" value="/WEB-INF/views/admin/party/site/body/site_search_body.jsp" />
</tiles:insertDefinition>

<script type="text/template" id="tpl">
    {@each list as it}
    <tr data-site-id="&{it.id}">
        <td class="name">&{it.site}</td>
        <input type="hidden" class="J_partyId" value="&{it.partyId}" />
        <td class="region" data-value="&{it.regionId}">&{it.region}</td>
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
<script type="text/javascript">
    KISSY.ready(function(S){
        S.use('page/site/site,widget/box', function(S){
            PW.page.site.Site({
                renderTo:'#J_pagination',
                juicerRender:'#tpl',
                dataRender:'#J_template',
                url: '${website}admin/site/ajax/list',
                configUrl: function(url,page,me,prevPaginationData){
                    return url + '/' +page;
                }
            });
        });
    });
</script>