<!DOCTYPE html>
<!-- saved from url=(0035)http://249017.pl8.cc/sys/fake-order -->
<html style="height: auto; min-height: 100%;"><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	        <title>预设订单管理</title>
  
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <!-- Tell the browser to be responsive to screen width -->
  <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
    		
    		
    		<link rel="shortcut icon" href="http://249017.pl8.cc/images/favicon.ico">


  <!-- Bootstrap 3.3.7 -->
  <link rel="stylesheet" href="${ctx!}/files/bootstrap.min.css">
  <!-- Font Awesome -->
  <link rel="stylesheet" href="${ctx!}/files/font-awesome.min.css">
  <!-- Ionicons -->
  <link rel="stylesheet" href="${ctx!}/files/ionicons.min.css">
  <!-- Theme style -->
  <link rel="stylesheet" href="${ctx!}/files/AdminLTE.min.css">
  <!-- AdminLTE Skins. Choose a skin from the css/skins
       folder instead of downloading all of them to reduce the load. -->
  <link rel="stylesheet" href="${ctx!}/files/_all-skins.min.css">

  <!-- Google Font -->

  <link type="text/css" rel="stylesheet" href="${ctx!}/files/jquery-jvectormap.css">
  <link type="text/css" rel="stylesheet" href="${ctx!}/files/all.css">


  <style>
	.progress-description, .info-box-text{
		display:inline;
	}
	</style>


  <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
  <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
  <!--[if lt IE 9]>
  <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
  <![endif]-->

  <!-- jQuery 3 -->
  <script src="${ctx!}/files/jquery.min.js"></script>
  <!-- Bootstrap 3.3.7 -->
  <script src="${ctx!}/files/bootstrap.min.js"></script>

  <script src="${ctx!}/files/template-web.js"></script>
	         
	    	 <script>
	              webCfg = {
	              staticPath: "",	             
	              contextPath: "",
	              fileServer: "",
	              outerfileServer: ""
	            };
	 		</script>
	    </head>
	    <body class="skin-blue sidebar-mini" style="height: auto; min-height: 100%;">
	     	
	<div class="wrapper" style="height: auto; min-height: 100%;">
	
  <header class="main-header">

    <!-- Logo -->
    <a href="/admin/back" class="logo">
      <!-- mini logo for sidebar mini 50x50 pixels -->
      <span class="logo-mini">💪</span>
      <!-- logo for regular state and mobile devices -->
      <span class="logo-lg">管理系统</span>
    </a>

    <!-- Header Navbar: style can be found in header.less -->
    <nav class="navbar navbar-static-top">
      <!-- Sidebar toggle button-->
      <a href="http://249017.pl8.cc/sys/fake-order#" class="sidebar-toggle" data-toggle="push-menu" role="button">
        <span class="sr-only">Toggle navigation</span>
      </a>
      <p style="padding-top:15px;display: inline-block;">
        <small style="color:#fff; font-size: 12px;">到期时间: <span id="expire">2023-03-02 09:00:00</span></small>
        <a style="display: inline-block; margin-left: 1px; padding: 2px 4px;" href="javascript:void(0);" class="btn btn-default btn-flat" data-toggle="modal" data-target="#modal-changepwd">
          修改密码
        </a>
      </p>
      <!-- Navbar Right Menu -->
      <div class="navbar-custom-menu">
        <ul class="nav navbar-nav">
          <!-- User Account: style can be found in dropdown.less -->
          <li class="dropdown user user-menu">
            <a href="http://249017.pl8.cc/sys/fake-order#" class="dropdown-toggle" data-toggle="dropdown">
              <img src="./预设订单管理_files/user2-160x160.jpg" class="user-image" alt="User Image">
              <span class="hidden-xs">zz3375</span>
              <input type="hidden" id="userId" value="1630207614862258177">
            </a>
            <ul class="dropdown-menu">
              <!-- User image -->
              <li class="user-header">
                <img src="./预设订单管理_files/user2-160x160.jpg" class="img-circle" alt="User Image">

                <p>
