<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<tiles:insertDefinition name="admin">
    <tiles:putAttribute name="title" value="${webTitle}"/>
    <tiles:putAttribute name="body" value="/WEB-INF/views/admin/other/link/body/link_list_body.jsp"/>
</tiles:insertDefinition>

<script type="text/template" id="tpl">
    {@each list as it}
    <tr data-id="&{it.id}">
        <td>&{it.name}</td>
        <td>&{it.linkAddress}</td>
        <td><img width="150px" height="60px" src="${tinyWebsite}&{it.logoPath}" ></td>
        <td>&{it.sortWeight}</td>
        <td>
            <a href="${website}admin/link/&{it.id}">编辑</a>
        </td>
        <td>
            <a class="J_del" href="javascript:;">删除</a>
        </td>
    </tr>
    {@/each}
</script>
<script type="text/javascript">
    KISSY.ready(function(S){
        S.use('widget/dropdown, page/link/list',function(){
            PW.page.link.List({
                renderTo: '#J_pagination',
                juicerRender: '#tpl',
                dataRender: '#J_template',
                pageSize: 10,
                url: '${website}admin/link/ajax/list',
                configUrl: function(url,page,me,prevPaginationData){
                    return url+'/'+ page;
                }
            });
        });
    });
</script>