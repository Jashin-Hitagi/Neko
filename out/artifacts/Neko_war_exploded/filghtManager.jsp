<%--
  Created by IntelliJ IDEA.
  User: MECHREVO
  Date: 2019/9/20
  Time: 11:19
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <meta name="description" content="">
    <meta name="author" content="">114
    <link rel="icon" href="favicon.ico">
    <title>Neko航空票务</title>
    <!-- Bootstrap core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">
    <!-- Custom styles for this template -->
    <link href="css/owl.carousel.css" rel="stylesheet">
    <link href="css/owl.theme.default.min.css"  rel="stylesheet">
    <link href="css/style.css" rel="stylesheet">
    <!-- Just for debugging purposes. Don't actually copy these 2 lines! -->
    <!--[if lt IE 9]><script src="```../../assets/js/ie8-responsive-file-warning.js"></script><![endif]-->
    <script src="js/ie-emulation-modes-warning.js"></script>
    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <script src="js/jquery.min.js"></script>
    <script  src="js/jquery.js"></script>
    <script>
        function deleteFilght(id) {
            if (confirm("确认删除？")){
                location.href="delete.do?id="+id;
            }
        }

        function test1(id) {
            alert($(id).html());
        }

        function change1(id) {
            $.ajax({
                url:"findOne.do",
                data:{
                    "id":id
                },
                type:"post",
                dataType:"json",
                success:function(result){
                var input = "";
                    input+="<p>航 班 号: <input type='text' class='form-control' name='f_id' value='"+result.f_id+"'></p>";
                    input+="<p>出发城市: <input type='text' class='form-control' name='s_place' value='"+result.s_place+"'></p>";
                    input+="<p>到达城市: <input type='text' class='form-control' name='a_place' value='"+result.a_place+"'></p>";
                    input+="<p>登机机场: <input type='text' class='form-control' name='s_airport' value='"+result.s_airport+"'></p>";
                    input+="<p>着陆机场: <input type='text' class='form-control' name='a_airport' value='"+result.a_airport+"'></p>";
                    input+="<p>起飞时间: <input type='text' class='form-control' name='s_time' value='"+result.s_time+"'></p>";
                    input+="<p>着陆时间: <input type='text' class='form-control' name='a_time' value='"+result.a_time+"'></p>";
                    input+="<p>航空公司: <input type='text' class='form-control' name='company' value='"+result.company+"'></p>";
                    input+="<p>飞机型号: <input type='text' class='form-control' name='f_type' value='"+result.f_type+"'></p>";
                    input+="<p>票  价: <input type='text' class='form-control' name='price' value='"+result.price+"'></p>";
                    input+="<p>余  票: <input type='text' class='form-control' name='seat' value='"+result.seat+"'></p>";
                    $("#for").html((input));
                }
            })
        }
    </script>
</head>
<body id="page-top">
<!-- Navigation -->
<nav class="navbar navbar-default navbar-fixed-top"  style="background-color: #2D2D2D">
    <div class="container">
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header page-scroll">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand page-scroll" href="#page-top"><img src="images/logo.png" alt="Lattes theme logo"></a>
        </div>
        <!-- Collect the nav links, forms, and other content for toggling -->
        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1" >
            <ul class="nav navbar-nav navbar-right">
                <ul class="nav navbar-nav navbar-right">
                    <li class="hidden">
                        <a href="#page-top"></a>
                    </li>
                    <li>
                        <a class="page-scroll" href="manager.do">管理中心</a>
                    </li>
                    <li>
                        <a class="page-scroll" href="exit.do">退出登录</a>
                    </li>
                </ul>
            </ul>
        </div>
        <!-- /.navbar-collapse -->
    </div>
    <!-- /.container-fluid -->
</nav>
<!-- Header -->
<br><br>

<section id="contact">
    <div class="container" style="width: 1400px">
        <div class="row">
            <div class="col-lg-12 text-center">
                <div class="section-title">
                    <h2>管理中心</h2>
                    <p>审核订单申请，管理用户与航班</p>
                </div>
            </div>
        </div>
        <div style="width: 150px;height: 400px;float: left">
            <ul class="nav nav-pills nav-stacked">
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                        订单管理
                        <b class="caret"></b>
                    </a>
                    <ul class="dropdown-menu">
                        <li><a href="changeApply.do">改签申请</a></li>
                        <li><a href="changeApply.do">退订申请</a></li>
                    </ul>
                </li>
                <li><a href="userManager.do">用户管理</a></li>
                <li class="active"><a href="filghtManager.do">航班管理</a></li>
                <li><a href="managerPassword.jsp">修改密码</a></li>
            </ul>
        </div>
        <div style="float: left;margin-left: 50px">
            <table class="table table-hover">
                <thead>
                <tr>
                    <th>航班编号</th>
                    <th>起飞城市</th>
                    <th>到达城市</th>
                    <th>航空公司</th>
                    <th>飞机型号</th>
                    <th>票   价</th>
                    <th>操   作</th>
                </tr>
                </thead>
                <tbody>
                <c:forEach items="${f_list}" var="f">
                    <tr>
                        <td style="vertical-align: middle">${f.f_id}</td>
                        <td style="vertical-align: middle">${f.s_place}</td>
                        <td style="vertical-align: middle">${f.a_place}</td>
                        <td style="vertical-align: middle">${f.company}</td>
                        <td style="vertical-align: middle">${f.f_type}</td>
                        <td style="vertical-align: middle">${f.price}</td>
                        <td>
                           <%-- <button class="btn"  type="button" data-toggle="modal" data-target="#myModa1" onclick="change1(${f.f_id})">
                                修改
                            </button>--%>
                            <button type="button" class="btn" onclick="change1(this)" data-toggle="modal" data-target="#myModa1">${f.f_id}</button>
                        </td>
                        <td><button class="btn" data-toggle="modal" data-target="#myModa2" type="button">添加</button></td>
                        <td>
                            <button type="button" class="btn" id="myButton6" onclick="location.href='delete.do?id=${f.f_id}'">删除</button>
                        </td>
                    </tr>
                </c:forEach>
            </table>
            <ul class="pagination" style="margin-left: 35%">
                <c:if test="${f_index>1}">
                    <li class="page-item"><a class="page-link" href="filghtManager.do?f_index=1">首页</a></li>
                    <li class="page-item"><a class="page-link" href="filghtManager.do?f_index=${f_index-1}">&laquo;</a></li>
                </c:if>
                <c:forEach var="num" begin="1" end="${f_total}">
                    <li class="page-item"><a class="page-link" href="filghtManager.do?f_index=${num}">${num}</a></li>
                </c:forEach>
                <c:if test="${f_index<f_total}">
                    <li class="page-item"><a class="page-link" href="filghtManager.do?f_index=${f_index+1}">&raquo;</a></li>
                    <li class="page-item"><a class="page-link" href="filghtManager.do?f_index=${f_total}">末页</a></li>
                </c:if>
            </ul>
        </div>
    </div>