zz3375                </p>
              </li>
              <!-- Menu Footer-->
              <li class="user-footer">
                <div class="pull-right">
                  <a href="./logout" class="btn btn-default btn-flat">登出</a>
                </div>
              </li>
            </ul>
          </li>
          <!-- Control Sidebar Toggle Button 
          <li>
            <a href="#" data-toggle="control-sidebar"><i class="fa fa-gears"></i></a>
          </li>-->
        </ul>
      </div>

    </nav>
  </header>

  <div class="modal fade" id="modal-changepwd">
    <div class="modal-dialog">
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">×</span></button>
          <h4 class="modal-title" id="modalTitle">编辑格式</h4>
        </div>
        <div class="modal-body">
          <!-- form start -->
          <form class="form-horizontal">
            <div class="box-body">
              <div class="form-group">
                <label for="inputPassword3" class="col-sm-2 control-label">原密码</label>

                <div class="col-sm-10">
                  <input type="password" id="oldPwd" name="oldPwd" class="form-control" placeholder="原密码" required="">
                </div>
              </div>
              <div class="form-group">
                <label for="inputPassword3" class="col-sm-2 control-label">新密码</label>

                <div class="col-sm-10">
                  <input type="password" id="newPwd" name="newPwd" class="form-control" placeholder="新密码" required="">
                </div>
              </div>
            </div>
            <!-- /.box-body -->
            <div class="box-footer">
              <button type="button" data-dismiss="modal" class="btn btn-default">取消</button>
              <button type="button" class="changepwd btn btn-info pull-right">确定</button>
            </div>
            <!-- /.box-footer -->
          </form>
        </div>
      </div>
      <!-- /.modal-content -->
    </div>
    <!-- /.modal-dialog -->
  </div>
  <!-- /.modal -->
  <script>
    $(document).on('click','.changepwd', function(){
  $.post('${ctx!}/admin/user/updatePwd',{oldPassword:$('#oldPwd').val(),password1:$('#newPwd').val(),password2:$('#newPwd').val()},function(ret){
    if(ret.code == 0){
      alert(ret.message);
      $('#modal-changepwd').modal('hide');
      window.location.href = '${ctx!}/admin/logout';
    }else{
      alert(ret.message);
    }
  },'json');
});


    $(function() {
      getExpireTime();
      setInterval(function(){
       getExpireTime();
      }, 5000);
    })

    function getExpireTime(){
      $.get('/sys/user/' + $("#userId").val(),function(ret){
        $("#expire").html(ret.expiredTime);
      },'json');
    }
  </script>


      <!-- Left side column. contains the logo and sidebar -->
      <aside class="main-sidebar">
        <!-- sidebar: style can be found in sidebar.less -->
        <section class="sidebar" style="height: auto;">

          <!-- sidebar menu: : style can be found in sidebar.less -->
          <ul class="sidebar-menu tree" data-widget="tree">
            <li class="header">MAIN NAVIGATION</li>
            <li class="active">
              <a href="/admin/back">
                <i class="fa fa-dashboard"></i> <span>首页</span>
              </a>
            </li>
            <li>
              <a href="/admin/config">
                <i class="fa fa-cog"></i> <span>配置管理</span>
              </a>
            </li>
            <li>
              <a href="/admin/odds">
                <i class="fa fa-cog"></i> <span>赔率设置</span>
              </a>
            </li>
            <li>
              <a href="/admin/link">
                <i class="fa fa-link"></i> <span>链接配置</span>
              </a>
            </li>
            <li>
              <a href="/admin/preset">
                <i class="fa fa-cog"></i> <span>预设订单管理</span>
              </a>
            </li>
            <li>
              <a href="/admin/with">
                <i class="fa fa-clone"></i> <span>跟单列表</span>
              </a>
            </li>
            <li>
              <a href="/admin/member">
                <i class="fa fa-users"></i> <span>会员管理</span>
              </a>
            </li>
            <li>
              <a href="/admin/operate">
                <i class="fa fa-users"></i> <span>会员操作管理</span>
              </a>
            </li>
            <li>
              <a href="/admin/subaudit">
                <i class="fa fa-cny"></i> <span>上下分审核</span>
              </a>
            </li>
            <li>
              <a href="/admin/order">
                <i class="fa fa-shopping-cart"></i> <span>订单查询</span>
              </a>
            </li>
            <li>
              <a href="/admin/history">
                <i class="fa fa-history"></i> <span>历史记录</span>
              </a>
            </li>
            <li>
              <a href="/admin/historyrecord">
                <i class="fa fa-database"></i> <span>开奖历史记录</span>
              </a>
            </li>
            <li>
              <a href="/admin/lock">
                <i class="fa fa-unlock"></i> <span>登录频繁解锁</span>
              </a>
            </li>
            <li>
              <a href="/admin/return">
                <i class="fa fa-backward"></i> <span>返水管理</span>
              </a>
            </li>
            <li>
              <a href="/admin/eatset">
                <i class="fa fa-cog"></i> <span>吃码额度设定</span>
              </a>
            </li>
            <li>
              <a href="/admin/eatloss">
                <i class="fa fa-balance-scale"></i> <span>吃码盈亏</span>
              </a>
            </li>
            <li>
              <a href="/wechat2/index">
                <i class="fa fa-wrench"></i><span>备份微信登陆</span>
              </a>
            </li>
          </ul>
        </section>
        <!-- /.sidebar -->
      </aside>
		

  <!-- =============================================== -->
    <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper" style="min-height: 922.75px;">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
       预设订单管理
        <small>预设订单管理</small>
      </h1>
      <!--<ol class="breadcrumb">
        <li><a href="/admin"><i class="fa fa-dashboard"></i> Home</a></li>
        <li class="active">Users</li>
      </ol>-->
    </section>

    <!-- Main content -->
    <section class="content">
      <div class="row">
        <div class="col-xs-12">
          <div class="box">
            <div class="box-header">
              <h3 class="box-title">
                <button type="button" class="btn btn-info" data-toggle="modal" data-target="#modal-User" onclick="userAction(&#39;&#39;,&#39;add&#39;)">
                    <i class="fa fa-fw fa-user-plus"></i>
                </button>
              </h3>
            </div>
            <!-- /.box-header -->
            <div class="box-body">
              <div id="example2_wrapper" class="dataTables_wrapper form-inline dt-bootstrap"><div class="row"><div class="col-sm-6"><div class="dataTables_length" id="example2_length"><label>显示 <select name="example2_length" aria-controls="example2" class="form-control input-sm"><option value="10">10</option><option value="25">25</option><option value="50">50</option><option value="100">100</option></select> 条目</label></div></div><div class="col-sm-6"><div id="example2_filter" class="dataTables_filter"><label>搜索: <input type="search" class="form-control input-sm" placeholder="" aria-controls="example2"></label></div></div></div><div class="row"><div class="col-sm-12"><table id="example2" class="table table-bordered table-hover dataTable" role="grid" aria-describedby="example2_info">
                <thead>
                <tr role="row"><th class="sorting_disabled" rowspan="1" colspan="1">序号</th><th class="sorting_disabled" rowspan="1" colspan="1">文本</th><th class="sorting_disabled" rowspan="1" colspan="1">创建时间</th><th class="sorting_disabled" rowspan="1" colspan="1">操作</th></tr>
                </thead>
                <tbody>
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                

                <tr role="row" class="odd">
                  <td>51</td>
                  <td>023456789千023456789百012345679十012345679个。含01789千十合012345789千个合123456789百十合012456789除三重除两双重取值5值30各0.5</td>
                  <td>2023-02-27T22:05:58</td>
                  <td>
                  	<button type="button" class="btn-sm btn-warning" data-toggle="modal" data-target="#modal-User" onclick="userAction(&#39;1630207614895812660&#39;,&#39;edit&#39;)">
                      <i class="fa fa-edit"></i>
                      </button>
                      <button type="button" class="btn-sm btn-danger" onclick="userAction(&#39;1630207614895812660&#39;,&#39;delete&#39;)">
                      <i class="fa fa-trash"></i>
                      </button>
                  </td>
                </tr><tr role="row" class="even">
                  <td>52</td>
                  <td>11335566778899倒四定各0.5</td>
                  <td>2023-02-27T22:05:58</td>
                  <td>
                  	<button type="button" class="btn-sm btn-warning" data-toggle="modal" data-target="#modal-User" onclick="userAction(&#39;1630207614895812661&#39;,&#39;edit&#39;)">
                      <i class="fa fa-edit"></i>
                      </button>
                      <button type="button" class="btn-sm btn-danger" onclick="userAction(&#39;1630207614895812661&#39;,&#39;delete&#39;)">
                      <i class="fa fa-trash"></i>
                      </button>
                  </td>
                </tr><tr role="row" class="odd">
                  <td>53</td>
                  <td>11223355778899倒四定各0.5</td>
                  <td>2023-02-27T22:05:58</td>
                  <td>
                  	<button type="button" class="btn-sm btn-warning" data-toggle="modal" data-target="#modal-User" onclick="userAction(&#39;1630207614895812662&#39;,&#39;edit&#39;)">
                      <i class="fa fa-edit"></i>
                      </button>
                      <button type="button" class="btn-sm btn-danger" onclick="userAction(&#39;1630207614895812662&#39;,&#39;delete&#39;)">
                      <i class="fa fa-trash"></i>
                      </button>
                  </td>
                </tr><tr role="row" class="even">
                  <td>54</td>
                  <td>11334455667799倒四定各0.5</td>
                  <td>2023-02-27T22:05:58</td>
                  <td>
                  	<button type="button" class="btn-sm btn-warning" data-toggle="modal" data-target="#modal-User" onclick="userAction(&#39;1630207614895812663&#39;,&#39;edit&#39;)">
                      <i class="fa fa-edit"></i>
                      </button>
                      <button type="button" class="btn-sm btn-danger" onclick="userAction(&#39;1630207614895812663&#39;,&#39;delete&#39;)">
                      <i class="fa fa-trash"></i>
                      </button>
                  </td>
                </tr><tr role="row" class="odd">
                  <td>55</td>
                  <td>113355678899倒三定各0.8</td>
                  <td>2023-02-27T22:05:58</td>
                  <td>
                  	<button type="button" class="btn-sm btn-warning" data-toggle="modal" data-target="#modal-User" onclick="userAction(&#39;1630207614895812664&#39;,&#39;edit&#39;)">
                      <i class="fa fa-edit"></i>
                      </button>
                      <button type="button" class="btn-sm btn-danger" onclick="userAction(&#39;1630207614895812664&#39;,&#39;delete&#39;)">
                      <i class="fa fa-trash"></i>
                      </button>
                  </td>
                </tr><tr role="row" class="even">
                  <td>56</td>
                  <td>035566778899倒三定各0.5</td>
                  <td>2023-02-27T22:05:58</td>
                  <td>
                  	<button type="button" class="btn-sm btn-warning" data-toggle="modal" data-target="#modal-User" onclick="userAction(&#39;1630207614895812665&#39;,&#39;edit&#39;)">
                      <i class="fa fa-edit"></i>
                      </button>
                      <button type="button" class="btn-sm btn-danger" onclick="userAction(&#39;1630207614895812665&#39;,&#39;delete&#39;)">
                      <i class="fa fa-trash"></i>
                      </button>
                  </td>
                </tr><tr role="row" class="odd">
                  <td>57</td>
                  <td>3249678千百十个。两数合147三数合2468千百十个合12345678除三重除两双重除三兄弟各0.1</td>
                  <td>2023-02-27T22:05:58</td>
                  <td>
                  	<button type="button" class="btn-sm btn-warning" data-toggle="modal" data-target="#modal-User" onclick="userAction(&#39;1630207614895812666&#39;,&#39;edit&#39;)">
                      <i class="fa fa-edit"></i>
                      </button>
                      <button type="button" class="btn-sm btn-danger" onclick="userAction(&#39;1630207614895812666&#39;,&#39;delete&#39;)">
                      <i class="fa fa-trash"></i>
                      </button>
                  </td>
                </tr><tr role="row" class="even">
                  <td>58</td>
                  <td>123456789头123456780百12345678尾。两数合23456三数合2345687除三重除三兄弟各0.2</td>
                  <td>2023-02-27T22:05:58</td>
                  <td>
                  	<button type="button" class="btn-sm btn-warning" data-toggle="modal" data-target="#modal-User" onclick="userAction(&#39;1630207614895812667&#39;,&#39;edit&#39;)">
                      <i class="fa fa-edit"></i>
                      </button>
                      <button type="button" class="btn-sm btn-danger" onclick="userAction(&#39;1630207614895812667&#39;,&#39;delete&#39;)">
                      <i class="fa fa-trash"></i>
                      </button>
                  </td>
                </tr><tr role="row" class="odd">
                  <td>59</td>
                  <td>百13579十1245798尾02468各0.2</td>
                  <td>2023-02-27T22:05:58</td>
                  <td>
                  	<button type="button" class="btn-sm btn-warning" data-toggle="modal" data-target="#modal-User" onclick="userAction(&#39;1630207614895812668&#39;,&#39;edit&#39;)">
                      <i class="fa fa-edit"></i>
                      </button>
                      <button type="button" class="btn-sm btn-danger" onclick="userAction(&#39;1630207614895812668&#39;,&#39;delete&#39;)">
                      <i class="fa fa-trash"></i>
                      </button>
                  </td>
                </tr></tbody>
                <tfoot>
                 <tr><th rowspan="1" colspan="1">序号</th><th rowspan="1" colspan="1">文本</th><th rowspan="1" colspan="1">创建时间</th><th rowspan="1" colspan="1">操作</th></tr>
                </tfoot>
              </table></div></div><div class="row"><div class="col-sm-5"><div class="dataTables_info" id="example2_info" role="status" aria-live="polite">显示 51 到 59 的 59 条目</div></div><div class="col-sm-7"><div class="dataTables_paginate paging_simple_numbers" id="example2_paginate"><ul class="pagination"><li class="paginate_button previous" id="example2_previous"><a href="http://249017.pl8.cc/sys/fake-order#" aria-controls="example2" data-dt-idx="0" tabindex="0">上一页</a></li><li class="paginate_button "><a href="http://249017.pl8.cc/sys/fake-order#" aria-controls="example2" data-dt-idx="1" tabindex="0">1</a></li><li class="paginate_button "><a href="http://249017.pl8.cc/sys/fake-order#" aria-controls="example2" data-dt-idx="2" tabindex="0">2</a></li><li class="paginate_button "><a href="http://249017.pl8.cc/sys/fake-order#" aria-controls="example2" data-dt-idx="3" tabindex="0">3</a></li><li class="paginate_button "><a href="http://249017.pl8.cc/sys/fake-order#" aria-controls="example2" data-dt-idx="4" tabindex="0">4</a></li><li class="paginate_button "><a href="http://249017.pl8.cc/sys/fake-order#" aria-controls="example2" data-dt-idx="5" tabindex="0">5</a></li><li class="paginate_button active"><a href="http://249017.pl8.cc/sys/fake-order#" aria-controls="example2" data-dt-idx="6" tabindex="0">6</a></li><li class="paginate_button next disabled" id="example2_next"><a href="http://249017.pl8.cc/sys/fake-order#" aria-controls="example2" data-dt-idx="7" tabindex="0">下一页</a></li></ul></div></div></div></div>
            </div>
            <!-- /.box-body -->
          </div>
          <!-- /.box -->
        </div>
        <!-- /.col -->
      </div>
      <!-- /.row -->
    </section>
    <!-- /.content -->


  </div>
  <!-- /.content-wrapper -->
  
  <div class="modal fade" id="modal-User" style="display: none;">
    <div class="modal-dialog">
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">×</span></button>
          <h4 class="modal-title" id="modalTitle">添加格式</h4>
        </div>
        <div class="modal-body">
          <!-- form start -->
            <form class="form-horizontal" id="modalForm" method="POST" action="http://249017.pl8.cc/sys/fake-order/1630207614895812660">
              <div class="box-body">
                <div class="form-group">
                  <label for="text" class="col-sm-2 control-label">格式文本</label>

                  <div class="col-sm-10">
                    <input type="hidden" id="id" name="id" value="1630207614895812660">
                    <input type="text" id="text" name="text" class="form-control" placeholder="逗号分隔支持多格式" required="">
                  </div>
                </div>
                
              </div>
              <!-- /.box-body -->
              <div class="box-footer">
                <button type="button" data-dismiss="modal" class="btn btn-default">取消</button>
                <button type="submit" id="modalSubmit" class="btn btn-info pull-right">确定</button>
              </div>
              <!-- /.box-footer -->
            </form>
        </div>
      </div>
      <!-- /.modal-content -->
    </div>
    <!-- /.modal-dialog -->
  </div>
  <!-- /.modal -->
    <div class="modal fade" id="modal-default">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">×</span></button>
                    <h4 class="modal-title">提示信息</h4>
                </div>
                <div class="modal-body">
                    <p id="msg"></p>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-primary" data-dismiss="modal">确定</button>
                </div>
            </div>
            <!-- /.modal-content -->
        </div>
        <!-- /.modal-dialog -->
    </div>
