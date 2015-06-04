<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<div class="container">
    <div class="row">
        <c:if test="${mobile_pc_browser_name != true}" >
            <div class="col-xs-12 no-padding visible-lg visible-md">
                <img class="img-responsive" src="${staticWebsite}img/pub/site-join/addr.png">
            </div>
        </c:if>
        <div class="col-xs-12 no-padding">
            <div class="row margin-top-40 info-list">
                <h3 class="info-title title-green">服务站点</h3>
                <div class="col-xs-12 no-padding info-list-holder">
                    <ul class="nav nav-tabs site-tab" role="tablist">
                        <li role="presentation" class="active"><a data-toggle="tab" role="tab" href="#tab1">石景山区</a></li>
                        <li role="presentation"><a data-toggle="tab" role="tab" href="#tab2">海淀区</a></li>
                        <li role="presentation"><a data-toggle="tab" role="tab" href="#tab3">西城区</a></li>
                        <li role="presentation"><a data-toggle="tab" role="tab" href="#tab4">东城区</a></li>
                        <li role="presentation"><a data-toggle="tab" role="tab" href="#tab5">宣武区</a></li>
                        <li role="presentation"><a data-toggle="tab" role="tab" href="#tab6">朝阳区</a></li>
                        <li role="presentation"><a data-toggle="tab" role="tab" href="#tab7">崇文区</a></li>
                        <li role="presentation"><a data-toggle="tab" role="tab" href="#tab8">丰台区</a></li>
                    </ul>
                    <div id="myTabContent" class="tab-content">
                        <div id="tab1" class="tab-pane fade">
                            <div class="col-xs-12 site-title no-padding">
                                <p class="col-xs-6 col-md-4"><span>鲁谷服务站</span></p>
                                <p class="col-xs-6 col-md-4"></p>
                                <p class="col-md-4 visible-lg visible-md"><span>免费IT维护及IT产品直送覆盖区域</span></p>
                            </div>
                            <div class="col-xs-12 site-container">
                                <div class="col-xs-12 col-sm-6 col-md-4 site-info">
                                    <img class="img-responsive" src="${staticWebsite}img/pub/site-join/sites/site-img.png" alt="" />
                                    <p class="col-xs-12 site-addr"><i class="fa fa-map-marker"></i>北京市石景山区鲁谷京西电子ZJ-57办公室</p>
                                    <p class="col-xs-12"><i class="fa fa-phone"></i>010-88689668 88689968</p>
                                    <p class="col-xs-12"><i class="fa fa-qq"></i>1004646666 1004656666</p>
                                </div>
                                <c:if test="${mobile_pc_browser_name != true}" >
                                    <div class="col-xs-12 col-sm-6 col-md-4 site-mng">
                                        <img class="img-responsive" src="${staticWebsite}img/pub/site-join/sites/site_manager.png" alt="" />
                                    </div>
                                    <div class="col-md-4 col-sm-4 visible-lg visible-md no-padding-right J_mapHolder">
                                        <div class="site-map-addr">
                                            <img class="shiftzoom" onLoad="loadMap(this);" src="${staticWebsite}img/pub/site-join/sites/addr.png" width="100%" height="100%" alt="large image" border="0" />
                                        </div>
                                        <p class="col-xs-12 text-right no-padding-right">地图可拖动区域都在鲁谷服务站服务范围内</p>
                                    </div>
                                </c:if>
                            </div>
                        </div>
                        <div id="tab2" class="tab-pane fade in active">
                            <div class="col-xs-12 site-title no-padding">
                                <p class="col-xs-6 col-md-4"><span>鲁谷服务站2</span></p>
                                <p class="col-xs-6 col-md-4"></p>
                                <p class="col-md-4 visible-lg visible-md"><span>免费IT维护及IT产品直送覆盖区域</span></p>
                            </div>
                            <div class="col-xs-12 site-container">
                                <div class="col-xs-12 col-sm-6 col-md-4 site-info">
                                    <img class="img-responsive" src="${staticWebsite}img/pub/site-join/sites/site-img.png" alt="" />
                                    <p class="col-xs-12 site-addr"><i class="fa fa-map-marker"></i>北京市石景山区鲁谷京西电子ZJ-57办公室</p>
                                    <p class="col-xs-12"><i class="fa fa-phone"></i>010-88689668 88689968</p>
                                    <p class="col-xs-12"><i class="fa fa-qq"></i>1004646666 1004656666</p>
                                </div>
                                <c:if test="${mobile_pc_browser_name != true}" >
                                    <div class="col-xs-12 col-sm-6 col-md-4 site-mng">
                                        <img class="img-responsive" src="${staticWebsite}img/pub/site-join/sites/site_manager.png" alt="" />
                                    </div>
                                    <div class="col-md-4 col-sm-4 visible-lg visible-md no-padding-right">
                                        <div class="site-map-addr">
                                            <img id="shiftzoom" class="shiftzoom" onLoad="loadMap(this);" src="${staticWebsite}img/pub/site-join/sites/addr.png" width="100%" height="100%" alt="large image" border="0" />
                                        </div>
                                        <p class="col-xs-12 text-right no-padding-right">地图可拖动区域都在鲁谷服务站服务范围内</p>
                                    </div>
                                </c:if>
                            </div>
                        </div>
                        <div id="tab3" class="tab-pane fade">
                            <div class="col-xs-12 site-title no-padding">
                                <p class="col-xs-6 col-md-4"><span>鲁谷服务站3</span></p>
                                <p class="col-xs-6 col-md-4"></p>
                                <p class="col-md-4 visible-lg visible-md"><span>免费IT维护及IT产品直送覆盖区域</span></p>
                            </div>
                            <div class="col-xs-12 site-container">
                                <div class="col-xs-12 col-sm-6 col-md-4 site-info">
                                    <img class="img-responsive" src="${staticWebsite}img/pub/site-join/sites/site-img.png" alt="" />
                                    <p class="col-xs-12 site-addr"><i class="fa fa-map-marker"></i>北京市石景山区鲁谷京西电子ZJ-57办公室</p>
                                    <p class="col-xs-12"><i class="fa fa-phone"></i>010-88689668 88689968</p>
                                    <p class="col-xs-12"><i class="fa fa-qq"></i>1004646666 1004656666</p>
                                </div>
                                <c:if test="${mobile_pc_browser_name != true}" >
                                    <div class="col-xs-12 col-sm-6 col-md-4 site-mng">
                                        <img class="img-responsive" src="${staticWebsite}img/pub/site-join/sites/site_manager.png" alt="" />
                                    </div>
                                    <div class="col-md-4 col-sm-4 visible-lg visible-md no-padding-right">
                                        <div class="site-map-addr">
                                            <img class="shiftzoom" onLoad="loadMap(this);" src="${staticWebsite}img/pub/site-join/sites/addr.png" width="351" height="300" alt="large image" border="0" />
                                        </div>
                                        <p class="col-xs-12 text-right no-padding-right">地图可拖动区域都在鲁谷服务站服务范围内</p>
                                    </div>
                                </c:if>
                            </div>
                        </div>
                        <div id="tab4" class="tab-pane fade">
                            <div class="col-xs-12 site-title no-padding">
                                <p class="col-xs-6 col-md-4"><span>鲁谷服务站4</span></p>
                                <p class="col-xs-6 col-md-4"></p>
                                <p class="col-md-4 visible-lg visible-md"><span>免费IT维护及IT产品直送覆盖区域</span></p>
                            </div>
                            <div class="col-xs-12 site-container">
                                <div class="col-xs-12 col-sm-6 col-md-4 site-info">
                                    <img class="img-responsive" src="${staticWebsite}img/pub/site-join/sites/site-img.png" alt="" />
                                    <p class="col-xs-12 site-addr"><i class="fa fa-map-marker"></i>北京市石景山区鲁谷京西电子ZJ-57办公室</p>
                                    <p class="col-xs-12"><i class="fa fa-phone"></i>010-88689668 88689968</p>
                                    <p class="col-xs-12"><i class="fa fa-qq"></i>1004646666 1004656666</p>
                                </div>

                                <c:if test="${mobile_pc_browser_name != true}" >
                                <div class="col-xs-12 col-sm-6 col-md-4 site-mng">
                                    <img class="img-responsive" src="${staticWebsite}img/pub/site-join/sites/site_manager.png" alt="" />
                                </div>
                                <div class="col-md-4 col-sm-4 visible-lg visible-md no-padding-right">
                                    <div class="site-map-addr">
                                        <img class="shiftzoom" onLoad="loadMap(this);" src="${staticWebsite}img/pub/site-join/sites/addr.png" width="351" height="300" alt="large image" border="0" />
                                    </div>
                                    <p class="col-xs-12 text-right no-padding-right">地图可拖动区域都在鲁谷服务站服务范围内</p>
                                </div>
                                </c:if>
                            </div>
                        </div>
                        <div id="tab5" class="tab-pane fade">
                            <div class="col-xs-12 site-title no-padding">
                                <p class="col-xs-6 col-md-4"><span>鲁谷服务站5</span></p>
                                <p class="col-xs-6 col-md-4"></p>
                                <p class="col-md-4 visible-lg visible-md"><span>免费IT维护及IT产品直送覆盖区域</span></p>
                            </div>
                            <div class="col-xs-12 site-container">
                                <div class="col-xs-12 col-sm-6 col-md-4 site-info">
                                    <img class="img-responsive" src="${staticWebsite}img/pub/site-join/sites/site-img.png" alt="" />
                                    <p class="col-xs-12 site-addr"><i class="fa fa-map-marker"></i>北京市石景山区鲁谷京西电子ZJ-57办公室</p>
                                    <p class="col-xs-12"><i class="fa fa-phone"></i>010-88689668 88689968</p>
                                    <p class="col-xs-12"><i class="fa fa-qq"></i>1004646666 1004656666</p>
                                </div>
                                <c:if test="${mobile_pc_browser_name != true}" >
                                <div class="col-xs-12 col-sm-6 col-md-4 site-mng">
                                    <img class="img-responsive" src="${staticWebsite}img/pub/site-join/sites/site_manager.png" alt="" />
                                </div>
                                <div class="col-md-4 col-sm-4 visible-lg visible-md no-padding-right">
                                    <div class="site-map-addr">
                                        <img class="shiftzoom" onLoad="loadMap(this);" src="${staticWebsite}img/pub/site-join/sites/addr.png" width="351" height="300" alt="large image" border="0" />
                                    </div>
                                    <p class="col-xs-12 text-right no-padding-right">地图可拖动区域都在鲁谷服务站服务范围内</p>
                                </div>
                                </c:if>
                            </div>
                        </div>
                        <div id="tab6" class="tab-pane fade">
                            <div class="col-xs-12 site-title no-padding">
                                <p class="col-xs-6 col-md-4"><span>鲁谷服务站6</span></p>
                                <p class="col-xs-6 col-md-4"></p>
                                <p class="col-md-4 visible-lg visible-md"><span>免费IT维护及IT产品直送覆盖区域</span></p>
                            </div>
                            <div class="col-xs-12 site-container">
                                <div class="col-xs-12 col-sm-6 col-md-4 site-info">
                                    <img class="img-responsive" src="${staticWebsite}img/pub/site-join/sites/site-img.png" alt="" />
                                    <p class="col-xs-12 site-addr"><i class="fa fa-map-marker"></i>北京市石景山区鲁谷京西电子ZJ-57办公室</p>
                                    <p class="col-xs-12"><i class="fa fa-phone"></i>010-88689668 88689968</p>
                                    <p class="col-xs-12"><i class="fa fa-qq"></i>1004646666 1004656666</p>
                                </div>
                                <c:if test="${mobile_pc_browser_name != true}" >
                                <div class="col-xs-12 col-sm-6 col-md-4 site-mng">
                                    <img class="img-responsive" src="${staticWebsite}img/pub/site-join/sites/site_manager.png" alt="" />
                                </div>
                                <div class="col-md-4 col-sm-4 visible-lg visible-md no-padding-right">
                                    <div class="site-map-addr">
                                        <img class="shiftzoom" onLoad="loadMap(this);" src="${staticWebsite}img/pub/site-join/sites/addr.png" width="351" height="300" alt="large image" border="0" />
                                    </div>
                                    <p class="col-xs-12 text-right no-padding-right">地图可拖动区域都在鲁谷服务站服务范围内</p>
                                </div>
                                </c:if>
                            </div>
                        </div>
                        <div id="tab7" class="tab-pane fade">
                            <div class="col-xs-12 site-title no-padding">
                                <p class="col-xs-6 col-md-4"><span>鲁谷服务站7</span></p>
                                <p class="col-xs-6 col-md-4"></p>
                                <p class="col-md-4 visible-lg visible-md"><span>免费IT维护及IT产品直送覆盖区域</span></p>
                            </div>
                            <div class="col-xs-12 site-container">
                                <div class="col-xs-12 col-sm-6 col-md-4 site-info">
                                    <img class="img-responsive" src="${staticWebsite}img/pub/site-join/sites/site-img.png" alt="" />
                                    <p class="col-xs-12 site-addr"><i class="fa fa-map-marker"></i>北京市石景山区鲁谷京西电子ZJ-57办公室</p>
                                    <p class="col-xs-12"><i class="fa fa-phone"></i>010-88689668 88689968</p>
                                    <p class="col-xs-12"><i class="fa fa-qq"></i>1004646666 1004656666</p>
                                </div>
                                <c:if test="${mobile_pc_browser_name != true}" >
                                <div class="col-xs-12 col-sm-6 col-md-4 site-mng">
                                    <img class="img-responsive" src="${staticWebsite}img/pub/site-join/sites/site_manager.png" alt="" />
                                </div>
                                <div class="col-md-4 col-sm-4 visible-lg visible-md no-padding-right">
                                    <div class="site-map-addr">
                                        <img class="shiftzoom" onLoad="loadMap(this);" src="${staticWebsite}img/pub/site-join/sites/addr.png" width="351" height="300" alt="large image" border="0" />
                                    </div>
                                    <p class="col-xs-12 text-right no-padding-right">地图可拖动区域都在鲁谷服务站服务范围内</p>
                                </div>
                                </c:if>
                            </div>
                        </div>
                        <div id="tab8" class="tab-pane fade">
                            <div class="col-xs-12 site-title no-padding">
                                <p class="col-xs-6 col-md-4"><span>鲁谷服务站8</span></p>
                                <p class="col-xs-6 col-md-4"></p>
                                <p class="col-md-4 visible-lg visible-md"><span>免费IT维护及IT产品直送覆盖区域</span></p>
                            </div>
                            <div class="col-xs-12 site-container">
                                <div class="col-xs-12 col-sm-6 col-md-4 site-info">
                                    <img class="img-responsive" src="${staticWebsite}img/pub/site-join/sites/site-img.png" alt="" />
                                    <p class="col-xs-12 site-addr"><i class="fa fa-map-marker"></i>北京市石景山区鲁谷京西电子ZJ-57办公室</p>
                                    <p class="col-xs-12"><i class="fa fa-phone"></i>010-88689668 88689968</p>
                                    <p class="col-xs-12"><i class="fa fa-qq"></i>1004646666 1004656666</p>
                                </div>
                                <c:if test="${mobile_pc_browser_name != true}" >
                                <div class="col-xs-12 col-sm-6 col-md-4 site-mng">
                                    <img class="img-responsive" src="${staticWebsite}img/pub/site-join/sites/site_manager.png" alt="" />
                                </div>
                                <div class="col-md-4 col-sm-4 visible-lg visible-md no-padding-right">
                                    <div class="site-map-addr">
                                        <img class="shiftzoom" onLoad="loadMap(this);" src="${staticWebsite}img/pub/site-join/sites/addr.png" width="351" height="300" alt="large image" border="0" />
                                    </div>
                                    <p class="col-xs-12 text-right no-padding-right">地图可拖动区域都在鲁谷服务站服务范围内</p>
                                </div>
                                </c:if>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-xs-12 no-padding">
            <div class="row margin-top-40 info-list">
                <h3 class="info-title title-green">加盟博曼成为站点负责人</h3>
                <p class="site-ad-info">在国家鼓励创业并扶植中小企业发展的趋势下，在中小企业的企业信息化和It服务等方面蕴藏着庞大的市场需求，博曼抓住这一细分市场，不断努力将企业IT服务标准化，专业化，信息化，为会员企业创造价值的同时完成自身的发展，为更好的完成这一目标，博曼在北京地区招募站点负责人加盟，如果您热爱从事计算机相关工作，想自己创业，博曼能为您提供平台，只需要负责提供固定办公地点(住宅商用均可)，有具备计算机相关工作经验，有服务意识和服务热情，不需任何加盟费用就可加入我们立即开展业务。</p>
                <div class="col-xs-12 site-mnglist">
                    <div class="col-xs-12 col-sm-6 col-md-3">
                        <div class="site-mnglist-holder clearfix">
                            <img class="site-mng-img" src="${staticWebsite}img/pub/site-join/member.png" alt="" />
                            <h5>加盟后积累大量企业会员</h5>
                            <p>企业会员数量是开展服务并盈利的基础获取更多的客户是当下互联网思维的核心，博曼通过“免费IT服务”和“IT产品直送”两个核心服务作为切入点，吸引企业成为网站注册会员。<br /></p>
                            <a>查看更多</a>
                        </div>
                    </div>
                    <div class="col-xs-12 col-sm-6 col-md-3">
                        <div class="site-mnglist-holder clearfix">
                            <img class="site-mng-img" src="${staticWebsite}img/pub/site-join/support.png" alt="" />
                            <h5>加盟后博曼提供全程支持</h5>
                            <p>加盟博曼成功设立新服务站点后，博曼提供宣传品和营销工具，开展业务时使用博曼网上业务平台和微信业务平台，挖掘扩展服务需求时博曼提供咨询及技术支持，提供软件开发和工程施工团队。</p>
                            <a>查看更多</a>
                        </div>
                    </div>
                    <div class="col-xs-12 col-sm-6 col-md-3">
                        <div class="site-mnglist-holder clearfix">
                            <img class="site-mng-img" src="${staticWebsite}img/pub/site-join/module.png" alt="" />
                            <h5>加盟后的全新盈利模式</h5>
                            <p>随着会员的增多及扩展服务需求的增多IT产品直送、活动、套餐、培训、项目都能为站点提高长期、稳定的盈利能力比传统的IT外包和电子销售业态更具有核心竞争力。</p>
                            <a>查看更多</a>
                        </div>
                    </div>
                    <div class="col-xs-12 col-sm-6 col-md-3">
                        <div class="site-mnglist-holder clearfix">
                            <img class="site-mng-img" src="${staticWebsite}img/pub/site-join/pro.png" alt="" />
                            <h5>加盟后成为企业信息化专家</h5>
                            <p>博曼的服务范围广泛，涉及到设计，软件、硬件，互联网，财务信息化，电子建设工程等多个领域，客户多种多样的IT需求能够提供丰富的项目经验，博曼内部定期组织内训，分享成功案例知识。</p>
                            <a>查看更多</a>
                        </div>
                    </div>
                </div>
                <h5 class="col-xs-12 join-titile">
                    <span>加盟须知</span>
                </h5>
                <div class="col-xs-12 join-holder join-border">
                    <div class="col-xs-12 col-sm-6 col-md-3 join-info">
                        <i class="fa fa-tag join-icon"></i>
                        <h5>博曼IT服务特点</h5>
                        <p><i class="fa fa-check-square"></i> 免费IT维护</p>
                        <p><i class="fa fa-check-square"></i> IT产品直送</p>
                        <p><i class="fa fa-check-square"></i> 扩展服务-活动</p>
                        <p><i class="fa fa-check-square"></i> 扩展服务-培训</p>
                        <p><i class="fa fa-check-square"></i> 扩展服务-套餐</p>
                        <p><i class="fa fa-check-square"></i> 扩展服务-项目</p>
                    </div>
                    <div class="col-xs-12 col-sm-6 col-md-3 join-info">
                        <i class="fa fa-thumbs-o-up join-icon"></i>
                        <h5>博曼能提供的加盟支持</h5>
                        <p><i class="fa fa-check-square"></i> 站点宣传品及营销工具</p>
                        <p><i class="fa fa-check-square"></i> 微信业务平台</p>
                        <p><i class="fa fa-check-square"></i> 统一的客服中心及售后支持</p>
                        <p><i class="fa fa-check-square"></i> IT产品直送铺货</p>
                        <p><i class="fa fa-check-square"></i> 扩展服务的售前与指导</p>
                        <p><i class="fa fa-check-square"></i> 软件及互联网项目开发团队</p>
                        <p><i class="fa fa-check-square"></i> 电子建设工程施工团队</p>
                        <p><i class="fa fa-check-square"></i> 财务信息化咨询团队</p>
                    </div>
                    <div class="col-xs-12 col-sm-6 col-md-3 join-info">
                        <i class="fa fa-user join-icon"></i>
                        <h5>站点负责人所需知识结构</h5>
                        <p><i class="fa fa-check-square"></i> 有计算机相关从业经验</p>
                        <p><i class="fa fa-check-square"></i> 了解基础网络维护知识</p>
                        <p><i class="fa fa-check-square"></i> 熟悉销售及营销技巧</p>
                        <p><i class="fa fa-check-square"></i> 对互联网发展有一定的认识</p>
                        <p><i class="fa fa-check-square"></i> 熟悉Office软件的使用</p>
                        <p><i class="fa fa-check-square"></i> 对管理和财务有一定的了解</p>
                    </div>
                    <div class="col-xs-12 col-sm-6 col-md-3 join-info">
                        <i class="fa fa-cny join-icon"></i>
                        <h5>加盟所需的前期资金投入</h5>
                        <p><i class="fa fa-check-square"></i> 固定办公地点(民宅商用都可)</p>
                        <p><i class="fa fa-check-square"></i> 电脑、网络等办公设备投入</p>
                        <p><i class="fa fa-check-square"></i> 营销人员及维护人员开支投入</p>
                        <p><i class="fa fa-check-square"></i> 铺货保证金</p>
                        <p><i class="fa fa-check-square"></i> 线下营销成(DM单等)</p>
                    </div>
                </div>
                <div class="col-xs-12 join-holder">
                    <div class="col-xs-12 col-sm-6 col-md-3 join-info">
                        <i class="fa fa-line-chart join-icon"></i>
                        <h5>加盟后前期业务的开展</h5>
                        <p><i class="fa fa-check-square"></i> 通过"免费IT服务"发展企业会员</p>
                        <p><i class="fa fa-check-square"></i> 向会员推荐"IT产品直送"服务</p>
                        <p><i class="fa fa-check-square"></i> 培养客户经理，推广扩展服务</p>
                        <p><i class="fa fa-check-square"></i> 从博曼总部获取所需的资源</p>
                        <p><i class="fa fa-check-square"></i> 定期参加博曼的内部培训</p>
                    </div>
                    <div class="col-xs-12 col-sm-6 col-md-3 join-info">
                        <i class="fa fa-pie-chart join-icon"></i>
                        <h5>加盟后的收益与分配</h5>
                        <p><i class="fa fa-check-square"></i> 加盟后站点财务成本独立核算</p>
                        <p><i class="fa fa-check-square"></i> 站点建账及财务规划由总部指导</p>
                        <p><i class="fa fa-check-square"></i> 所有收益由加盟站点自行分配</p>
                        <p><i class="fa fa-check-square"></i> 向总部获取人力资源需支付成本</p>
                    </div>
                    <div class="col-xs-12 col-sm-6 col-md-3 join-info">
                        <i class="fa fa-file-text join-icon"></i>
                        <h5>加盟流程指导</h5>
                        <p><i class="fa fa-check-square"></i> 下载加盟文档</p>
                        <p><i class="fa fa-check-square"></i> 填写好发送到指定邮箱</p>
                        <p><i class="fa fa-check-square"></i> 等待客服联系面谈</p>
                        <p><i class="fa fa-check-square"></i> 签署加盟协议</p>
                        <p><i class="fa fa-check-square"></i> 根据铺货情况交纳保证金</p>
                    </div>

                    <div class="col-xs-12 col-sm-6 col-md-3">
                        <div class="join-contact">
                            <p><i class="fa fa-phone"></i> 010-88689668 88689968</p>
                            <p><i class="fa fa-qq"></i> 1004646666 1004656666</p>
                            <p><i class="fa fa-envelope-o"></i> info@boman.net</p>
                            <a class="download" target="_blank" href="javascript:;">下载加盟文档</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

