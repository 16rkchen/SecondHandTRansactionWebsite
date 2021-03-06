<%@ page import="Publish.Items" %><%--
  Created by IntelliJ IDEA.
  User: fcncd
  Date: 2018/11/29
  Time: 23:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:useBean id="currentItemBean" class="bean.ItemBean" scope="application"/>
<jsp:useBean id="currentUserBean" class="bean.UserBean" scope="session"/>
<%
    int itemId = Integer.parseInt( request.getParameter("itemId"));
    String imagePath = "/images/homePage/recommendItems/goods_"+ request.getParameter("recommendImage") +".jpg";
    Items items = currentItemBean.getItem(itemId);
    session.setAttribute("seller",items.getSeller());
    session.setAttribute("buyer",currentUserBean.getUsername());
    session.setAttribute("itemId", Integer.toString(itemId));

%>
<html>
<head>
    <meta charset="utf-8" />
    <title>商品查看</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
    <meta content="A fully featured admin theme which can be used to build CRM, CMS, etc." name="description" />
    <meta content="Coderthemes" name="author" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <link rel="stylesheet" href="/stylesheets/style.css">
    <!-- App favicon -->
    <link rel="shortcut icon" href="/assets/images/favicon.ico">

    <!-- App css -->
    <link href="/assets/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <link href="/assets/css/icons.css" rel="stylesheet" type="text/css" />
    <link href="/assets/css/style.css" rel="stylesheet" type="text/css" />
    <!-- Sweet Alert css -->
    <link href="/plugins/sweet-alert/sweetalert2.min.css" rel="stylesheet" type="text/css" />
    <script src="/assets/js/modernizr.min.js"></script>
    <!-- Sweet Alert css -->
    <link href="/plugins/sweet-alert/sweetalert2.min.css" rel="stylesheet" type="text/css" />
</head>

<body>