</section>
<p id="back-top">
    <a href="#top"><i class="fa fa-angle-up"></i></a>
</p>
<footer>
    <div class="container text-center">
        <p>最终解释权由 <a href="#"><span>Neko</span></a>所有</p>
    </div>
</footer>


<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <form action="" method="post">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal"
                            aria-hidden="true">×
                    </button>
                    <h4 class="modal-title" id="myModalLabel">
                        修改航班
                    </h4>
                </div>
                <div class="modal-body" style="margin-left: 150px" id="for">
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default"
                            data-dismiss="modal">关闭
                    </button>
                    <button type="button" class="btn btn-primary">
                        提交更改
                    </button>
                </div>
            </div><!-- /.modal-content -->
        </form>
    </div><!-- /.modal-dialog -->
</div><!-- /.modal -->

<div class="modal fade" id="myModa2" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <form action="addFilght.do" method="post">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal"
                            aria-hidden="true">×
                    </button>
                    <h4 class="modal-title" id="myModalLabe2">
                        添加航班
                    </h4>
                </div>
                <div class="modal-body" style="margin-left: 150px">
                    <div class="row">
                        <div class="col-md-6">
                            <div class="form-group">
                                <input type="text" class="form-control" placeholder="航班号 *" id="f_id" name="f_id">
                                <p class="help-block text-danger"></p>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-6">
                            <div class="form-group">
                                <input type="text" class="form-control" placeholder="出发城市 *" id="s_place" name="s_place">
                                <p class="help-block text-danger"></p>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-6">
                            <div class="form-group">
                                <input type="text" class="form-control" placeholder="到达城市 *" name="a_place" >
                                <p class="help-block text-danger"></p>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-6">
                            <div class="form-group">
                                <input type="text" class="form-control" placeholder="登机机场 *" name="s_airport" >
                                <p class="help-block text-danger"></p>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-6">
                            <div class="form-group">
                                <input type="text" class="form-control" placeholder="着陆机场 *" name="a_airport" >
                                <p class="help-block text-danger"></p>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-6">
                            <div class="form-group">
                                <input type="text" class="form-control" placeholder="起飞时间 yyyy-MM-dd HH:mm:ss  *" name="s_time" >
                                <p class="help-block text-danger"></p>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-6">
                            <div class="form-group">
                                <input type="text" class="form-control" placeholder="着陆时间 yyyy-MM-dd HH:mm:ss  *" name="a_time" >
                                <p class="help-block text-danger"></p>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-6">
                            <div class="form-group">
                                <input type="text" class="form-control" placeholder="航空公司 *" name="company" >
                                <p class="help-block text-danger"></p>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-6">
                            <div class="form-group">
                                <input type="text" class="form-control" placeholder="飞机型号 *" name="f_type" >
                                <p class="help-block text-danger"></p>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-6">
                            <div class="form-group">
                                <input type="text" class="form-control" placeholder="票价 *" name="price" >
                                <p class="help-block text-danger"></p>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-6">
                            <div class="form-group">
                                <input type="text" class="form-control" placeholder="余票 *" name="seat" >
                                <p class="help-block text-danger"></p>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default"
                            data-dismiss="modal">关闭
                    </button>
                    <button type="submit" class="btn btn-primary">
                        提交添加
                    </button>
                </div>
            </div><!-- /.modal-content -->
        </form>
    </div><!-- /.modal-dialog -->
</div><!-- /.modal -->
<!-- Bootstrap core JavaScript
    ================================================== -->
<!-- Placed at the end of the document so the pages load faster -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<script src="http://cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.3/jquery.easing.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/owl.carousel.min.js"></script>
<script src="js/cbpAnimatedHeader.js"></script>
<script src="js/theme-scripts.js"></script>
<!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
<script src="js/ie10-viewport-bug-workaround.js"></script>
</body>
</html>
