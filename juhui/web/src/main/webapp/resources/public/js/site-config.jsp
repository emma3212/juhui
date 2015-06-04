<%@ page contentType="text/html; charset=UTF-8"%>

(function(){

    var site ={
        website:'${website}' || '', //站点地址
        staticWebsite: '${staticWebsite}' || '', // 前端服务器地址
        puiWebsite: '${staticWebsite}tool/pui/1.1/' || 'http://pui.pandawork.net/1.1/'
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
            path: site.staticWebsite + 'js/pub/'
        },
        {
            name: 'widget',
            path: site.staticWebsite + 'tool/base-widget/js/'
        },
        {
            name: 'module',
            path: site.staticWebsite + 'js/pub/'
        },
        {
            name: 'page',
            path: site.staticWebsite + 'js/pub/'
        }
        ],
        preload: ['sizzle'],//预加载模块
        //对pui各个组件的一个
        modSettings:{
            notifier: {
                top: 100
            },
            dialog:{
                title:'提示信息',
                opacity: 0.1,
                position: 'fixed',
                theme: 'grey',
                themeUrl: site.staticWebsite + 'tool/base-widget/css/dialog.css'
            },
            defender:{
                themeUrl: site.staticWebsite + 'tool/base-widget/css/form.css'
            },
        },
        //统一错误信息入口
        msg:{
            0: '网络加载错误'
        },
        //地址信息
        url:{
            register:{
                //发送公司名称，验证是否重复
                sendCompanyName: site.website + 'queryNameIsExist',
                //验证PIN是否存在
                sendPIN: site.website + 'queryPinIsExist',
                //区域站点联动
                sendRegion: site.website + 'getsites'

            }
        }
    }
})()