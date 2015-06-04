package com.juhui.common.utils;

/**
 * 全站Url地址常量
 * 命名规范：大模块_小模块_小模块_..._URL
 * 必须全部是大写字母
 * 两个小模块之间的地址不空行
 * 两个大模块之间的地址用两个空行隔开
 *
 * @author: zhangteng
 * @time: 2014/9/25 20:06
 */
public final class URLConstants {

    //首页
    public static final String INDEX_URL = "";

    //home页
    public static final String HOME_URL = "home";

    // 商城
    // 产品品牌管理
    public static final String ADMIN_SHOP_PRODUCT_BRAND_URL = "admin/shop/brand";

    //产品分类管理
    public static final String ADMIN_SHOP_PRODUCT_CATEGORY_URL = "admin/shop/product/category";


    //当事人
    //区域管理
    public static final String ADMIN_REGION_URL = "admin/region";
    public static final String ADMIN_EMPLOYEE_URL = "admin/employee";
    public static final String ADMIN_MEMBER_URL = "admin/member";//会员
    public static final String ADMIN_SITE_URL = "admin/site";//站点
    public static final String ADMIN_ROLE_URL = "admin/role";//角色

    //免费维护
    public static final String ADMIN_MAINTENANCE_TYPE_URL = "admin/maintenance/type";
    public static final String ADMIN_MAINTENANCE_ORDER_URL = "admin/maintenance/order";
    public static final String ADMIN_PARTY_MAINTENANCE_URL = "admin/party/maintenance";

    //系统配置管理
    //敏感密码
    public static final String ADMIN_SECURITY_PASS_SETTING_URL = "admin/user/pass/setting";
    //全站统计代码
    public static final String ADMIN_WEB_STATISTICS_CODE_URL = "admin/web/statistics/code/setting";
    //员工档案管理
    public static final String ADMIN_WEB_EMPLOYEE_FILES = "admin/web/employee/files";


    // 通用组件
    // 获取区域、站点、服务人员,地址中的rsp取的是Region、Site、Party的首字母
    public static final String ADMIN_REGION_SITE_PARTY_URL = "admin/common/widget/rsp";

    // 内容管理
    // 业务标签
    public static final String ADMIN_CONTENT_BIZ_TAG = "admin/tag";
    public static final String ADMIN_CONTENT_PUBLIC_PAGE = "admin/public/page";

    //内容管理
    //友情链接
    public static final String ADMIN_CONTENT_FRIENDLY_LINK = "admin/link";


    // 微信管理
    // 微信菜单管理
    public static final String ADMIN_WECHAT = "admin/wechat";

    //User
    //免费IT维护
    public static final String User_MAINTENANCE_URL = "user/maintenance";


    //会员档案
    public static final String User_Member_URL = "user/member";

    //会员签到
    public static final String User_SIGNUP_URL = "user/signUp";

    //公共组件
    //获取公司、人员、会员信息
    public static final String PUBLIC_CHECK_PARTY_INFO_URL = "public/check/party/info";

    //前台公共展示页部分
    public static final String COMMON_INDEX_URL = "common/index";

    // 前台页面
    public static final String PUBLIC_PAGE_URL = "public/page";

    // 微信
    // 微信服务器
    public static final String WECHAT_URL = "wechat";

    // 微信party相关
    public static final String WECHAT_PARTY_URL = "wechat/party";

    // 微信维护订单相关
    public static final String WECHAT_MAINTENANCE__ORDER_URL = "wechat/maintenance/order";

    // 后台岗位管理模块
    public static final String ADMIN_POST_URL = "admin/post";

    // 后台岗位申请管理模块
    public static final String ADMIN_POST_APPLICATION_URL = "admin/post/application";

    // 公共页面招聘专区
    public static final String PUBIC_RECRUITMENT_URL = "public/recruitment";

    // 公共页面免费IT服务
    public static final String PUBIC_FREEITMAINTENANCE_URL = "public/free/it/maintenance";

    // 公共页面站点与加盟
    public static final String PUBIC_SITEANDJOIN_URL = "public/site/join";

    // 公共页面帮助与支持
    public static final String PUBIC_HELPANDSUPPORT_URL = "public/help/support";

    //公共页面合作伙伴专区
    public static final String PUBLIC_PARTNER_URL = "public/partner";

    // 管理员后台合作伙伴管理模块
    public static final String ADMIN_PARTNER_URL = "admin/partner";
}
