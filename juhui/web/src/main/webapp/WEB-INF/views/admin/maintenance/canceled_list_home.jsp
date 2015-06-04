<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<tiles:insertDefinition name="admin">
    <tiles:putAttribute name="title" value="${webTitle}"/>
    <tiles:putAttribute name="body" value="/WEB-INF/views/admin/maintenance/body/canceled_list_body.jsp"/>
</tiles:insertDefinition>

<script type="text/template" id="tpl">
    {@each list as it}
    <tr data-order-id="&{it.id}">
        <td><input type="checkbox"/></td>
        <td>&{it.num}</td>
        <td>&{it.createdTime}</td>
        <td>&{it.thruTime}</td>
        <td>&{it.type}</td>
        <td>&{it.memberPin}</td>
        <td data-id="&{it.memberId}">
            <a href="javascript:;" class="J_companyName">&{it.memberName}</a>
        </td>
        <td data-id="&{it.memberId}"><a href="javascript:;" class="J_personInfo">&{it.applicant}</a></td>
        <td data-id="&{it.managerId}"><a href="javascript:;" class="J_managerInfo">&{it.managerName}</a></td>
        <td data-id="&{it.employeeId}">
            <a href="javascript:;" class="J_servicePersonInfo">&{it.parentName}</a>
        </td>
        <td>
            <a href="${website}admin/maintenance/order/&{it.id}/update">编辑</a> |
            <input type="hidden" class="J_tipContent" name="" value="&{it.comments}"/>
            <a class="J_tip" href="#?id=&{it.id}">备注</a> |
            <a href="${website}admin/maintenance/order/&{it.id}">浏览</a>
        </td>
    </tr>
    {@/each}
</script>
<script type="text/template" id="companyTipTemp">
    <p><i class="fa fa-map-marker fa-padding" style="font-size:14px;"></i>&{data.address}</p>
</script>
<script type="text/template" id="personTipTemp">
    <p><i class="fa fa-mobile fa-padding" style="font-size:14px;"></i>&{list.phone}</p>
    <p><i class="fa fa-phone-square fa-padding" style="font-size:12px;padding-left:1px;padding-right:5px;"></i>&{list.tel}</p>
    <p><i class="fa fa-envelope fa-padding" style="font-size:11px;padding-left:2px;padding-right:7px;"></i>&{list.email}</p>
</script>
<script type="text/template" id="managerTipTemp">
    <p><i class="fa fa-mobile fa-padding" style="font-size:14px;"></i>&{list.phone}</p>
    <p><i class="fa fa-qq fa-padding" style="font-size:11px;padding-left:2px;padding-right:5px;"></i>&{list.qq}</p>
    <p><i class="fa fa-envelope fa-padding" style="font-size:11px;padding-left:3px;padding-right:6px;"></i>&{list.email}</p>
</script>
<script type="text/template" id="serviceTipTemp">
    <p><i class="fa fa-mobile fa-padding" style="font-size:14px;"></i>&{list.phone}</p>
    <p><i class="fa fa-qq fa-padding" style="font-size:11px;padding-left:2px;padding-right:5px;"></i>&{list.qq}</p>
    <p><i class="fa fa-envelope fa-padding" style="font-size:11px;padding-left:3px;padding-right:6px;"></i>&{list.email}</p>
</script>
<script type="text/javascript">
    KISSY.ready(function (S) {
        S.use('widget/calendar, widget/dropdown, page/order/maintainenceOrder/maintainenceOrderList', function () {
            PW.page.order.maintainenceOrder.maintainenceOrderList.Cancel({
                pagi: {
                    renderTo: '#J_pagination',
                    juicerRender: '#tpl',
                    dataRender: '#J_template',
                    pageSize: 10,
                    url: '${website}admin/maintenance/order/canceled/ajax/list',
                    configUrl: function (url, page, me, prevPaginationData) {
                        return url + '/' + page;
                    }
                },
                companyToolTip: {
                    renderTo: '.J_companyName',
                    content: {
                        text: '加载中...'
                    },
                    position: {
                        page: 'absolute'
                    },
                    styles: {
                        theme: 'grey',
                        width: 400
                    },
                    show: {
                        event: 'click'
                    },
                    hide: {
                        event: 'mouseout'
                    }
                },
                personToolTip: {
                    renderTo: '.J_personInfo',
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
                managerToolTip: {
                    renderTo: '.J_managerInfo',
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
                    orderStatus: ${orderStatus}
                }
            });
        });
    });
</script>
