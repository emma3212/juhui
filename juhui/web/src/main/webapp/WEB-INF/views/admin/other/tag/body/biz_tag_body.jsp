<%@ page contentType="text/html; charset=UTF-8" %>
<div class="holder">
    <div class="content">
      <h1>查看标签列表</h1>
      <div class="crumb" id="crumb">
          <ul class="clearfix">
              <li>
                  <i class="icon icon-home"></i>
                  <a>管理员面板</a>
                  <i class="icon-angle-right"></i>
              </li>
              <li>
                  <a>内容管理</a>
                  <i class="icon-angle-right"></i>
              </li>
              <li>
                  <a>查看标签列表</a>
              </li>
          </ul>
        </div>
       <div class="box box-blue" data-fold="fold">
           <div class="box-title clearfix">
               <span><i class="fa fa-table"></i>查看标签列表</span>
           </div>
           <div class="box-container clearfix">
              <div class="row-fluid control-group">
                  <div class="col span50">
                      <button class="btn-big btn-green btn-back-add J_add">添加标签<i class="fa fa-plus"></i></button>
                  </div>
              </div>
              <form class="J_operForm">
                <table class="table-responsive">
                   <thead>
                       <tr>
                           <th class="table-width-30">标签名称</th>
                           <th class="table-width-30">标签链接</th>
                           <th class="table-width-30">排序</th>
                           <th class="min-width">编辑</th>
                           <th class="min-width">删除</th>
                       </tr>
                   </thead>
                   <tbody id="J_template"></tbody>
               </table>
              </form>
              <div id="J_pagination"></div>
           </div>
       </div>

    </div>
</div>