<!-- Navigation Bar-->
<header id="topnav">
    <div class="topbar-main">
        <div class="container-fluid">
            <!-- Logo container-->
            <div class="logo">
                <a href="/main.jsp" class="logo">
                    <span class="logo-large"><i class="mdi mdi-cart-outline"></i> 头大校内二手交易</span>
                </a>
            </div>
            <!-- End Logo container-->


            <div class="menu-extras topbar-custom">

                <ul class="list-unstyled topbar-right-menu float-right mb-0">

                    <li class="menu-item">
                        <!-- Mobile menu toggle-->
                        <a class="navbar-toggle nav-link">
                            <div class="lines">
                                <span></span>
                                <span></span>
                                <span></span>
                            </div>
                        </a>
                        <!-- End mobile menu toggle-->
                    </li>

                    <li class="dropdown notification-list">
                        <a class="nav-link dropdown-toggle arrow-none waves-effect" data-toggle="dropdown" href="#" role="button"
                           aria-haspopup="false" aria-expanded="false">
                            <i class="fi-speech-bubble noti-icon"></i>
                            <span class="badge badge-danger badge-pill noti-icon-badge">6</span>
                        </a>
                        <div class="dropdown-menu dropdown-menu-right dropdown-lg">

                            <!-- item-->
                            <div class="dropdown-item noti-title">
                                <h6 class="m-0"><span class="float-right"><a href="" class="text-dark"><small>清除</small></a> </span>消息</h6>
                            </div>

                            <div class="slimscroll" style="max-height: 230px;">
                                <!-- item-->
                                <a href="/users/message" class="dropdown-item notify-item">
                                    <div class="notify-icon"><img src="assets/images/users/avatar-2.jpg" class="img-fluid rounded-circle" alt="" /> </div>
                                    <p class="notify-details">Cristina Pride</p>
                                    <p class="text-muted font-13 mb-0 user-msg">Hi, How are you? What about our next meeting</p>
                                </a>

                                <!-- item-->
                                <a href="/users/message" class="dropdown-item notify-item">
                                    <div class="notify-icon"><img src="assets/images/users/avatar-3.jpg" class="img-fluid rounded-circle" alt="" /> </div>
                                    <p class="notify-details">Sam Garret</p>
                                    <p class="text-muted font-13 mb-0 user-msg">Yeah everything is fine</p>
                                </a>

                                <!-- item-->
                                <a href="/users/message" class="dropdown-item notify-item">
                                    <div class="notify-icon"><img src="assets/images/users/avatar-4.jpg" class="img-fluid rounded-circle" alt="" /> </div>
                                    <p class="notify-details">Karen Robinson</p>
                                    <p class="text-muted font-13 mb-0 user-msg">Wow that's great</p>
                                </a>

                                <!-- item-->
                                <a href="/users/message" class="dropdown-item notify-item">
                                    <div class="notify-icon"><img src="assets/images/users/avatar-5.jpg" class="img-fluid rounded-circle" alt="" /> </div>
                                    <p class="notify-details">Sherry Marshall</p>
                                    <p class="text-muted font-13 mb-0 user-msg">Hi, How are you? What about our next meeting</p>
                                </a>

                                <!-- item-->
                                <a href="/users/message" class="dropdown-item notify-item">
                                    <div class="notify-icon"><img src="assets/images/users/avatar-6.jpg" class="img-fluid rounded-circle" alt="" /> </div>
                                    <p class="notify-details">Shawn Millard</p>
                                    <p class="text-muted font-13 mb-0 user-msg">Yeah everything is fine</p>
                                </a>
                            </div>

                            <!-- All-->
                            <a href="/users/message" class="dropdown-item text-center text-primary notify-item notify-all">
                                所有消息 <i class="fi-arrow-right"></i>
                            </a>

                        </div>
                    </li>

                    <li class="dropdown notification-list">
                        <a class="nav-link dropdown-toggle waves-effect nav-user" data-toggle="dropdown" href="#" role="button"
                           aria-haspopup="false" aria-expanded="false">
                            <img src="/images/lzn.jpg" alt="user" class="rounded-circle"> <span class="ml-1 pro-user-name"><%= currentUserBean.getUsername()%> <i class="mdi mdi-chevron-down"></i> </span>
                        </a>
                        <div class="dropdown-menu dropdown-menu-right profile-dropdown ">
                            <!-- item-->
                            <div class="dropdown-item noti-title">
                                <h6 class="text-overflow m-0">Welcome !</h6>
                            </div>

                            <!-- item-->
                            <a href="/users/profile" class="dropdown-item notify-item">
                                <i class="fi-head"></i> <span>我的主页</span>
                            </a>

                            <!-- item-->
                            <a href="/users/for_sale" class="dropdown-item notify-item">
                                <i class="fi-file-subtract"></i> <span>我发布的</span>
                            </a>

                            <!-- item-->
                            <a href="/users/what_I_sell" class="dropdown-item notify-item">
                                <i class="fi-outbox"></i> <span>我卖出的</span>
                            </a>

                            <!-- item-->
                            <a href="/users/what_I_bought" class="dropdown-item notify-item">
                                <i class="fi-inbox"></i> <span>我买到的</span>
                            </a>

                            <!-- item-->
                            <a href="javascript:void(0);" class="dropdown-item notify-item">
                                <i class="fi-power"></i> <span>注销</span>
                            </a>

                        </div>
                    </li>
                </ul>
            </div>
            <!-- end menu-extras -->

            <div class="clearfix"></div>

        </div> <!-- end container -->
    </div>
    <!-- end topbar-main -->

    <div class="navbar-custom">
        <div class="container-fluid">
            <div id="navigation">
                <!-- Navigation Menu-->
                <form action="">
                    <ul class="navigation-menu p-2">
                        <li style="width: 25%;">
                            <input class="form-control" type="text" placeholder="搜索你想要的东西">
                        </li>
                        <li>
                            <button type="submit" class="btn btn-light waves-effect waves-primary"  style="zoom: 0.95;margin-bottom: 2px;" > <i class="fa fa-search m-r-5"></i> <span>搜索</span> </button>
                        </li>
                    </ul>
                </form>
                <!-- End navigation menu -->
            </div> <!-- end #navigation -->
        </div> <!-- end container -->
    </div> <!-- end navbar-custom -->
</header>
<!-- End Navigation Bar-->


<div class="wrapper">
    <div class="container-fluid">
        <div class="row mt-4">
            <div class="col-12 row">
                <div class="col-8 offset-2 card-box row">
                    <div class="goods-item col-6 mb-0">
                        <div class="picframe">
                            <div class="content" style="overflow: hidden;">
                                <img src="<%= imagePath%>" alt="" class="goods-cp img-thumbnail border-0" style="top: 50%;left: 50%;">
                            </div>
                        </div>
                    </div>
                    <div class="col-6" style="position: relative;">
                        <h2><%= items.getGoodName()%></h2>
                        <span class="font-18">￥<%= items.getItemPrice()%></span>
                        <p class="text-right text-muted">发布于： 2018-11-24 11:12</p>
                        <div class="text-right">
                            <div class="seller-info" title="联系卖家">
                                <img src="/images/lzn.jpg" alt="user" class="rounded-circle" style="width: 20px;height: 20px;">
                                <span class="seller-nickname text-muted ml-1">
                                    <a href="/sendMessageServlet?type=itemDialogue"><%= items.getSeller()%></a>
                                    <i class="mdi mdi-message-processing"></i>
                                </span>
                            </div>
                        </div>

                        <div style="position: absolute;bottom: 0;">
                            <button class="btn btn-outline-primary waves-effect waves-light btn-sm" onclick="place_order()"><i class="mdi mdi-cash-usd"></i> 立即购买</button>
                            <button class="btn btn-outline-secondary waves-effect waves-light btn-sm"><i class="mdi mdi-star-outline"></i> 加入收藏夹</button>
                            <button class="btn btn-outline-dark waves-effect waves-light btn-sm"><i class="mdi mdi-cart-outline"></i> 添加到购物车</button>
                        </div>
                    </div>
                    <div class="col-12 mt-5">
                        <h4>商品描述：</h4>
                        <span>xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx</span>
                        <h4>商品图片：</h4>

                    </div>
                </div>

            </div>
        </div>
    </div> <!-- end container -->
