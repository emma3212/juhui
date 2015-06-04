<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<div class="container">
    <div class="row small-screen-padding hidden-xs">
        <img class="partner-img" src="${staticWebsite}img/pub/partner/partner.png" alt="合作伙伴">
    </div>
    <div class="row title small-screen-padding">
        <h3>寻找合作伙伴</h3>

        <div></div>
    </div>
    <div class="row find-partner small-screen-margin">
        <div class="col-sm-8  col-xs-12 find-partner-left">
            <h4>博曼承诺合作伙伴</h4>

            <p class="grey-letter">诚信、负责&利润共享</p>
            <ul>
                <li>
                    <h5>数量众多的企业会员带来的长期稳定的需求</h5>

                    <p>博曼的目标客户群体是中小企业客户，通过“免费IT维护"服务在我们同客户之间建立了有效互信的沟通界面</p>
                </li>
                <li>
                    <h5>由合作伙伴决定结算及付款方式</h5>

                    <p>在同合作伙伴合作的过程中，博曼从合作伙伴利益的角度出发，愿意尊重合作伙伴的结算付款方式，诚信不拖欠</p>
                </li>
                <li>
                    <h5>与合作伙伴共同承担业务风险</h5>

                    <p>在业务开展过程中，博曼愿同合作伙伴共担风险，出现损失后最大程度优先保护合作伙伴的利益</p>
                </li>
            </ul>
        </div>
        <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel"
             aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                        <h4 class="modal-title" id="myModalLabel">
                            提示</h4>
                    </div>
                    <div class="modal-body">
                        <%--${eMsg}--%>
                    </div>
                </div>
            </div>
        </div>
        <form class="col-sm-4 hidden-xs J_form" method="POST" action="${website}public/partner/ajax/add">
            <label>姓名</label>
            <span class="tip-span J_nameTip">姓名为空或超出10位</span>
            <input type="text" class="J-name" name="name"/>
            <label>手机</label>
            <span class="tip-span J_mobileTip">手机号码有误，请重新填写</span>
            <input type="text" class="J_mobile" name="mobilePhone"/>
            <label>合作意向</label>
            <span class="tip-span J_cooperatTip">内容超出200字</span>
            <textarea class="intention-input J_cooperat" name="cooperateIntention"></textarea>
            <label class="code-label">验证码</label>
            <input class="code-input J_code" type="text" name="valid"/>
            <img src="${website}Kaptcha.jpg" class="partner-code-img J_codeImg" alt="验证码">
            <span class="J_fresh">刷新</span>
            <button type="button" class="sub-btn J_submintBtn">发送信息</button>
        </form>
    </div>
    <div class="row title small-screen-padding">
        <h3>已合作的伙伴</h3>

        <div></div>
    </div>
    <div class="row small-screen-padding partners">
        <h4 class="col-xs-12">合作伙伴</h4>

        <p class="col-xs-12">
            博曼正在同已下合作伙伴共同发展，为会员企业提供更有价值的服务，合作伙伴的支持对我们极其重要，珍惜并维持长久的合作关系</br>
            是博曼秉承的宗旨，我们期待着更多合作伙伴的加入
        </p>

        <div class="col-xs-12 imgs">
            <img class="col-xs-2 partners-img" src="${staticWebsite}img/pub/partner/partners/partner1.png" alt="logo">
            <img class="col-xs-2 partners-img" src="${staticWebsite}img/pub/partner/partners/partner2.png" alt="logo">
            <img class="col-xs-2 partners-img" src="${staticWebsite}img/pub/partner/partners/partner3.png" alt="logo">
            <img class="col-xs-2 partners-img" src="${staticWebsite}img/pub/partner/partners/partner4.png" alt="logo">
            <img class="col-xs-2 partners-img" src="${staticWebsite}img/pub/partner/partners/partner5.png" alt="logo">
            <img class="col-xs-2 partners-img-bottom" src="${staticWebsite}img/pub/partner/partners/partner6.png"
                 alt="logo">
            <img class="col-xs-2 partners-img" src="${staticWebsite}img/pub/partner/partners/partner7.png" alt="logo">
            <img class="col-xs-2 partners-img" src="${staticWebsite}img/pub/partner/partners/partner8.png" alt="logo">
            <img class="col-xs-2 partners-img" src="${staticWebsite}img/pub/partner/partners/partner9.png" alt="logo">
            <img class="col-xs-2 partners-img" src="${staticWebsite}img/pub/partner/partners/partner10.png" alt="logo">
            <img class="col-xs-2 partners-img" src="${staticWebsite}img/pub/partner/partners/partner11.png" alt="logo">
            <img class="col-xs-2 partners-img-bottom" src="${staticWebsite}img/pub/partner/partners/partner12.png"
                 alt="logo">
            <img class="col-xs-2 partners-img-right" src="${staticWebsite}img/pub/partner/partners/partner13.png"
                 alt="logo">
            <img class="col-xs-2 partners-img-right" src="${staticWebsite}img/pub/partner/partners/partner14.png"
                 alt="logo">
            <img class="col-xs-2 partners-img-right" src="${staticWebsite}img/pub/partner/partners/partner15.png"
                 alt="logo">
            <img class="col-xs-2 partners-img-right" src="${staticWebsite}img/pub/partner/partners/partner16.png"
                 alt="logo">
            <img class="col-xs-2 partners-img-right" src="${staticWebsite}img/pub/partner/partners/partner17.png"
                 alt="logo">
            <img class="col-xs-2  partners-last-img" src="${staticWebsite}img/pub/partner/partners/partner1.png"
                 alt="logo">
        </div>
        <div class="col-xs-12">
            <button>查看更多合作伙伴</button>
        </div>
    </div>
    <div class="row title small-screen-padding">
        <h3>合作动态</h3>

        <div></div>
    </div>
    <div class="row cooperate small-screen-padding">
        <div class="col-md-6 col-sm-12">
            <div class="row">
                <h4>合作新闻</h4>

                <p class="cooperate-time"><i class="fa fa-clock-o"></i>2014.11.22</p>

                <div class="short-line"></div>
                <p class="cooperat-name">博曼同“金迈视讯”进行合作，为博曼提供智能广播系统设备</p>

                <div class="cooperat-msg clearfix">
                    <img src="${staticWebsite}img/pub/partner/cooperat-jm.png" alt="合作伙伴">

                    <p>
                        北京金迈视讯科技发展有限公司是一家专业提供IP网络
                        广播，智能广播，公共广播系统、设备产品的高薪技术
                        企业。为博曼电子建设工程项目唐山中嘉大道电子建设
                        综合项目中提供IP网络智能广播系统设备。</p>
                </div>
                <p class="cooperate-time"><i class="fa fa-clock-o"></i>2014.11.22</p>

                <div class="short-line"></div>
                <p class="cooperat-name">博曼同“裕昌恒”进行合作，为博曼提供企业网站建设项目的开发</p>

                <div class="cooperat-msg clearfix">
                    <img src="${staticWebsite}img/pub/partner/cooperat-ych.png" alt="合作伙伴">

                    <p>
                        吉林省裕昌恒科技有限公司是由一批海外归国学子、国
                        内专家学者共同组成的一支年轻的专业的团队。为博曼
                        网站建设、移动互联网整体解决方案提供开发及其其他
                        服务。</p>
                </div>
                <p class="cooperate-time"><i class="fa fa-clock-o"></i>2014.11.22</p>

                <div class="short-line"></div>
                <p class="cooperat-name">博曼同“青岛艾玛”进行合作，为博曼提供智能监控系统设备</p>

                <div class="cooperat-msg clearfix">
                    <img src="${staticWebsite}img/pub/partner/cooperat-am.png" alt="合作伙伴">

                    <p>
                        青岛艾玛信息技术有限公司是一家在安防领域从事安防
                        产品的专业化高薪技术公司。为博曼电子建设工程项目
                        唐山中嘉大道电子建设综合项目中提供IP网络智能监控
                        系统设备。</p>
                </div>
            </div>
        </div>
        <div class="col-md-6 col-sm-12">
            <div class="row">
                <h4>合作伙伴评价</h4>

                <p class="cooperate-time">博曼的长期合作伙伴说</p>

                <div class="short-line short-line-right"></div>
                <img class="img-responsive" src="${staticWebsite}img/pub/partner/cooperat-am-person.png"
                     alt="合作伙伴评价">

                <div class="short-line short-line-right"></div>
                <img src="${staticWebsite}img/pub/partner/cooperat-zjtw-person.png" class="img-responsive"
                     alt="合作伙伴评价">
            </div>
        </div>
    </div>
</div>