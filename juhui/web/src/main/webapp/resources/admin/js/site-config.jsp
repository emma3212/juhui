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
                path: site.staticWebsite + 'js/admin/'
            },
            {
                name: 'widget',
                path: site.staticWebsite + 'tool/base-widget/js/'
            },
            {
                name: 'module',
                path: site.staticWebsite + 'js/admin/'
            },
            {
                name: 'page',
                path: site.staticWebsite + 'js/admin/'
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
                theme: 'white',
                title: '提示信息',
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
            pagination: {
                themePackage: {
                    layout: ['first','num','last'],
                    //默认分页样式（定义了五种）
                    themeCss: 'pagination-white',
                    //首页按钮内容显示
                    firstPageTip: '<i class="fa fa-angle-left"></i>',
                    //尾页按钮内容显示
                    lastPageTip: '<i class="fa fa-angle-right"></i>'
                },
                themeUrl: site.staticWebsite + 'tool/base-widget/css/core.css'
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
        //统一错误信息
        msg:{
        },
        //统一路径位置
        //地址信息
        url:{
            login:{
                login:{
                    check: site.website + 'ajax/login'
                }
            },
            //角色管理
            actors:{
                //添加角色
                addActors: site.website + 'admin/role/ajax/add',
                //修改角色
                editActors: site.website + 'admin/role/ajax/edit',
                //删除角色
                delActors: site.website + 'admin/role/ajax/del',
                //停用启用设置
                toggelEnlight: site.website + 'admin/role/ajax/update/status'

                },
            site:{
                del: site.website + 'admin/site/ajax/del',
                edit: site.website + 'admin/site/ajax/add/or/update',
                save: site.website + 'admin/site/ajax/add/or/update',
                saveNew: site.website + 'admin/site/ajax/add/or/update',
                //停用启用设置
                toggelEnlight: site.website + 'admin/site/ajax/update/status'
            },
            payment: {
                //添加支付方式
                addPayment: site.website + 'admin/shop/product/payment/ajax/new',
                //编辑支付方式
                editPayment: site.website + 'admin/shop/product/payment/ajax/update',
                //停用启用设置
                toggelEnlight: site.website + 'admin/shop/product/payment/ajax/cancel'
            },
            // 产品分类管理
            category:{
                //保存产品分类
                save: site.website + 'admin/shop/product/category/ajax/add',
                //编辑产品分类
                edit: site.website + 'admin/shop/product/category/ajax/update',
                //停用启用设置
                toggelEnlight: site.website + 'admin/shop/product/category/ajax/cancel'
            },
            module:{
                partyLinkage:{
                    //获取区域列表
                    getRegionList: site.website + 'admin/common/widget/rsp/all',
                    //获取站点列表
                    getSiteList: site.website + 'admin/common/widget/rsp/sites',
                    //获取服务人员列表
                    getServerList: site.website + 'admin/common/widget/rsp/parties'
                }

            },
            //区域
            region:{
                //编辑
                edit: site.website + 'admin/region/ajax/update',
                //停用启用设置
                toggelEnlight: site.website + 'admin/region/ajax/enabled'
            },
            //员工
            employee: {
                abled: site.website + 'admin/employee/ajax/able',
                disabled: site.website + 'admin/employee/ajax/disable'
            },
            //会员管理
            member:{
                //站点和经理的联动
                siteLinkage: site.website + 'admin/member/managers',
                //启用会员
                abled: site.website + 'admin/member/update/status/0',
                //停用会员
                disabled: site.website + 'admin/member/update/status/1',
                //激活会员
                active: site.website + 'admin/member/active/status',
                //删除会员
                del: site.website + 'admin/member/delete',
                //保存客户经理
                saveManager: site.website + 'admin/member/assign',
                //保存备注
                saveTip: site.website + 'admin/member/remark',
                //获取维护次数
                getMaintaince: site.website + 'admin/party/maintenance/ajax/query',
                //重置维护次数
                resetMaintaince: site.website + 'admin/party/maintenance/ajax/update',
                //获取会员密码
                getPassword: site.website + 'admin/member/viewpassword'
            },
            //维护
            order:{
                //维护订单问题类型
                maintainenceOrderType:{
                    //保存订单问题类型
                    save: site.website + 'admin/maintenance/type/ajax/add',
                    //编辑订单问题类型
                    edit: site.website + 'admin/maintenance/type/ajax/update',
                    //停用启用设置
                    toggelEnlight: site.website + 'admin/maintenance/type/ajax/enabled'
                },
                saveServer: site.website + 'admin/maintenance/order/ajax/update/engineer',
                //未完成/取消/完成维护订单的备注
                saveTip: site.website + 'admin/maintenance/order/ajax/update/comments',
                //未完成/取消/完成维护订单中公司详细信息提示
                companyDetail: site.website + 'public/check/party/info/ajax/company',
                //未完成/取消/完成维护订单中申请人详细信息
                personDetail: site.website + 'public/check/party/info/ajax/applicant',
                //未完成/取消/完成维护订单中客户经理详细信息
                managerDetail: site.website + 'public/check/party/info/ajax/employee',
                //未完成/取消/完成维护订单中服务人员详细信息
                serviceDetail: site.website + 'public/check/party/info/ajax/employee',
                //未完成/取消/完成维护订单中评价详细信息
                badEvaluateDetail: site.website + 'admin/maintenance/order/ajax/estimate',
                //未完成/取消/完成维护订单的完成订单操作
                completeOrder: site.website + 'admin/maintenance/order/ajax/complete',
                //未完成/取消/完成维护订单的取消订单操作
                cancelOrder: site.website + 'admin/maintenance/order/ajax/cancel',
                //敏感密码
                sendPassword: site.website + 'admin/maintenance/order/ajax/complete/cancel',
                //给第二个select渲染数据
                linkageOrderType: site.website + 'admin/maintenance/order/ajax/type',
                //未完成/取消/完成维护订单的删除订单操作
                delOrder: site.website + 'admin/maintenance/order/ajax/del'
            },
            content:{
                tag:{
                    // 保存标签
                    save: site.website + 'admin/tag',
                    // 修改标签
                    edit: website + 'admin/tag',
                    // 删除标签
                    del: site.website + 'admin/tag'
                },
                page:{
                    // 保存页面
                    save: site.website + 'admin/public/page/ajax',
                    // 修改页面
                    edit: site.website + 'admin/public/page/ajax',
                    // 删除页面
                    del: site.website + 'admin/public/page/ajax'
                }
           },
            //招聘管理
            recruitment: {
                job: {
                //添加岗位
                add: site.website + 'admin/post/ajax/add',
                // 修改岗位
                edit: site.website + 'admin/post/ajax/update',
                // 删除岗位
                del: site.website + 'admin/post/ajax/del'
                },
                application: {
                //批量删除申请
                del: site.website + 'admin/post/application/ajax/del',
                //联系申请人
                link: site.website + 'admin/post/application/ajax/update/link',
                //保存备注信息
                saveTip: site.website + 'admin/post/application/ajax/update/remark'
                }
            },
            //合作伙伴管理
            partner:{
                //合作列表查看合作意向
                view: site.website + 'admin/partner/ajax/cooperate/intention',
                //合作列表删除
                del: site.website + 'admin/partner/ajax/del'
                },
            link:{
                //删除友情链接
                del: site.website + 'admin/link/ajax/del'
            }
        }
    }
})()
