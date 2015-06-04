<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<tiles:insertDefinition name="admin">
    <tiles:putAttribute name="title" value="${webTitle}"/>
    <tiles:putAttribute name="body" value="/WEB-INF/views/admin/other/postApplication/body/post_application_list_body.jsp"/>
</tiles:insertDefinition>

<script type="text/template" id="tpl">
    {@each list as it}
    <tr data-application-id="&{it.id}">
        <td><input type="checkbox" /></td>
        <td>&{it.postName}</td>
        <td>&{it.postId}</td>
        <td>&{it.name}</td>
        <td>&{it.phone}</td>
        <td>&{it.createdTime}</td>
        <td>
            <a class="J_tip" href="javascript:;">备注</a>
            <input type="hidden" class="J_conent" value="&{it.remark}" />
        </td>
        <td>
            {@if it.linked == 0}
            <a class="J_connect" href="javascript:;">未联</a></td>
        {@/if}
        {@if it.linked == 1}
        <a class="J_connect" href="javascript:;">已联</a></td>
        {@/if}
    </tr>
    {@/each}
</script>
<script type="text/javascript">
    KISSY.ready(function(S){
        S.use('widget/calendar, widget/dropdown, page/recruitment/application-list',function(){
            PW.page.recruitment.ApplicationList({
                pagi: {
                    renderTo: '#J_pagination',
                    juicerRender: '#tpl',
                    dataRender: '#J_template',
                    pageSize: 10,
                    url: '${website}admin/post/application/ajax/list',
                    configUrl: function(url,page,me,prevPaginationData){
                         return url+'/'+ page;
                    }
                }
            });
        });
    });
</script>