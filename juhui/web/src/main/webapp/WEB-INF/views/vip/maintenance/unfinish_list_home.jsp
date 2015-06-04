<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<tiles:insertDefinition name="vip">
    <tiles:putAttribute name="title" value="${webTitle}" />
    <tiles:putAttribute name="body" value="/WEB-INF/views/vip/maintenance/body/unfinish_list_body.jsp" />
</tiles:insertDefinition>
<script type="text/template" id="tpl">
    {@each list as it}
    <tr data-order-id="&{it.id}">
        <td><input type="checkbox" /></td>
        <td>&{it.num}</td>
        <td>&{it.createdTime}</td>
        <td>&{it.type}</td>
        <td>&{it.problem}</td>
        <td data-id="&{it.employeeId}">
            <a href="javascript:;" class="J_servicePersonInfo">&{it.employeeName}</a>
        </td>
        <td>
            <a  href="${website}user/maintenance/order/&{it.id}">浏览</a>
        </td>
    </tr>
    {@/each}
</script>
<script type="text/template" id="serviceTipTemp">
    <p><i class="fa fa-mobile fa-padding" style="font-size:14px;"></i>&{list.phone}</p>
    <p><i class="fa fa-qq fa-padding" style="font-size:11px;padding-left:2px;padding-right:5px;"></i>&{list.qq}</p>
    <p><i class="fa fa-envelope fa-padding" style="font-size:11px;padding-left:3px;padding-right:6px;"></i>&{list.email}</p>
</script>
<script type="text/javascript">
    KISSY.ready(function(S){
        S.use('widget/calendar, widget/dropdown, page/freemaintainence/order-list',function(){
            PW.page.freemaintainence.orderList.Incomplete({
                pagi: {
                    renderTo: '#J_pagination',
                    juicerRender: '#tpl',
                    dataRender: '#J_template',
                    pageSize: 10,
                    url: '${website}user/maintenance/order/unfinish/ajax/list',
                    configUrl: function(url,page,me,prevPaginationData){
                        return url+'/'+ page;
                    }
                },
                serviceToolTip: {
                    renderTo: '.J_servicePersonInfo',
                    content: {
                        text: '加载中...'
                    },
                    position: {
                        page: 'absolute'
                    },
                    styles: {
                        theme: 'grey',
                        width: 250
                    },
                    show: {
                        event: 'click'
                    },
                    hide: {
                        event: 'mouseout'
                    }
                },
                otherOpts: {
                    orderStatus: ${orderStatus},
                    partyId: ${partyId}
                }
            });
        });
    });
</script>
