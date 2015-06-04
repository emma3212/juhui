<%@ page  contentType="text/html; charset=UTF-8"%>
(function(){

        var site ={
            website: '${website}' || '', //站点地址
            staticWebsite: '${staticWebsite}' || '', // 前端服务器地址
            puiWebsite: '${staticWebsite}tool/pui/1.1/' || 'http://pui.pandawork.net/1.1/' //pui地址
        }

        _pw_env = {
            status: 0, //0-前端调试，1-后端调试, 2-后端部署
            website: site.website,
            staticWebsite: site.staticWebsite,
            puiWebsite: site.puiWebsite,
            tag: '',
            pkgs:[
            {
                name: 'io',
                path: site.staticWebsite + 'js/vip/'
            },
            {
                name: 'widget',
                path: site.staticWebsite + 'tool/base-widget/js/'
            },
            {
                name: 'module',
                path: site.staticWebsite + 'js/vip/'
            },
            {
                name: 'page',
                path: site.staticWebsite + 'js/vip/'
            }
            ],
            preload: ['sizzle'],//预加载模块
            //对pui各个组件的一个
            modSettings:{
                notifier: {
                    top: 100
                },
            dialog:{
                opacity: 0.1,
                position: 'fixed',
                title: '提示信息',
                theme: 'white',
                themeUrl: site.staticWebsite + 'tool/base-widget/css/core.css'
            },
            ztree:{
                themeUrl: site.staticWebsite + 'tool/base-widget/css/core.css'
            },
            defender:{
                themeUrl: site.staticWebsite + 'tool/base-widget/css/core.css'
            },
            scroll:{
                cursorborderradius: 0,
                cursorcolor: '#3d3d3d'
            },
            tooltip:{
                position: {
                    my: 'tc',
                    at: 'bc' //options: tl,tc,tr, rt,rc,rb, bl,bc,br,lt,lc,lb
                },
                styles:{
                    uri: site.staticWebsite + 'tool/base-widget/css/core.css'
                }
            }
        },
        //统一错误信息入口
        msg:{
            0: '网络加载错误'
        },
        //地址信息
        url:{
            //免费IT维护
            maintainence:{
                //未完成/取消/完成维护订单中服务人员详细信息
                serviceDetail: site.website + 'public/check/party/info/ajax/employee',
                //未完成维护订单的取消订单操作
                cancelOrder: site.website + 'user/maintenance/order/ajax/cancel',
                //订单问题类型select渲染数据
                linkageOrderType: site.website + 'user/maintenance/ajax/type',
                //保存评价
                saveEstimate: site.website + 'user/maintenance/ajax/update/estimate'
            },
            module:{

            }
        }
    }
})() 