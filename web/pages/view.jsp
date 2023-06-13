<%--
  Created by IntelliJ IDEA.
  User: 奇异果
  Date: 2023/5/31
  Time: 14:13
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/utils/tools.jsp" %>
<!DOCTYPE html>
<html lang="zh">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no"/>
    <title>首页 - 光年(Light Year Admin)后台管理系统模板</title>
    <link rel="icon" href="favicon.ico" type="image/ico">
    <meta name="keywords" content="LightYear,光年,后台模板,后台管理系统,光年HTML模板">
    <meta name="description" content="LightYear是一个基于Bootstrap v3.3.7的后台管理系统的HTML模板。">
    <meta name="author" content="yinqi">
    <link rel="stylesheet" href="https://www.jq22.com/jquery/bootstrap-3.3.4.css">
    <link href="${ctx}/static/bootstrap/css/materialdesignicons.min.css" rel="stylesheet">
    <link href="${ctx}/static/bootstrap/css/style.min.css" rel="stylesheet">
</head>

<body>
<div class="lyear-layout-web">
    <div class="lyear-layout-container">
        <!--左侧导航-->
        <aside class="lyear-layout-sidebar">

            <!-- logo -->
            <div id="logo" class="sidebar-header">
                <a href="index.html"><img src="${ctx}/static/bootstrap/images/logo-sidebar.png" title="LightYear"
                                          alt="LightYear"/></a>
            </div>
            <div class="lyear-layout-sidebar-scroll">

                <nav class="sidebar-main">
                    <ul class="nav nav-drawer">
                        <c:forEach items="${menuList}" var="menu">
                            <li
                                    <c:if test="${not empty menu.list}">
                                        class="nav-item nav-item-has-subnav "

                                    </c:if>
                            >
                                <a href="javascript:void(0)" onclick="jump('${menu.href}','${menu.title}')"><i
                                        class="mdi mdi-menu"></i> ${menu.title}</a>
                                <c:if test="${not empty menu.list}">
                                    <ul class="nav nav-subnav">
                                        <c:forEach items="${menu.list}" var="menulist">
                                            <li
                                                    class="nav-item nav-item-has-subnav "

                                            >
                                                <a href="#!"
                                                   onclick="jump('${menulist.href}','${menulist.title}')">${menulist.title}</a>
                                            </li>
                                        </c:forEach>
                                    </ul>
                                </c:if>
                            </li>
                        </c:forEach>
                    </ul>
                </nav>
            </div>
        </aside>
        <!--End 左侧导航-->

        <!--头部信息-->
        <header class="lyear-layout-header">

            <nav class="navbar navbar-default">
                <div class="topbar">

                    <div class="topbar-left">
                        <div class="lyear-aside-toggler">
                            <span class="lyear-toggler-bar"></span>
                            <span class="lyear-toggler-bar"></span>
                            <span class="lyear-toggler-bar"></span>
                        </div>
                        <span class="navbar-page-title" id="title">aaa </span>
                    </div>

                    <ul class="topbar-right">
                        <li class="dropdown dropdown-profile">
                            <a href="javascript:void(0)" data-toggle="dropdown">
                                <img class="img-avatar img-avatar-48 m-r-10"
                                     src="${ctx}/static/bootstrap/images/users/avatar.jpg" alt="后台系统"/>
                                <span>${userInfo.nickName}<span class="caret"></span></span>
                            </a>
                            <ul class="dropdown-menu dropdown-menu-right">
                                <li><a href="lyear_pages_profile.html"><i class="mdi mdi-account"></i> 个人信息</a></li>
                                <li><a href="lyear_pages_edit_pwd.html"><i class="mdi mdi-lock-outline"></i>
                                    修改密码</a></li>
                                <li><a href="javascript:void(0)"><i class="mdi mdi-delete"></i> 清空缓存</a></li>
                                <li class="divider"></li>
                                <li><a href="lyear_pages_login.html"><i class="mdi mdi-logout-variant"></i> 退出登录</a>
                                </li>
                            </ul>
                        </li>
                        <!--切换主题配色-->
                        <li class="dropdown dropdown-skin">
                            <span data-toggle="dropdown" class="icon-palette"><i class="mdi mdi-palette"></i></span>
                            <ul class="dropdown-menu dropdown-menu-right" data-stopPropagation="true">
                                <li class="drop-title"><p>主题</p></li>
                                <li class="drop-skin-li clearfix">
                  <span class="inverse">
                    <input type="radio" name="site_theme" value="default" id="site_theme_1" checked>
                    <label for="site_theme_1"></label>
                  </span>
                                    <span>
                    <input type="radio" name="site_theme" value="dark" id="site_theme_2">
                    <label for="site_theme_2"></label>
                  </span>
                                    <span>
                    <input type="radio" name="site_theme" value="translucent" id="site_theme_3">
                    <label for="site_theme_3"></label>
                  </span>
                                </li>
                                <li class="drop-title"><p>LOGO</p></li>
                                <li class="drop-skin-li clearfix">
                  <span class="inverse">
                    <input type="radio" name="logo_bg" value="default" id="logo_bg_1" checked>
                    <label for="logo_bg_1"></label>
                  </span>
                                    <span>
                    <input type="radio" name="logo_bg" value="color_2" id="logo_bg_2">
                    <label for="logo_bg_2"></label>
                  </span>
                                    <span>
                    <input type="radio" name="logo_bg" value="color_3" id="logo_bg_3">
                    <label for="logo_bg_3"></label>
                  </span>
                                    <span>
                    <input type="radio" name="logo_bg" value="color_4" id="logo_bg_4">
                    <label for="logo_bg_4"></label>
                  </span>
                                    <span>
                    <input type="radio" name="logo_bg" value="color_5" id="logo_bg_5">
                    <label for="logo_bg_5"></label>
                  </span>
                                    <span>
                    <input type="radio" name="logo_bg" value="color_6" id="logo_bg_6">
                    <label for="logo_bg_6"></label>
                  </span>
                                    <span>
                    <input type="radio" name="logo_bg" value="color_7" id="logo_bg_7">
                    <label for="logo_bg_7"></label>
                  </span>
                                    <span>
                    <input type="radio" name="logo_bg" value="color_8" id="logo_bg_8">
                    <label for="logo_bg_8"></label>
                  </span>
                                </li>
                                <li class="drop-title"><p>头部</p></li>
                                <li class="drop-skin-li clearfix">
                  <span class="inverse">
                    <input type="radio" name="header_bg" value="default" id="header_bg_1" checked>
                    <label for="header_bg_1"></label>
                  </span>
                                    <span>
                    <input type="radio" name="header_bg" value="color_2" id="header_bg_2">
                    <label for="header_bg_2"></label>
                  </span>
                                    <span>
                    <input type="radio" name="header_bg" value="color_3" id="header_bg_3">
                    <label for="header_bg_3"></label>
                  </span>
                                    <span>
                    <input type="radio" name="header_bg" value="color_4" id="header_bg_4">
                    <label for="header_bg_4"></label>
                  </span>
                                    <span>
                    <input type="radio" name="header_bg" value="color_5" id="header_bg_5">
                    <label for="header_bg_5"></label>
                  </span>
                                    <span>
                    <input type="radio" name="header_bg" value="color_6" id="header_bg_6">
                    <label for="header_bg_6"></label>
                  </span>
                                    <span>
                    <input type="radio" name="header_bg" value="color_7" id="header_bg_7">
                    <label for="header_bg_7"></label>
                  </span>
                                    <span>
                    <input type="radio" name="header_bg" value="color_8" id="header_bg_8">
                    <label for="header_bg_8"></label>
                  </span>
                                </li>
                                <li class="drop-title"><p>侧边栏</p></li>
                                <li class="drop-skin-li clearfix">
                  <span class="inverse">
                    <input type="radio" name="sidebar_bg" value="default" id="sidebar_bg_1" checked>
                    <label for="sidebar_bg_1"></label>
                  </span>
                                    <span>
                    <input type="radio" name="sidebar_bg" value="color_2" id="sidebar_bg_2">
                    <label for="sidebar_bg_2"></label>
                  </span>
                                    <span>
                    <input type="radio" name="sidebar_bg" value="color_3" id="sidebar_bg_3">
                    <label for="sidebar_bg_3"></label>
                  </span>
                                    <span>
                    <input type="radio" name="sidebar_bg" value="color_4" id="sidebar_bg_4">
                    <label for="sidebar_bg_4"></label>
                  </span>
                                    <span>
                    <input type="radio" name="sidebar_bg" value="color_5" id="sidebar_bg_5">
                    <label for="sidebar_bg_5"></label>
                  </span>
                                    <span>
                    <input type="radio" name="sidebar_bg" value="color_6" id="sidebar_bg_6">
                    <label for="sidebar_bg_6"></label>
                  </span>
                                    <span>
                    <input type="radio" name="sidebar_bg" value="color_7" id="sidebar_bg_7">
                    <label for="sidebar_bg_7"></label>
                  </span>
                                    <input type="radio" name="sidebar_bg" value="color_8" id="sidebar_bg_8">
                                    <label for="sidebar_bg_8"></label>
                                    </span>
                                </li>
                            </ul>
                        </li>
                        <!--切换主题配色-->
                    </ul>

                </div>
            </nav>

        </header>
        <!--End 头部信息-->

        <!--页面主要内容-->
        <div id="content"></div>


        <!--End 页面主要内容-->

    </div>

    <script src="https://www.jq22.com/jquery/jquery-1.10.2.js"></script>
    <script src="https://www.jq22.com/jquery/bootstrap-3.3.4.js"></script>
    <script type="text/javascript" src="${ctx}/static/bootstrap/js/perfect-scrollbar.min.js"></script>
    <script type="text/javascript" src="${ctx}/static/bootstrap/js/main.min.js"></script>
    <!--图表插件-->
    <script type="text/javascript" src="https://s3.pstatp.com/cdn/expire-1-M/Chart.js/2.7.0/Chart.min.js"></script>
    <script type="text/javascript">


        //页面刚加载完后显示主页内容
        onload = function () {

            jump("menu/home");
            document.getElementById("title").innerText = "首页";
        }


        //引入内容
        //点击后转发到对应的页面
        function jump(e, t, keyword) {
            if (typeof (keyword) == "undefined") {
                keyword = "";
            }
            if (e) {
                $.ajax({

                    //发送一个异步请求，地址为url
                    url: "${ctx}/api/" + e,

                    type: "post",
                    data: {
                        keyword: keyword
                    },
                    //res是接受的数据，现在是接收了文本
                    success(res) {

                        //将文本数据转为html，并插入到第234行的div中
                        document.getElementById("content").innerHTML = res;

                        //html插入完之后再让对应的js介入渲染，但这个homejs只适用于首页部分，所以需要判断
                        if (e == "menu/home") {
                            homejs();
                        }
                    }
                })
            }
            //把头部栏的文字替换掉
            document.getElementById("title").innerText = t;
        }

        //模糊查询
        function obscureMenu() {
            let mo = document.getElementById("mo").value;

            jump('menu/table', '菜单管理', mo);
        }


        function enableMenu(s) {
            var url;
            if (s < 2) {
                url = "${ctx}/api/menu/enableMenus";
            } else {
                url = "${ctx}/api/menu/deleteMenu";
            }
            let checkedIds = [];
            //先拿到被选中的复选框
            var ids = document.getElementsByName("ids[]");
            for (item of ids) {
                if (item.checked) {
                    checkedIds += item.value + ",";
                }
            }
            if (checkedIds.length > 0) {
                $.ajax({
                    url: url,
                    type: "post",
                    dataType: "json",
                    data: {
                        ids: checkedIds,
                        sta: s
                    }, success(res) {
                        if (res.code == 200) {
                            jump('menu/table', '菜单管理')
                        } else {
                            alert(res.msg)
                        }
                    }
                })
            } else {
                alert("请先选择数据")
            }
        }

        //新增修改的标识 1新增，其它修改
        var type;

        function addMenu() {
            type = 1;
            //重置表单
            document.getElementById("menuForm").reset();
        }

        // 修改|回显表单
        function editMenu(id) {
            type = 2;
            document.getElementById("menuForm").reset();
            $.ajax({
                url: "${ctx}/api/menu/getMenu",
                type: "get",
                dataType: "json",
                data: {
                    id: id
                },
                success(res) {
                    if (res.code == 200) {
                        //回显表单
                        document.getElementById("id").value = res.data.id;
                        document.getElementById("title1").value = res.data.title;
                        document.getElementById("icon").value = res.data.icon;
                        document.getElementById("href").value = res.data.href;
                    } else {
                        alert(res.msg)
                        //关闭模态框
                        document.getElementById("close").click();

                    }
                }


            })

        }


        function saveMenu() {
            if (checkMenu()) {
                let id = document.getElementById("id").value;
                let title1 = document.getElementById("title1").value;
                let icon = document.getElementById("icon").value;
                let href = document.getElementById("href").value;
                let pId = document.getElementById("pid").value;

                let url;
                if (type == 1) {
                    url = "${ctx}/api/menu/addMenu";
                } else {
                    url = "${ctx}/api/menu/edit";
                }
                $.ajax({
                    url: url,
                    type: "post",
                    dataType: "json",
                    data: {
                        id: id,
                        title1: title1,
                        icon: icon,
                        href: href,
                        pId: pId
                    }, success(res) {
                        if (res.code == 200) {
                            //成功
                            location.reload()
                            // jump('menu/table','菜单管理')
                        }
                    }
                })
            } else {
                //错误提示
                alert("数据不能为空")
            }

        }

        function checkMenu() {
            if (type != 1) {
                let id = document.getElementById("id").value;
                if (id == null || id == "") {
                    return false;

                }
            }

            let title1 = document.getElementById("title1").value;
            if (title1 == null || title1 == "") {
                return false;

            }

            return true;
        }

        /* function deleteMenu(id){
             if (confirm("确认删除吗？")) {
                 $.ajax({
                     url: "${ctx}/api/menu/deleteMenu",
                type:"post",
                dataType:"json",
                data:{
                    id:id
                },success(res){
                    if (res.code==200){
                        jump('menu/table','菜单管理')

                    }else {
                        alert(res.mag);
                    }
                }
            })
        }
    }*/

        function homejs() {
            $(document).ready(function (e) {
                var $dashChartBarsCnt = jQuery('.js-chartjs-bars')[0].getContext('2d'),
                    $dashChartLinesCnt = jQuery('.js-chartjs-lines')[0].getContext('2d');

                var $dashChartBarsData = {
                    labels: ['周一', '周二', '周三', '周四', '周五', '周六', '周日'],
                    datasets: [
                        {
                            label: '注册用户',
                            borderWidth: 1,
                            borderColor: 'rgba(0,0,0,0)',
                            backgroundColor: 'rgba(51,202,185,0.5)',
                            hoverBackgroundColor: "rgba(51,202,185,0.7)",
                            hoverBorderColor: "rgba(0,0,0,0)",
                            data: [2500, 1500, 1200, 3200, 4800, 3500, 1500]
                        }
                    ]
                };
                var $dashChartLinesData = {
                    labels: ['2003', '2004', '2005', '2006', '2007', '2008', '2009', '2010', '2011', '2012', '2013', '2014'],
                    datasets: [
                        {
                            label: '交易资金',
                            data: [20, 25, 40, 30, 45, 40, 55, 40, 48, 40, 42, 50],
                            borderColor: '#358ed7',
                            backgroundColor: 'rgba(53, 142, 215, 0.175)',
                            borderWidth: 1,
                            fill: false,
                            lineTension: 0.5
                        }
                    ]
                };
                new Chart($dashChartBarsCnt, {
                    type: 'bar',
                    data: $dashChartBarsData
                });

                var myLineChart = new Chart($dashChartLinesCnt, {
                    type: 'line',
                    data: $dashChartLinesData,
                });
            })
        }


    </script>
    <%--    userjs--%>
    <script type="text/javascript">
        var type;

        function addUser() {
            type = 1;
            //重置表单
            document.getElementById("userForm").reset();
        }

        function editUser(id) {
            type = 2;
            document.getElementById("userForm").reset();
            //将id回显到隐藏输入框中
            document.getElementById("id").value = id;
            $.ajax({
                url: "${ctx}/api/user/getUser",
                type: "get",
                dataType: "json",
                data: {
                    id: id
                },
                success(res) {
                    if (res.code == 200) {
                        //回显表单
                        document.getElementById("userName").value = res.data.userName;
                        document.getElementById("nickName").value = res.data.nickName;
                        document.getElementById("password").value = res.data.password;
                        document.getElementById("tel").value = res.data.tel;
                        document.getElementById("address").value = res.data.address;
                        document.getElementById("sex").value = res.data.sex;
                    } else {
                        alert(res.msg)
                        //关闭模态框
                        document.getElementById("close").click();

                    }
                }


            })

        }

        // 保存用户
        function saveUser() {
            if (checkUser()) {
                let id = document.getElementById("id").value;
                let userName = document.getElementById("userName").value;
                let nickName = document.getElementById("nickName").value;
                let tel = document.getElementById("tel").value;
                let address = document.getElementById("address").value;
                let sex = document.getElementById("sex").value;
                let password = document.getElementById("password").value;

                let url;
                if (type == 1) {
                    url = "${ctx}/api/user/adduser";
                } else {
                    url = "${ctx}/api/user/edit";
                }
                $.ajax({
                    url: url,
                    type: "post",
                    dataType: "json",
                    data: {
                        id: id,
                        userName: userName,
                        password: password,
                        nickName: nickName,
                        tel: tel,
                        address: address,
                        sex: sex
                    }, success(res) {
                        if (res.code == 200) {
                            //成功
                            location.reload()
                            // jump('user/manage','用户信息管理');
                        } else {
                            document.getElementById("close").click();
                            alert(res.msg)
                        }
                    }
                })
            } else {
                //错误提示
                alert("数据不能为空")
            }

        }

        //检查
        function checkUser() {
            if (type != 1) {
                let id = document.getElementById("id").value;
                if (id == null || id == "") {
                    return false;

                }
            }

            let userName = document.getElementById("userName").value;
            if (userName == null || userName == "") {
                return false;

            }

            return true;
        }


        function enableUser(s) {
            var url;
            if (s < 2) {
                url = "${ctx}/api/user/enableUsers";
            } else {
                url = "${ctx}/api/user/deleteUser";
            }
            let checkedIds = [];
            //先拿到被选中的复选框
            var ids = document.getElementsByName("ids[]");
            for (item of ids) {
                if (item.checked) {
                    checkedIds += item.value + ",";
                }
            }
            if (checkedIds.length > 0) {
                $.ajax({
                    url: url,
                    type: "post",
                    dataType: "json",
                    data: {
                        ids: checkedIds,
                        sta: s
                    }, success(res) {
                        if (res.code == 200) {
                            jump('user/manage', '用户信息管理');
                        } else {
                            alert(res.msg);
                        }
                    }
                })
            } else {
                alert("请先选择数据")
            }
        }

        //模糊查询
        function obscureUser() {
            let mo = document.getElementById("mo").value;
            jump('user/manage', '用户信息管理', mo);
        }
    </script>


    <%--    商家js--%>
    <script type="text/javascript ">
        var type;

        function addBus() {
            type = 1
            //     重置表单
            document.getElementById("busFrom").reset();
        }

        function editBus(id) {
            type = 2;
            document.getElementById("id").value = id;
            $.ajax({
                url: "${ctx}/api/bus/getBus",
                type: "post",
                dataType: "json",
                data: {
                    id: id
                },
                success(res) {
                    if (res.code == 200) {
                        //回显表单
                        document.getElementById("name").value = res.data.name;
                        document.getElementById("password").value = res.password;
                        document.getElementById("tel").value = res.tel;
                        document.getElementById("address").value = res.address;
                    } else {
                        alert(res.msg)
                        //关闭状态栏
                        document.getElementById("close").click();
                    }
                }
            })
        }

        function checkBus() {
            if (type != 1) {
                let id = document.getElementById("id").value;
                if (id == null || id == "") {
                    return false;
                }
            }
            let name = document.getElementById("name").value;
            if (name == null || name == "") {
                return false;
            }
            return true;
        }

        function saveBus() {
            if (checkBus()) {
                let id = document.getElementById("id").value;
                let name = document.getElementById("name").value;
                let password = document.getElementById("password").value;
                let tel = document.getElementById("tel").value;
                let address = document.getElementById("address").value;

                let url;
                if (type == 1) {
                    url = "${ctx}/api/bus/addBus";
                } else {
                    url = "${ctx}/api/bus/editBus"
                }
                $.ajax({
                    url: url,
                    type: "post",
                    dataType: "json",
                    data: {
                        id: id,
                        name: name,
                        password: password,
                        tel: tel,
                        address: address,
                    }, success(res) {
                        if (res.code == 200) {
                            //成功
                            Location.reload()
                            //jump('user/manage','用户信息管理');
                        } else {
                            document.getElementById("close").click();
                            alert(res.msg)
                        }
                    }


                })
            }else{
                alert("请先选择数据")
            }
        }

        // 修改状态
        function enableBus(s) {
            var url;
            if (s < 2) {
                url = "${ctx}/api/bus/enableBus";
            } else {
                url = "${ctx}/api/bus/deleteBus";
            }
            let checkIds = [];
            var ids = document.getElementsByName("ids[]");
            for (item of ids) {
                if (item.checked) {
                    checkIds += item.value + ",";
                }
            }
            if (checkIds.length > 0) {
                $.ajax({
                    url: url,
                    type: "post",
                    dataType: "json",
                    data: {
                        ids: checkIds,
                        sta: s,
                    }, success(res) {
                        if (res.code == 200){
                            jump('bus/manage','用户信息管理');
                        }else {
                            alert(res.msg);
                        }
                            }
                })
            }
        }


    </script>


    <script type="text/javascript">
        $(function () {
            $('.search-bar .dropdown-menu a').click(function () {
                var field = $(this).data('field') || '';
                $('#search-field').val(field);
                $('#search-btn').html($(this).text() + ' <span class="caret"></span>');
            });
        });
    </script>


</body>
</html>
