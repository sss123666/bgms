<%--
  Created by IntelliJ IDEA.
  User: 奇异果
  Date: 2023/6/5
  Time: 16:45
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/utils/tools.jsp" %>

<main class="lyear-layout-content">

    <div class="container-fluid">

        <div class="row">
            <div class="col-lg-12">
                <div class="card">
                    <div class="card-toolbar clearfix">
                        <form class="pull-right search-bar" method="get" action="javascript:obscureUser()" role="form">
                            <div class="input-group">
                                <div class="input-group-btn">
                                    <input type="hidden" name="search_field" id="search-field" value="title">
                                    <button class="btn btn-default dropdown-toggle" id="search-btn"
                                            data-toggle="dropdown" type="button" aria-haspopup="true"
                                            aria-expanded="false">
                                        商家名 <span class="caret"></span>
                                    </button>

                                </div>
                                <input type="text" class="form-control" value="${keyword}" name="keyword"
                                       placeholder="请输入名称"id="mo">
                            </div>
                        </form>
                        <div class="toolbar-btn-action">
                            <a class="btn btn-primary m-r-5" href="#!"
                               data-toggle="modal" data-target="#editMenu"
                            onclick="addBus()"
                            ><i class="mdi mdi-plus"></i> 新增</a>
                            <a class="btn btn-success m-r-5" href="#!"
<%--                               修改状态--%>
                               onclick="enableBus(1)"
                            ><i class="mdi mdi-check"></i> 启用</a>
                            <a class="btn btn-warning m-r-5" href="#!"
                               onclick="enableBus(0)"
                            ><i class="mdi mdi-block-helper"></i> 禁用</a>
                            <a class="btn btn-danger" href="#!"
                               onclick="enableBus(2)"
                            ><i class="mdi mdi-window-close"></i> 删除</a>
                        </div>
                    </div>
                    <div class="card-body">

                        <div class="table-responsive">
                            <table class="table table-bordered">
                                <thead>
                                <tr>
                                    <th>
                                        <label class="lyear-checkbox checkbox-primary">
                                            <input type="checkbox" id="check-all"><span></span>
                                        </label>
                                    </th>
                                    <th>编号</th>
                                    <th>商家名</th>
                                    <th>密码</th>
                                    <th>手机号</th>
                                    <th>地址</th>
                                    <th>状态</th>

                                </tr>
                                </thead>
                                <tbody>

                                <c:forEach var="bus" items="${busList}" varStatus="status">

                                    <tr>
                                        <td>
                                            <label class="lyear-checkbox checkbox-primary">
                                                <input type="checkbox" name="ids[]" value="${bus.id}"><span></span>
                                            </label>
                                        </td>
                                        <td>${bus.id}</td>
                                        <td>${bus.name}</td>
                                        <td>${bus.password}</td>
                                        <td>${bus.tel}</td>
                                        <td>${bus.address}</td>

                                        <td>
                                            <c:if test="${bus.status==1}">
                                                <font class="text-success">正常</font>
                                            </c:if>
                                            <c:if test="${bus.status!=1}">
                                                <font class="text-error">无效</font>
                                            </c:if>

                                        </td>

<%--                                        修改按钮--%>
                                        <td>
                                            <div class="btn-group">
                                                <a data-toggle="modal" data-target="#editMenu" class="btn btn-xs btn-default" href="#!" title="编辑"
                                                   data-toggle="tooltip"
                                                onclick="editBus(${bus.id})"
                                                ><i class="mdi mdi-pencil"></i></a>
                                              <%--  <a class="btn btn-xs btn-default" href="#!" title="删除"
                                                   data-toggle="tooltip"
                                                onclick="deleteMenu(${menu.id})"
                                                ><i class="mdi mdi-window-close"></i></a>--%>
                                            </div>
                                        </td>
                                    </tr>


                                </c:forEach>


                                </tbody>
                            </table>

                            <form id="userForm">
                            <div class="modal fade" id="editMenu" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel">
                                <div class="modal-dialog" role="document">
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true" id="close">&times;</span></button>
                                            <h4 class="modal-title" id="exampleModalLabel">修改商家</h4>
                                        </div>
                                        <div class="modal-body">
                                            <form>
                                                <input type="hidden" id="id">
                                                <div class="form-group">
                                                    <label for="name" class="control-label">商家名</label>
                                                    <input type="text" class="form-control" id="name">
                                                </div>
                                                <div class="form-group">
                                                    <label for="password" class="control-label">密码</label>
                                                    <input type="text" class="form-control" id="password">
                                                </div>
                                                <div class="form-group">
                                                    <label for="tel" class="control-label">电话</label>
                                                    <input type="text" class="form-control" id="tel">
                                                </div>
                                                <div class="form-group">
                                                    <label for="address" class="control-label">地址</label>
                                                    <input type="text" class="form-control" id="address">
                                                </div>


<%--                                                <div class="form-group">--%>
<%--                                                    <label class="control-label" for="pid">父级菜单</label>--%>

<%--                                                        <select class="form-control" id="pid" name="example-select" size="1">--%>
<%--                                                            <option value="-1">请选择</option>--%>
<%--                                                           <c:forEach var="pMenu" items="${firstMenu}">--%>
<%--                                                               <option value="${pMenu.id}">${pMenu.title}</option>--%>
<%--                                                           </c:forEach>--%>
<%--                                                        </select>--%>
<%--                                                    </div>--%>
                                            </form>
                                        </div>
                                        <div class="modal-footer">
                                            <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                                            <button type="button" class="btn btn-primary" onclick="saveBus()">保存</button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            </form>


                        </div>
                        <%-- <ul class="pagination">
                           <li class="disabled"><span>«</span></li>
                           <li class="active"><span>1</span></li>
                           <li><a href="#1">2</a></li>
                           <li><a href="#1">3</a></li>
                           <li><a href="#1">4</a></li>
                           <li><a href="#1">5</a></li>
                           <li><a href="#1">6</a></li>
                           <li><a href="#1">7</a></li>
                           <li><a href="#1">8</a></li>
                           <li class="disabled"><span>...</span></li>
                           <li><a href="#!">14452</a></li>
                           <li><a href="#!">14453</a></li>
                           <li><a href="#!">»</a></li>
                         </ul>--%>

                   <%--     <div>
                            当前第${pageIndex}页:共${pageCount}页 总记录数:${count}记录 <br>
                            跳转到<input type="number" id="page" onkeyup="page(event)">页
                            <div style="display: flex">
                                <button id="home_page" onclick="home(1)">首页</button>
                                <button id="up" onclick="paging(1)">上一页</button>

                                <div id="skip_box">
                                </div>

                                <button id="down" onclick="paging(2)">下一页</button>
                                <button id="nohome" onclick="home(2)">尾页</button>
                            </div>
                        </div>--%>

                    </div>
                </div>
            </div>

        </div>

    </div>

</main>