</div>
<!-- end wrapper -->


<!-- Footer -->
<footer class="footer">
    <div class="container">
        <div class="row">
            <div class="col-12 text-center">
                这里是页脚
            </div>
        </div>
    </div>
</footer>
<!-- End Footer -->
<!-- 阻止上传表单之后页面跳转 -->
<iframe name="ajaxFrame" style="display: none;"></iframe>

<!-- jQuery  -->
<script src="/assets/js/jquery.min.js"></script>
<script src="/assets/js/popper.min.js"></script>
<script src="/assets/js/bootstrap.min.js"></script>
<script src="/assets/js/waves.js"></script>
<script src="/assets/js/jquery.slimscroll.js"></script>

<!-- App js -->
<script src="/assets/js/jquery.core.js"></script>
<script src="/assets/js/jquery.app.js"></script>
<!-- getVerificationCode -->
<script src="/javascripts/verificationCode.js"></script>
<!-- Sweet Alert Js  -->
<script src="/plugins/sweet-alert/sweetalert2.min.js"></script>
<script src="/assets/pages/jquery.sweet-alert.init.js"></script>
<script src="/assets/js/modernizr.min.js"></script>
<!-- Sweet Alert Js  -->
<script src="../plugins/sweet-alert/sweetalert2.min.js"></script>
<script src="assets/pages/jquery.sweet-alert.init.js"></script>
<!-- Parsley js -->
<script type="text/javascript" src="/plugins/parsleyjs/parsley.min.js"></script>
<script>
    var initPicSize = function(){
        $('.picframe').height($('.goods-item').width()*0.7);
        $('.content').height($('.goods-item').width()*0.7 - 10)
    }
    $(document).ready(() => {
        initPicSize()

        place_order = function(){
            createCode();
            setTimeout(() =>{
                $('form').parsley();
        }, 200)
            swal({
                title: '请填写信息',
                showCancelButton: true,
                confirmButtonText: '下单',
                cancelButtonText: '取消',
                showLoaderOnConfirm: true,
                html: '\
                            <form class="form-group" action="${pageContext.request.contextPath}/OrderServlet?method=buy" method="post" target="ajaxFrame" id="order">\
                                收货地址：<input type="text" class="form-control" name="address" required  style="padding-top: 5px;padding-bottom: 5px;" placeholder="填写您的收货地址" data-parsley-required-message="收货地址不能为空">\
                                手机号码：<input type="text" class="form-control" name="phone" required  style="padding-top: 5px;padding-bottom: 5px;" placeholder="填写您的手机号码" data-parsley-required-message="手机号码不能为空">\
                                <div id="captchaPic" title="点击更换图片" class="pointer" onclick="createCode()"></div>\
                                <input type="text" class="form-control" name="verificationCode" required  style="padding-top: 5px;padding-bottom: 5px;" placeholder="请输入验证码" data-parsley-required-message="验证码不能为空">\
                                <input type="text" value="1"  name="item" style="display: none;">\
                                <input type="submit" value="" style="display: none;" id="place_order">\
                            </form>\
                        ',
                preConfirm: function(code) {
                    return new Promise(function(resolve, reject) {
                        $('#place_order').click();
                        setTimeout(function() {

                            if($('#order').parsley().validate()){
                                resolve();
                            }else{
                                reject('错误');
                            }
                            //在这里做验证码校验
                            /*
                                if (code === '错误的验证码') {
                                    reject('错误');
                                } else {
                                    resolve();
                                }
                            */
                        }, 500);
                    });
                },
                allowOutsideClick: false
            }).then(function(email) {
                swal({
                    html: '\
                                    <div class="col-10 offset-1 flex-column d-flex">\
                                        <h1 class="font-weight-bold text-center">下单成功！！</h1>\
                                        <span>已为您提醒卖家处理订单，请耐心等候</span>\
                                        <span class="text-muted mb-2 mt-2">订单号：12345789001</span>\
                                        <span class="text-muted">订单创建时间：2018-09-09 20:20</span>\
                                        <span class="mb-2 mt-2"><a href="/main.jsp" class="btn btn-outline-dark btn-sm">查看我的订单</a></span>\
                                    </div>',
                    allowOutsideClick: false,
                    showConfirmButton: false
                })
            })
        }
    })
    window.onresize = ()=>{
        initPicSize()
    }
</script>
</body>
</html>
