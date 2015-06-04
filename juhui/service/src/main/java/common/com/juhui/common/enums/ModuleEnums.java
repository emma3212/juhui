package com.juhui.common.enums;

/**
 * 模块枚举
 * Created by Lionel on 2014/6/5.
 */
public enum ModuleEnums {
    Null(""), // 空模块

    //----------首页
    PubIndex("Pub:Index"),
    //免费IT服务
    PubFreeMaintenance("Pub:FreeMaintenance"),
    //招聘专区
    PublicRecruitment("Pub:Recruitment"),
    //站点和加盟
    PubSiteAndJoin("Pub:SiteAndJoin"),
    //帮助与支持
    PubHelpAndSupport("Pub:HelpAndSupport"),
    //合作伙伴
    PubPartner("Pub:Partner"),



    //************************************ Admin START ************************************//
    Admin("Admin"),

    //区域管理模块
    AdminRegion("Admin:Region"),
    AdminRegionList("Admin:Region:List"),
    AdminRegionAdd("Admin:Region:Add"),

    //员工管理模块
    AdminEmployee("Admin:Employee"),
    AdminActiveEmployeeList("Admin:ActiveEmployee:List"),
    AdminInActiveEmployeeList("Admin:InActiveEmployee:List"),
    AdminEmployeeAdd("Admin:Employee:Add"),
    AdminEmployeeEdit("Admin:Employee:Edit"),

    //会员管理模块
    AdmiMember("Admin:Member"),
    AdminInActiveMemberList("Admin:InActiveMember:List"),
    AdminActiveMemberList("Admin:ActiveMember:List"),
    AdminSuspendMemberList("Admin:SuspendMember:List"),
    AdminMemberEdit("Admin:Member:Edit"),

    //友情链接模块管理
    AdminContentFriendlyLink("Admin:Content:Friendly:Link"),
    AdminLinkAdd("Admin:Content:Friendly:Link:Add"),
    AdminLinkEdit("Admin:Content:Friendly:Link:Edit"),

    // 业务标签管理
    AdminContentBizTag("Admin:Content:Biz:Tag"),

    // 页面管理
    AdminPublicPage("Admin:Content:Public:Page"),

    // 微信管理
    AdminWeChat("Admin:WeChat"),
    AdminWeChatMenuView("Admin:WeChat:menu:view"),
    AdminWeChatMenuEdit("Admin:WeChat:menu:edit"),

    //角色管理模块
    AdminRole("Admin:Role"),
    AdminRoleList("Admin:Role:List"),

    //服务站点管理模块
    AdminSite("Admin:Site"),
    AdminSiteList("Admin:Site:List"),

    //免费IT维护
    AdminMaintenance("Admin:Maintenance"),
    AdminMaintenanceType("Admin:Maintenance:Type"),
    AdminMaintenanceOrder("Admin:Maintenance:Order"),
    AdminMaintenanceOrderUnFinish("Admin:Maintenance:Order:UnFinish"),
    AdminMaintenanceOrderFinish("Admin:Maintenance:Order:Finish"),
    AdminMaintenanceOrderCanceled("Admin:Maintenance:Order:Canceled"),
    AdminMaintenanceOrderDetails("Admin:Maintenance:Order:Details"),
    AdminMaintenanceOrderEdit("Admin:Maintenance:Order:Edit"),

    //系统配置管理模块
    AdminSensitiveCode("Admin:Sensitive:Code"),
    AdminWebStatisticsCode("Admin:Web:Statistics:Code"),
    AdminEmployeeFiles("Admin:Web:EmployeeFiles"),
    AdminMember("Admin:Member"),


    //商城管理模块
    ShopProduct("Admin:Shop:Product"),    // 商城产品
    ShopBrand("Admin:Shop:Brand"),        // 商城产品品牌
    ShopPayment("Admin:Shop:Payment"),    //商城产品支付方式
    ShopCategory("Admin:Shop:Category"), //商城产品分类


    //管理员商城订单模块
    AdminShopOrder("Admin:Shop:Order"),
    AdminShopOrderList("Admin:Shop:Order:List"),

    //岗位管理模块
    AdminPost("Admin:Post"),
    AdminPostList("Admin:Post:List"),

    AdminPostApplication("Admin:Post:Application"),
    AdminPostApplicationList("Admin:Post:Application:List"),

    //合作伙伴模块
    AdminPartner("Admin:Partner"),
    AdminPartnerList("Admin:Partner:List"),


    //************************************ Admin END ************************************//

    //************************************ User START ************************************//
    User("User"),


    //免费IT维护
    UserMaintenance("User:Maintenance"),
    UserMaintenanceApply("User:Maintenance:Apply"),
    UserMaintenanceOrderDetails("User:Maintenance:Order:Details"),
    //免费IT维护订单
    UserMaintenanceOrderUnFinish("User:Maintenance:Order:UnFinish"),
    UserMaintenanceOrderFinish("User:Maintenance:Order:Finish"),
    UserMaintenanceOrderCanceled("User:Maintenance:Order:Canceled"),

    //会员档案
    UserMember("User:Member"),
    UserMemberEdit("User:Member:Edit"),


    //************************************ User END ************************************//
    //************************************ Common START ************************************//
    //************************************ Common END ************************************//

    ;

    ModuleEnums(String name) {
        this.name = name;
    }

    private String name;

    public String getName() {
        return name;
    }
}