<!-- page script -->
<script>

    $(function(){
    })

    $(function () {
        $('#example2').DataTable({
            "paging": true,
            "lengthChange": true,
            "searching": true,
            "ordering": false,
            "info": true,
            "autoWidth": false
        });
    });
    
    function userAction(id,action)
	{
	  var base_url = window.location.origin;
	  if(action == 'add')
	  {
	    $('#id').val("");
	    $('#text').val("");
	    $('#modalForm').attr('action', '/sys/fake-order');
	  }
	  else if(action == 'edit')
	  {
	    $.ajax({
	      type: 'GET',
	      url: base_url+'/sys/fake-order/'+id,
	      success: function (data) {
	        $('#id').val(data.id);
	        $('#text').val(data.text);
	        $('#modalTitle').html('编辑格式');
	        
	        $('#modalForm').attr('action', '/sys/fake-order/'+id);
	      }
	    });
	  }
	  else if(action == 'delete')
	  {
	      $.ajax({
	      type: 'DELETE',
	      url: base_url+'/sys/fake-order/'+id,
	      success: function (data) {
	        location.reload();
	      }
	    });
	  }
	}
    
</script>
		
  <!-- Control Sidebar -->
  <aside class="control-sidebar control-sidebar-dark">
    <!-- Create the tabs -->
    <ul class="nav nav-tabs nav-justified control-sidebar-tabs">
      <li class="active"><a href="http://249017.pl8.cc/sys/fake-order#control-sidebar-theme-demo-options-tab" data-toggle="tab"><i class="fa fa-wrench"></i></a></li><li><a href="http://249017.pl8.cc/sys/fake-order#control-sidebar-home-tab" data-toggle="tab"><i class="fa fa-home"></i></a></li>
      <li><a href="http://249017.pl8.cc/sys/fake-order#control-sidebar-settings-tab" data-toggle="tab"><i class="fa fa-gears"></i></a></li>
    </ul>
    <!-- Tab panes -->
    <div class="tab-content">
      <!-- Home tab content -->
      <div class="tab-pane" id="control-sidebar-home-tab">
        <h3 class="control-sidebar-heading">Recent Activity</h3>
        <ul class="control-sidebar-menu">
          <li>
            <a href="javascript:void(0)">
              <i class="menu-icon fa fa-birthday-cake bg-red"></i>

              <div class="menu-info">
                <h4 class="control-sidebar-subheading">Langdon's Birthday</h4>

                <p>Will be 23 on April 24th</p>
              </div>
            </a>
          </li>
          <li>
            <a href="javascript:void(0)">
              <i class="menu-icon fa fa-user bg-yellow"></i>

              <div class="menu-info">
                <h4 class="control-sidebar-subheading">Frodo Updated His Profile</h4>

                <p>New phone +1(800)555-1234</p>
              </div>
            </a>
          </li>
          <li>
            <a href="javascript:void(0)">
              <i class="menu-icon fa fa-envelope-o bg-light-blue"></i>

              <div class="menu-info">
                <h4 class="control-sidebar-subheading">Nora Joined Mailing List</h4>

                <p>nora@example.com</p>
              </div>
            </a>
          </li>
          <li>
            <a href="javascript:void(0)">
              <i class="menu-icon fa fa-file-code-o bg-green"></i>

              <div class="menu-info">
                <h4 class="control-sidebar-subheading">Cron Job 254 Executed</h4>

                <p>Execution time 5 seconds</p>
              </div>
            </a>
          </li>
        </ul>
        <!-- /.control-sidebar-menu -->

        <h3 class="control-sidebar-heading">Tasks Progress</h3>
        <ul class="control-sidebar-menu">
          <li>
            <a href="javascript:void(0)">
              <h4 class="control-sidebar-subheading">
                Custom Template Design
                <span class="label label-danger pull-right">70%</span>
              </h4>

              <div class="progress progress-xxs">
                <div class="progress-bar progress-bar-danger" style="width: 70%"></div>
              </div>
            </a>
          </li>
          <li>
            <a href="javascript:void(0)">
              <h4 class="control-sidebar-subheading">
                Update Resume
                <span class="label label-success pull-right">95%</span>
              </h4>

              <div class="progress progress-xxs">
                <div class="progress-bar progress-bar-success" style="width: 95%"></div>
              </div>
            </a>
          </li>
          <li>
            <a href="javascript:void(0)">
              <h4 class="control-sidebar-subheading">
                Laravel Integration
                <span class="label label-warning pull-right">50%</span>
              </h4>

              <div class="progress progress-xxs">
                <div class="progress-bar progress-bar-warning" style="width: 50%"></div>
              </div>
            </a>
          </li>
          <li>
            <a href="javascript:void(0)">
              <h4 class="control-sidebar-subheading">
                Back End Framework
                <span class="label label-primary pull-right">68%</span>
              </h4>

              <div class="progress progress-xxs">
                <div class="progress-bar progress-bar-primary" style="width: 68%"></div>
              </div>
            </a>
          </li>
        </ul>
        <!-- /.control-sidebar-menu -->

      </div><div id="control-sidebar-theme-demo-options-tab" class="tab-pane active"><div><h4 class="control-sidebar-heading">Layout Options</h4><div class="form-group"><label class="control-sidebar-subheading"><input type="checkbox" data-layout="fixed" class="pull-right"> Fixed layout</label><p>Activate the fixed layout. You can't use fixed and boxed layouts together</p></div><div class="form-group"><label class="control-sidebar-subheading"><input type="checkbox" data-layout="layout-boxed" class="pull-right"> Boxed Layout</label><p>Activate the boxed layout</p></div><div class="form-group"><label class="control-sidebar-subheading"><input type="checkbox" data-layout="sidebar-collapse" class="pull-right"> Toggle Sidebar</label><p>Toggle the left sidebar's state (open or collapse)</p></div><div class="form-group"><label class="control-sidebar-subheading"><input type="checkbox" data-enable="expandOnHover" class="pull-right"> Sidebar Expand on Hover</label><p>Let the sidebar mini expand on hover</p></div><div class="form-group"><label class="control-sidebar-subheading"><input type="checkbox" data-controlsidebar="control-sidebar-open" class="pull-right"> Toggle Right Sidebar Slide</label><p>Toggle between slide over content and push content effects</p></div><div class="form-group"><label class="control-sidebar-subheading"><input type="checkbox" data-sidebarskin="toggle" class="pull-right"> Toggle Right Sidebar Skin</label><p>Toggle between dark and light skins for the right sidebar</p></div><h4 class="control-sidebar-heading">Skins</h4><ul class="list-unstyled clearfix"><li style="float:left; width: 33.33333%; padding: 5px;"><a href="javascript:void(0)" data-skin="skin-blue" style="display: block; box-shadow: 0 0 3px rgba(0,0,0,0.4)" class="clearfix full-opacity-hover"><div><span style="display:block; width: 20%; float: left; height: 7px; background: #367fa9"></span><span class="bg-light-blue" style="display:block; width: 80%; float: left; height: 7px;"></span></div><div><span style="display:block; width: 20%; float: left; height: 20px; background: #222d32"></span><span style="display:block; width: 80%; float: left; height: 20px; background: #f4f5f7"></span></div></a><p class="text-center no-margin">Blue</p></li><li style="float:left; width: 33.33333%; padding: 5px;"><a href="javascript:void(0)" data-skin="skin-black" style="display: block; box-shadow: 0 0 3px rgba(0,0,0,0.4)" class="clearfix full-opacity-hover"><div style="box-shadow: 0 0 2px rgba(0,0,0,0.1)" class="clearfix"><span style="display:block; width: 20%; float: left; height: 7px; background: #fefefe"></span><span style="display:block; width: 80%; float: left; height: 7px; background: #fefefe"></span></div><div><span style="display:block; width: 20%; float: left; height: 20px; background: #222"></span><span style="display:block; width: 80%; float: left; height: 20px; background: #f4f5f7"></span></div></a><p class="text-center no-margin">Black</p></li><li style="float:left; width: 33.33333%; padding: 5px;"><a href="javascript:void(0)" data-skin="skin-purple" style="display: block; box-shadow: 0 0 3px rgba(0,0,0,0.4)" class="clearfix full-opacity-hover"><div><span style="display:block; width: 20%; float: left; height: 7px;" class="bg-purple-active"></span><span class="bg-purple" style="display:block; width: 80%; float: left; height: 7px;"></span></div><div><span style="display:block; width: 20%; float: left; height: 20px; background: #222d32"></span><span style="display:block; width: 80%; float: left; height: 20px; background: #f4f5f7"></span></div></a><p class="text-center no-margin">Purple</p></li><li style="float:left; width: 33.33333%; padding: 5px;"><a href="javascript:void(0)" data-skin="skin-green" style="display: block; box-shadow: 0 0 3px rgba(0,0,0,0.4)" class="clearfix full-opacity-hover"><div><span style="display:block; width: 20%; float: left; height: 7px;" class="bg-green-active"></span><span class="bg-green" style="display:block; width: 80%; float: left; height: 7px;"></span></div><div><span style="display:block; width: 20%; float: left; height: 20px; background: #222d32"></span><span style="display:block; width: 80%; float: left; height: 20px; background: #f4f5f7"></span></div></a><p class="text-center no-margin">Green</p></li><li style="float:left; width: 33.33333%; padding: 5px;"><a href="javascript:void(0)" data-skin="skin-red" style="display: block; box-shadow: 0 0 3px rgba(0,0,0,0.4)" class="clearfix full-opacity-hover"><div><span style="display:block; width: 20%; float: left; height: 7px;" class="bg-red-active"></span><span class="bg-red" style="display:block; width: 80%; float: left; height: 7px;"></span></div><div><span style="display:block; width: 20%; float: left; height: 20px; background: #222d32"></span><span style="display:block; width: 80%; float: left; height: 20px; background: #f4f5f7"></span></div></a><p class="text-center no-margin">Red</p></li><li style="float:left; width: 33.33333%; padding: 5px;"><a href="javascript:void(0)" data-skin="skin-yellow" style="display: block; box-shadow: 0 0 3px rgba(0,0,0,0.4)" class="clearfix full-opacity-hover"><div><span style="display:block; width: 20%; float: left; height: 7px;" class="bg-yellow-active"></span><span class="bg-yellow" style="display:block; width: 80%; float: left; height: 7px;"></span></div><div><span style="display:block; width: 20%; float: left; height: 20px; background: #222d32"></span><span style="display:block; width: 80%; float: left; height: 20px; background: #f4f5f7"></span></div></a><p class="text-center no-margin">Yellow</p></li><li style="float:left; width: 33.33333%; padding: 5px;"><a href="javascript:void(0)" data-skin="skin-blue-light" style="display: block; box-shadow: 0 0 3px rgba(0,0,0,0.4)" class="clearfix full-opacity-hover"><div><span style="display:block; width: 20%; float: left; height: 7px; background: #367fa9"></span><span class="bg-light-blue" style="display:block; width: 80%; float: left; height: 7px;"></span></div><div><span style="display:block; width: 20%; float: left; height: 20px; background: #f9fafc"></span><span style="display:block; width: 80%; float: left; height: 20px; background: #f4f5f7"></span></div></a><p class="text-center no-margin" style="font-size: 12px">Blue Light</p></li><li style="float:left; width: 33.33333%; padding: 5px;"><a href="javascript:void(0)" data-skin="skin-black-light" style="display: block; box-shadow: 0 0 3px rgba(0,0,0,0.4)" class="clearfix full-opacity-hover"><div style="box-shadow: 0 0 2px rgba(0,0,0,0.1)" class="clearfix"><span style="display:block; width: 20%; float: left; height: 7px; background: #fefefe"></span><span style="display:block; width: 80%; float: left; height: 7px; background: #fefefe"></span></div><div><span style="display:block; width: 20%; float: left; height: 20px; background: #f9fafc"></span><span style="display:block; width: 80%; float: left; height: 20px; background: #f4f5f7"></span></div></a><p class="text-center no-margin" style="font-size: 12px">Black Light</p></li><li style="float:left; width: 33.33333%; padding: 5px;"><a href="javascript:void(0)" data-skin="skin-purple-light" style="display: block; box-shadow: 0 0 3px rgba(0,0,0,0.4)" class="clearfix full-opacity-hover"><div><span style="display:block; width: 20%; float: left; height: 7px;" class="bg-purple-active"></span><span class="bg-purple" style="display:block; width: 80%; float: left; height: 7px;"></span></div><div><span style="display:block; width: 20%; float: left; height: 20px; background: #f9fafc"></span><span style="display:block; width: 80%; float: left; height: 20px; background: #f4f5f7"></span></div></a><p class="text-center no-margin" style="font-size: 12px">Purple Light</p></li><li style="float:left; width: 33.33333%; padding: 5px;"><a href="javascript:void(0)" data-skin="skin-green-light" style="display: block; box-shadow: 0 0 3px rgba(0,0,0,0.4)" class="clearfix full-opacity-hover"><div><span style="display:block; width: 20%; float: left; height: 7px;" class="bg-green-active"></span><span class="bg-green" style="display:block; width: 80%; float: left; height: 7px;"></span></div><div><span style="display:block; width: 20%; float: left; height: 20px; background: #f9fafc"></span><span style="display:block; width: 80%; float: left; height: 20px; background: #f4f5f7"></span></div></a><p class="text-center no-margin" style="font-size: 12px">Green Light</p></li><li style="float:left; width: 33.33333%; padding: 5px;"><a href="javascript:void(0)" data-skin="skin-red-light" style="display: block; box-shadow: 0 0 3px rgba(0,0,0,0.4)" class="clearfix full-opacity-hover"><div><span style="display:block; width: 20%; float: left; height: 7px;" class="bg-red-active"></span><span class="bg-red" style="display:block; width: 80%; float: left; height: 7px;"></span></div><div><span style="display:block; width: 20%; float: left; height: 20px; background: #f9fafc"></span><span style="display:block; width: 80%; float: left; height: 20px; background: #f4f5f7"></span></div></a><p class="text-center no-margin" style="font-size: 12px">Red Light</p></li><li style="float:left; width: 33.33333%; padding: 5px;"><a href="javascript:void(0)" data-skin="skin-yellow-light" style="display: block; box-shadow: 0 0 3px rgba(0,0,0,0.4)" class="clearfix full-opacity-hover"><div><span style="display:block; width: 20%; float: left; height: 7px;" class="bg-yellow-active"></span><span class="bg-yellow" style="display:block; width: 80%; float: left; height: 7px;"></span></div><div><span style="display:block; width: 20%; float: left; height: 20px; background: #f9fafc"></span><span style="display:block; width: 80%; float: left; height: 20px; background: #f4f5f7"></span></div></a><p class="text-center no-margin" style="font-size: 12px">Yellow Light</p></li></ul></div></div>
      <!-- /.tab-pane -->

      <!-- Settings tab content -->
      <div class="tab-pane" id="control-sidebar-settings-tab">
        <form method="post">
          <h3 class="control-sidebar-heading">General Settings</h3>

          <div class="form-group">
            <label class="control-sidebar-subheading">
              Report panel usage
              <input type="checkbox" class="pull-right" checked="">
            </label>

            <p>
              Some information about this general settings option
            </p>
          </div>
          <!-- /.form-group -->

          <div class="form-group">
            <label class="control-sidebar-subheading">
              Allow mail redirect
              <input type="checkbox" class="pull-right" checked="">
            </label>

            <p>
              Other sets of options are available
            </p>
          </div>
          <!-- /.form-group -->

          <div class="form-group">
            <label class="control-sidebar-subheading">
              Expose author name in posts
              <input type="checkbox" class="pull-right" checked="">
            </label>

            <p>
              Allow the user to show his name in blog posts
            </p>
          </div>
          <!-- /.form-group -->

          <h3 class="control-sidebar-heading">Chat Settings</h3>

          <div class="form-group">
            <label class="control-sidebar-subheading">
              Show me as online
              <input type="checkbox" class="pull-right" checked="">
            </label>
          </div>
          <!-- /.form-group -->

          <div class="form-group">
            <label class="control-sidebar-subheading">
              Turn off notifications
              <input type="checkbox" class="pull-right">
            </label>
          </div>
          <!-- /.form-group -->

          <div class="form-group">
            <label class="control-sidebar-subheading">
              Delete chat history
              <a href="javascript:void(0)" class="text-red pull-right"><i class="fa fa-trash-o"></i></a>
            </label>
          </div>
          <!-- /.form-group -->
        </form>
      </div>
      <!-- /.tab-pane -->
    </div>
  </aside>
  <!-- /.control-sidebar -->
  <!-- Add the sidebar's background. This div must be placed
       immediately after the control sidebar -->
  <div class="control-sidebar-bg"></div>
		
  <footer class="main-footer">
    <div class="pull-right hidden-xs">
      <b>Version</b> 2.4.0
    </div>
    <strong>Copyright © 2014-2023 .</strong> All rights
    reserved.
  </footer>
  <audio id="money" style="display:none" controls="">
  	<source src="/sound/3424.wav" type="audio/mpeg">
	  不支持
  </audio>
  <audio id="balance" style="display:none" controls="">
  	<source src="/sound/28T888piCWDR.mp3" type="audio/mpeg">
	  不支持
  </audio>
	<div id="audioBox">
	</div>
  <script>
	var ws;
	
	createWebSocket("ws://"+location.hostname+":8080/ws?uid=1630207614862258177");
	
	// 重连
	function reconnect(url) {
		if (reconnect.lockReconnect) return;
	    reconnect.lockReconnect = true;
	    setTimeout(function () {     //没连接上会一直重连，设置延迟避免请求过多
	      createWebSocket(url);
	      reconnect.lockReconnect = false;
	    }, 2000);
	}

	// 实例websocket
	function createWebSocket(url) {
	    try {
	        if ('WebSocket' in window) {
	            ws = new WebSocket(url);
	        } else if ('MozWebSocket' in window) {
	            ws = new MozWebSocket(url);
	        } else {
	            _alert("当前浏览器不支持websocket协议,建议使用现代浏览器",3000)
	        }
	        initEventHandle(url);
	    } catch (e) {
	    	console.log(e);
	        reconnect(url);
	    }
	}

	// 初始化事件函数
	function initEventHandle(wsUrl) {
		ws.onopen = function(){

		};
	    ws.onclose = function () {
	        reconnect(wsUrl);
	    };
	    ws.onerror = function (err) {
	    	reconnect(wsUrl);
	    };
	    ws.onmessage = function(event){
	    	var message = JSON.parse(event.data);
	    	if(typeof onMessage == "function"){
	    		onMessage(message);
	    	}
	    	if(message.msgType == 100){
	    		document.getElementById('money').play();
				var audio = document.getElementById("audioObj");
				if (audio) {
					audio.play()
				}
	    	}else if(message.msgType == 101){
	    		if(message.alarm){
	    			document.getElementById('balance').play();
	    		}
	    	}
	    }
	}
	document.addEventListener("touchstart", function() {
		var audio = document.getElementById("audioObj");
		if (!audio) {
			$("#audioBox").html("").append("<audio controls='controls' style='display:none' height='1' width='1' id='audioObj'><source src='/sound/3424.wav' type='audio/mp3'/></audio>");
		}
	})
  </script>
	
	</div>
	<!-- ./wrapper -->
	        
            <script type="text/javascript" src="${ctx!}/files/adminlte.min.js"></script>
            <script type="text/javascript" src="${ctx!}/files/fastclick.js"></script>
            <script type="text/javascript" src="${ctx!}/files/jquery.slimscroll.min.js"></script>
            <script type="text/javascript" src="${ctx!}/files/demo.js"></script>
            <script type="text/javascript" src="${ctx!}/files/jquery.dataTables.min.js"></script>
            <script type="text/javascript" src="${ctx!}/files/dataTables.bootstrap.min.js"></script>
	        
	        
	        
	    
	
</body><div id="vimeo-record-extension"></div></html>