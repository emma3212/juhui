<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>

<tiles:insertDefinition name="vip">
    <tiles:putAttribute name="title" value="${webTitle}" />
    <tiles:putAttribute name="body" value="/WEB-INF/views/vip/index/body/home_body.jsp" />
    <tiles:putAttribute name="extendHead" value="<link href='${staticWebsite}css/vip/page/index/index.css' rel='stylesheet' /><link href='${staticWebsite}tool/base-widget/css/dashboard.css' rel='stylesheet' />" />
</tiles:insertDefinition>
<script>
    KISSY.ready(function(S){
        S.use('mod/charts, widget/tab', function(S){
            PW.mod.Charts.client({
                renderTo: '.chart-line',
                chart: {
                    type: 'line', //曲线图
                    marginRight: 130,
                    marginBottom: 25
                },
                title: {
                    text: '常购产品价格走势',
                    x: -20
                },
                xAxis: {
                    categories: ['1月', '2月', '3月', '4月', '5月', '6月',
                        '7月', '8月', '9月', '10月', '11月', '12月']
                },//x轴坐标
                yAxis: {
                    title: {
                        text: '数量（个）'
                    },
                    plotLines: [{
                        value: 0,
                        width: 1,
                        color: '#808080'
                    }]
                },//y轴坐标
                tooltip: {
                    formatter: function() {
                        return '<b>'+ this.series.name +'</b><br/>'+
                                this.x +': '+ this.y +'个';
                    }
                },//鼠标移入的提示信息
                legend: {
                    layout: 'vertical',
                    align: 'right',
                    verticalAlign: 'top',
                    x: -10,
                    y: 100,
                    borderWidth: 0
                },//用不同形状、颜色、文字等 标示不同数据列
                series: [{
                    name: '采购产品1',
                    data: [7.0, 6.9, 9.5, 14.5, 18.2, 21.5, 25.2, 26.5, 23.3, 18.3, 13.9, 9.6]
                }, {
                    name: '采购产品2',
                    data: [-0.2, 0.8, 5.7, 11.3, 17.0, 22.0, 24.8, 24.1, 20.1, 14.1, 8.6, 2.5]
                }, {
                    name: '采购产品3',
                    data: [-0.9, 0.6, 3.5, 8.4, 13.5, 17.0, 18.6, 17.9, 14.3, 9.0, 3.9, 1.0]
                }, {
                    name: '采购产品4',
                    data: [3.9, 4.2, 5.7, 8.5, 11.9, 15.2, 17.0, 16.6, 14.2, 10.3, 6.6, 4.8]
                }]//多条记录信息
            });
            PW.mod.Charts.client({
                renderTo:'.chart-column',
                chart: {
                    type: 'column' //柱状图
                },
                title: {
                    text: '年度产品采购金额统计'
                },
                xAxis: {
                    categories: ['1月份', '2月份', '3月份', '4月份', '5月份', '6月份', '7月份', '8月份', '9月份', '10月份', '11月份', '12月份']
                },
                yAxis: {
                    min: 0,
                    title: {
                        text: '金额 (万元)'
                    }
                },
                tooltip: {
                    headerFormat: '<span style="font-size:10px">{point.key}</span><table>',
                    pointFormat: '<tr><td style="color:{series.color};padding:0">{series.name}: </td>' + '<td style="padding:0"><b>{point.y:.1f} 万元</b></td></tr>',
                    footerFormat: '</table>',
                    shared: true,
                    useHTML: true
                },
                plotOptions: {
                    column: {
                        pointPadding: 0.2,
                        borderWidth: 0
                    }
                },
                series: [{
                    name:'总金额',
                    data: [49.9, 71.5, 106.4,83.6, 78.8, 98.5,48.9, 38.8, 39.3,42.4, 33.2, 34.5]
                }]
            });
            PW.mod.Charts.client({
                renderTo:'.chart-pie-red',
                chart: {
                    plotBackgroundColor: null,
                    plotBorderWidth: null,
                    plotShadow: false
                },
                title: {
                    text: '年度维护问题分类统计'
                },
                tooltip: {
                    pointFormat: '{series.name}: <b>{point.percentage:.1f}%</b>'
                },
                plotOptions: {
                    pie: {
                        allowPointSelect: true,
                        cursor: 'pointer',
                        dataLabels: {
                            enabled: true,
                            color: '#000000',
                            connectorColor: '#000000',
                            format: '<b>{point.name}</b>: {point.percentage:.1f} %'
                        }
                    }
                },
                series: [{
                    type: 'pie', //饼状图
                    name: '维护问题统计',
                    data: [
                        ['维护问题1', 45.0],
                        ['维护问题2', 26.8],
                        {
                            name: '维护问题3',
                            y: 12.8,
                            sliced: true,
                            selected: true
                        },
                        ['维护问题4', 8.5],
                        ['维护问题5', 6.2],
                        ['维护问题6', 0.7]
                    ]
                }]
            });
            PW.mod.Charts.client({
                renderTo:'.chart-pie-blue',
                chart: {
                    plotBackgroundColor: null,
                    plotBorderWidth: null,
                    plotShadow: false
                },
                title: {
                    text: '年度产品采购按类别支出统计'
                },
                tooltip: {
                    pointFormat: '{series.name}: <b>{point.percentage:.1f}%</b>'
                },
                plotOptions: {
                    pie: {
                        allowPointSelect: true,
                        cursor: 'pointer',
                        dataLabels: {
                            enabled: true,
                            color: '#000000',
                            connectorColor: '#000000',
                            format: '<b>{point.name}</b>: {point.percentage:.1f} %'
                        }
                    }
                },
                series: [{
                    type: 'pie', //饼状图
                    name: '采购支出',
                    data: [
                        ['类别1', 45.0],
                        ['类别2', 26.8],
                        {
                            name: '类别3',
                            y: 12.8,
                            sliced: true,
                            selected: true
                        },
                        ['类别4', 8.5],
                        ['类别5', 6.2],
                        ['类别6', 0.7]
                    ]
                }]
            });
        })
    })
</script>