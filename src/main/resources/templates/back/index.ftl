<!DOCTYPE html>
<!-- saved from url=(0025)http://249017.pl8.cc/?v=1 -->
<html style="height: auto; min-height: 100%;"><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	        <title>首页</title>
  
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <!-- Tell the browser to be responsive to screen width -->
  <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
    		
    		
    		<link rel="shortcut icon" href="http://249017.pl8.cc/images/favicon.ico">
    		
    		
  <!-- Bootstrap 3.3.7 -->
  <link rel="stylesheet" href="./index/bootstrap.min.css">
  <!-- Font Awesome -->
  <link rel="stylesheet" href="./index/font-awesome.min.css">
  <!-- Ionicons -->
  <link rel="stylesheet" href="./index/ionicons.min.css">
  <!-- Theme style -->
  <link rel="stylesheet" href="./index/AdminLTE.min.css">
  <!-- AdminLTE Skins. Choose a skin from the css/skins
       folder instead of downloading all of them to reduce the load. -->
  <link rel="stylesheet" href="./index/_all-skins.min.css">
  
  <!-- Google Font -->
    	
            <link type="text/css" rel="stylesheet" href="./index/jquery-jvectormap.css">
            <link type="text/css" rel="stylesheet" href="./index/all.css">

    		
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
	<script src="./index/jquery.min.js"></script>
	<!-- Bootstrap 3.3.7 -->
	<script src="./index/bootstrap.min.js"></script>

    <script src="./index/template-web.js"></script>
	         
	    	 <script>
	              webCfg = {
	              staticPath: "",	             
	              contextPath: "",
	              fileServer: "",
	              outerfileServer: ""
	            };
	 		</script>
	    <style type="text/css">.jqstooltip { position: absolute;left: 0px;top: 0px;visibility: hidden;background: rgb(0, 0, 0) transparent;background-color: rgba(0,0,0,0.6);filter:progid:DXImageTransform.Microsoft.gradient(startColorstr=#99000000, endColorstr=#99000000);-ms-filter: "progid:DXImageTransform.Microsoft.gradient(startColorstr=#99000000, endColorstr=#99000000)";color: white;font: 10px arial, san serif;text-align: left;white-space: nowrap;padding: 5px;border: 1px solid white;box-sizing: content-box;z-index: 10000;}.jqsfield { color: white;font: 10px arial, san serif;text-align: left;}</style></head>
	    <body class="skin-blue sidebar-mini" style="height: auto; min-height: 100%;">
	     	
	<div class="wrapper" style="height: auto; min-height: 100%;">
	
  <header class="main-header">

    <!-- Logo -->
    <a href="/back/index.html" class="logo">
      <!-- mini logo for sidebar mini 50x50 pixels -->
      <span class="logo-mini">💪</span>
      <!-- logo for regular state and mobile devices -->
      <span class="logo-lg">管理系统</span>
    </a>

    <!-- Header Navbar: style can be found in header.less -->
    <nav class="navbar navbar-static-top">
      <!-- Sidebar toggle button-->
      <a href="http://249017.pl8.cc/?v=1#" class="sidebar-toggle" data-toggle="push-menu" role="button">
        <span class="sr-only">Toggle navigation</span>
      </a>
      <p style="padding-top:15px;display: inline-block;">
        <small style="color:#fff; font-size: 12px;">到期时间: <span id="expire">javascript:new Date();</span></small>
        <a style="display: inline-block; margin-left: 1px; padding: 2px 4px;" href="javascript:void(0);" class="btn btn-default btn-flat" data-toggle="modal" data-target="#modal-changepwd">
          修改密码
        </a>
      </p>
      <!-- Navbar Right Menu -->
      <div class="navbar-custom-menu">
        <ul class="nav navbar-nav">
          <!-- User Account: style can be found in dropdown.less -->
          <li class="dropdown user user-menu">
            <a href="http://249017.pl8.cc/?v=1#" class="dropdown-toggle" data-toggle="dropdown">
              <img src="./首页_files/user2-160x160.jpg" class="user-image" alt="User Image">
              <span class="hidden-xs">zz3375</span>
              <input type="hidden" id="userId" value="1630207614862258177">
            </a>
            <ul class="dropdown-menu">
              <!-- User image -->
              <li class="user-header">
                <img src="./index/user2-160x160.jpg" class="img-circle" alt="User Image">

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
          <h4 class="modal-title" id="modalTitle">修改密码</h4>
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
      $.post('/sys/changePassword',{oldPwd:$('#oldPwd').val(),newPwd:$('#newPwd').val()},function(ret){
        if(ret.succeed){
          $('#modal-changepwd').modal('hide');
          window.location.href = '/logout';
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
          <a href="/back/index">
            <i class="fa fa-dashboard"></i> <span>首页</span>
          </a>
        </li>
        <li>
          <a href="/back/config">
            <i class="fa fa-cog"></i> <span>配置管理</span>
          </a>
        </li>
        <li>
          <a href="/back/odds">
            <i class="fa fa-cog"></i> <span>赔率设置</span>
          </a>
        </li>
        <li>
          <a href="/back/link">
            <i class="fa fa-link"></i> <span>链接配置</span>
          </a>
        </li>
        <li>
          <a href="/back/preset">
            <i class="fa fa-cog"></i> <span>预设订单管理</span>
          </a>
        </li>
        <li>
          <a href="/back/with">
            <i class="fa fa-clone"></i> <span>跟单列表</span>
          </a>
        </li>
        <li>
          <a href="/back/member">
            <i class="fa fa-users"></i> <span>会员管理</span>
          </a>
        </li>
        <li>
          <a href="/back/operate">
            <i class="fa fa-users"></i> <span>会员操作管理</span>
          </a>
        </li>
        <li>
          <a href="/back/subaudit">
            <i class="fa fa-cny"></i> <span>上下分审核</span>
          </a>
        </li>
        <li>
          <a href="/back/order">
            <i class="fa fa-shopping-cart"></i> <span>订单查询</span>
          </a>
        </li>
        <li>
          <a href="/back/history">
            <i class="fa fa-history"></i> <span>历史记录</span>
          </a>
        </li>
        <li>
          <a href="/back/historyrecord">
            <i class="fa fa-database"></i> <span>开奖历史记录</span>
          </a>
        </li>
        <li>
          <a href="/back/lock">
            <i class="fa fa-unlock"></i> <span>登录频繁解锁</span>
          </a>
        </li>
        <li>
          <a href="/back/return">
            <i class="fa fa-backward"></i> <span>返水管理</span>
          </a>
        </li>
        <li>
          <a href="/back/eatset">
            <i class="fa fa-cog"></i> <span>吃码额度设定</span>
          </a>
        </li>
        <li>
          <a href="/back/eatloss">
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
		
	
  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper" style="min-height: 922.75px;">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
        Dashboard
        <small>Version 2.0</small>
      </h1>
      <ol class="breadcrumb">
        <li><a href="http://249017.pl8.cc/?v=1#"><i class="fa fa-dashboard"></i> Home</a></li>
        <li class="active">Dashboard</li>
      </ol>
    </section>

    <!-- Main content -->
    <section class="content">
      <!-- Info boxes -->
      <div class="row">
	      
      	<div class="col-md-3 col-sm-6 col-xs-12">
          <div class="info-box" data-url="/sys/member">
            <span class="info-box-icon bg-yellow"><i class="ion ion-ios-people-outline"></i></span>

            <div class="info-box-content">
              <span class="info-box-text">会员总数</span>
              <span class="info-box-number">10</span>
              <span class="info-box-number">${user}</span>
            </div>
            <!-- /.info-box-content -->
          </div>
          <!-- /.info-box -->
        </div>
        <!-- /.col -->
      
         <div class="col-md-3 col-sm-6 col-xs-12">
          <div class="info-box">
            <span class="info-box-icon bg-green"><i class="ion ion-ios-people-outline"></i></span>

            <div class="info-box-content">
              <span class="info-box-text">在线会员总数</span>
              <span class="info-box-number">0</span>
            </div>
            <!-- /.info-box-content -->
          </div>
          <!-- /.info-box -->
        </div>
        <!-- /.col -->

        <!-- fix for small devices only -->
        <div class="clearfix visible-sm-block"></div>

        <div class="col-md-3 col-sm-6 col-xs-12">
          <div class="info-box" data-url="/sys/amount-record">
            <span class="info-box-icon bg-red"><i class="ion ion-card"></i></span>

            <div class="info-box-content">
              <span class="info-box-text">未审核上分请求</span>
              <span class="info-box-number">0</span>
            </div>
            <!-- /.info-box-content -->
          </div>
          <!-- /.info-box -->
        </div>
        <!-- /.col -->

		  <div class="col-md-3 col-sm-6 col-xs-12">
			  <div class="info-box" data-url="/sys/amount-record">
				  <span class="info-box-icon bg-aqua"><i class="ion ion-ios-gear-outline"></i></span>

				  <div class="info-box-content">

					  <span class="info-box-number">
						  <label class="info-box-text">
							  <div class="icheckbox_minimal-blue" aria-checked="false" aria-disabled="false" style="position: relative;"><input type="checkbox" class="minimal image" data-field="autoDiscount" style="position: absolute; opacity: 0;"><ins class="iCheck-helper" style="position: absolute; top: 0%; left: 0%; display: block; width: 100%; height: 100%; margin: 0px; padding: 0px; background: rgb(255, 255, 255); border: 0px; opacity: 0;"></ins></div>
						  	关盘后自动反水
						  </label>
						  <label class="info-box-text">
							  <div class="icheckbox_minimal-blue" aria-checked="false" aria-disabled="false" style="position: relative;"><input type="checkbox" class="minimal image" data-field="openReplyHls" style="position: absolute; opacity: 0;"><ins class="iCheck-helper" style="position: absolute; top: 0%; left: 0%; display: block; width: 100%; height: 100%; margin: 0px; padding: 0px; background: rgb(255, 255, 255); border: 0px; opacity: 0;"></ins></div>
						  	网页群回流水
						  </label>
						  <label class="info-box-text">
							  <div class="icheckbox_minimal-blue" aria-checked="false" aria-disabled="false" style="position: relative;"><input type="checkbox" class="minimal image" data-field="openCancel" style="position: absolute; opacity: 0;"><ins class="iCheck-helper" style="position: absolute; top: 0%; left: 0%; display: block; width: 100%; height: 100%; margin: 0px; padding: 0px; background: rgb(255, 255, 255); border: 0px; opacity: 0;"></ins></div>
						  	开启退码
						  </label>
						  <label class="info-box-text">
							  <div class="icheckbox_minimal-blue checked" aria-checked="false" aria-disabled="false" style="position: relative;"><input type="checkbox" class="minimal image tuima" data-field="groupImage" checked="" style="position: absolute; opacity: 0;"><ins class="iCheck-helper" style="position: absolute; top: 0%; left: 0%; display: block; width: 100%; height: 100%; margin: 0px; padding: 0px; background: rgb(255, 255, 255); border: 0px; opacity: 0;"></ins></div>
						  	群发图
						  </label>
						  <label class="info-box-text">
						  	<div class="icheckbox_minimal-blue" aria-checked="false" aria-disabled="false" style="position: relative;"><input type="checkbox" class="minimal image zhuanfatu" data-field="forwardImage" style="position: absolute; opacity: 0;"><ins class="iCheck-helper" style="position: absolute; top: 0%; left: 0%; display: block; width: 100%; height: 100%; margin: 0px; padding: 0px; background: rgb(255, 255, 255); border: 0px; opacity: 0;"></ins></div>
						  	转发图
						  </label>
						  <label class="info-box-text">
						  	<div class="icheckbox_minimal-blue" aria-checked="false" aria-disabled="false" style="position: relative;"><input type="checkbox" class="minimal image" data-field="privateImage" style="position: absolute; opacity: 0;"><ins class="iCheck-helper" style="position: absolute; top: 0%; left: 0%; display: block; width: 100%; height: 100%; margin: 0px; padding: 0px; background: rgb(255, 255, 255); border: 0px; opacity: 0;"></ins></div>
						  	私发图
						  </label>
						  <label class="info-box-text">
						  	<div class="icheckbox_minimal-blue checked" aria-checked="false" aria-disabled="false" style="position: relative;"><input type="checkbox" class="minimal image" data-field="privateMode" checked="" style="position: absolute; opacity: 0;"><ins class="iCheck-helper" style="position: absolute; top: 0%; left: 0%; display: block; width: 100%; height: 100%; margin: 0px; padding: 0px; background: rgb(255, 255, 255); border: 0px; opacity: 0;"></ins></div>
						  	开启私聊
						  </label>
						  <label class="info-box-text">
						  	<div class="icheckbox_minimal-blue checked" aria-checked="false" aria-disabled="false" style="position: relative;"><input type="checkbox" class="minimal image" data-field="pullEnable" checked="" style="position: absolute; opacity: 0;"><ins class="iCheck-helper" style="position: absolute; top: 0%; left: 0%; display: block; width: 100%; height: 100%; margin: 0px; padding: 0px; background: rgb(255, 255, 255); border: 0px; opacity: 0;"></ins></div>
						  	网页群
						  </label>
						  <label class="info-box-text">
						  	<div class="icheckbox_minimal-blue checked" aria-checked="false" aria-disabled="false" style="position: relative;"><input type="checkbox" class="minimal image saoma" data-field="wechatProxyEnabled" checked="" style="position: absolute; opacity: 0;"><ins class="iCheck-helper" style="position: absolute; top: 0%; left: 0%; display: block; width: 100%; height: 100%; margin: 0px; padding: 0px; background: rgb(255, 255, 255); border: 0px; opacity: 0;"></ins></div>
						  	扫码
						  </label>
						  <label class="info-box-text">
						  	<div class="icheckbox_minimal-blue" aria-checked="false" aria-disabled="false" style="position: relative;"><input type="checkbox" class="minimal image" data-field="dailyClear" style="position: absolute; opacity: 0;"><ins class="iCheck-helper" style="position: absolute; top: 0%; left: 0%; display: block; width: 100%; height: 100%; margin: 0px; padding: 0px; background: rgb(255, 255, 255); border: 0px; opacity: 0;"></ins></div>
						  	每天自动清理流水
						  </label>

						  <label class="info-box-text">
						  	<div class="icheckbox_minimal-blue" aria-checked="false" aria-disabled="false" style="position: relative;"><input type="checkbox" class="minimal image wangka" data-field="wangkaEnable" style="position: absolute; opacity: 0;"><ins class="iCheck-helper" style="position: absolute; top: 0%; left: 0%; display: block; width: 100%; height: 100%; margin: 0px; padding: 0px; background: rgb(255, 255, 255); border: 0px; opacity: 0;"></ins></div>
						  	网咔模式
						  </label>

						  <label class="info-box-text">
						  	<div class="icheckbox_minimal-blue" aria-checked="false" aria-disabled="false" style="position: relative;"><input type="checkbox" class="minimal image" data-field="delayOrder" style="position: absolute; opacity: 0;"><ins class="iCheck-helper" style="position: absolute; top: 0%; left: 0%; display: block; width: 100%; height: 100%; margin: 0px; padding: 0px; background: rgb(255, 255, 255); border: 0px; opacity: 0;"></ins></div>
						  	延迟跟单
						  </label>


					  </span>
				  </div>
				  <!-- /.info-box-content -->
			  </div>
			  <!-- /.info-box -->
		  </div>
		  <!-- /.col -->

      </div>
      <!-- /.row -->

      <div class="row">
	     
      	<div class="col-md-8 col-sm-6 col-xs-12">
          <div class="info-box">
            <span class="info-box-icon bg-green"><i class="ion ion-chatbubbles"></i></span>

            <div class="info-box-content">
              <span class="info-box-text">微信</span>
              <span class="info-box-number">
	             <button class="btn btn-small btn-primary" onclick="userAction(&#39;login&#39;)">登录微信</button>
              </span>
            </div>
            <!-- /.info-box-content -->
          </div>
          <!-- /.info-box -->
        </div>
        <!-- /.col -->
      
      <div class="col-md-4 col-sm-6 col-xs-12">
          <div class="info-box">
            <span class="info-box-icon bg-red"><i class="ion ion-power"></i></span>

            <div class="info-box-content">
              <span class="info-box-text">启动状态</span>
              <div class="icheckbox_minimal-blue" aria-checked="false" aria-disabled="false" style="position: relative;"><input type="checkbox" class="minimal startup" style="position: absolute; opacity: 0;"><ins class="iCheck-helper" style="position: absolute; top: 0%; left: 0%; display: block; width: 100%; height: 100%; margin: 0px; padding: 0px; background: rgb(255, 255, 255); border: 0px; opacity: 0;"></ins></div>
            </div>
            <!-- /.info-box-content -->
          </div>
          <!-- /.info-box -->
        </div>
        <!-- /.col -->
      
      </div>
      <!-- /.row -->
      
    </section>
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->
 
    <div class="modal fade" id="modal-default">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">×</span></button>
                    <h4 class="modal-title">提示信息(<span id="tip" style="color:#F00; font-size:15px"></span>)</h4>
                </div>
                <div id="modal-body" class="modal-body" style="text-align:center">
                    
                </div>
                <div class="modal-footer">
                    <button type="button" id="modal-ok" class="btn btn-primary" data-dismiss="modal">确定</button>
                </div>
            </div>
            <!-- /.modal-content -->
        </div>
        <!-- /.modal-dialog -->
    </div>
    <!-- /.modal -->


	<div>
		<div class="modal fade" id="confirmModel" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">

						<h2 class="modal-title">
							提示
						</h2>
						<h4 id="confirmLabel">不换微信号，请点立即登录或二次扫码登录微信，是否要更换微信号做机器人?</h4>
					</div>
					<input type="hidden" id="dataId">
					<div class="modal-footer form-inline">
						<input type="button" class="btn btn-info  form-control" data-dismiss="modal" aria-hidden="true" value="取消">
						<input type="button" class="btn btn-danger form-control" value="确认" id="btnConfirm" data-dismiss="modal">
					</div>
				</div>
			</div>
		</div>

	</div>
    
  <script>
  	$(function(){
  		$('.info-box').on('click',function(){
  			var url = $(this).data('url');
  			if(url){
  				window.location.href = url;
  			}
  		})
  		
  		//iCheck for checkbox and radio inputs
  		var $checkbox = $('input[type="checkbox"].startup');
	    $checkbox.iCheck({
	      checkboxClass: 'icheckbox_minimal-blue'
	    })
	    
	    $checkbox.on('ifClicked',function(e){
	    	var checked = e.target.checked;
    		$.post('/sys/dashboard/'+(checked?'stop':'start'),{},function(ret){
    			if(ret.succeed){
    				if(checked){
    					//$checkbox.iCheck("uncheck");
    				}else{
    					//$checkbox.iCheck("check");
    				}
    				alert('操作成功');
    			}else{
    				alert(ret.message);
					if(checked){
						$checkbox.iCheck("check");
					}else{
						$checkbox.iCheck("uncheck");
					}
    			}
    		},'json');
	    });

	    var $imageCheckbox = $('input[type="checkbox"].image');
		$imageCheckbox.iCheck({
			checkboxClass: 'icheckbox_minimal-blue'
		})

		$imageCheckbox.on('ifClicked',function(e){
			if ($(this).hasClass("saoma") && e.target.checked) {
				location.reload();
				return;
			}

			if ($(this).hasClass("zhuanfatu") && !e.target.checked) {
				location.reload();
				return;
			}

			var param = {};
			param.id = "1630207614879035393";
			param[$(this).data('field')] = e.target.checked?"0":"1";

			$.post('/sys/config/save',param,function(ret){
				if (ret.succeed == false) {
					alert(ret.message);
				}
				console.log(ret);
				location.href = "/?v=1";
			},'json');
		});


  	});
  	
  	function checkQr(){
  		$.post('/sys/wechat/checkQr',{},function(ret){
			if(ret.succeed && (ret.message == '登陆成功' || ret.data.status == 'Confirmed' || ret.data.status == '2' || ret.code == 1000)){
				window.location.href = window.location.href;
			}else{
				setTimeout(checkQr, 1000);
			}
		}, 'json');
  	}

	function checkQrAsync(){
		$.post('/sys/wechat/checkQr-async',{},function(ret){
			if(ret.succeed){
				window.location.href = window.location.href;
			}else{
				setTimeout(checkQrAsync, 1000);
			}
		}, 'json');
	}

	function getQueryVariable(url, variable) {
		var query = url.substring(url.indexOf('?')+1)
		var vars = query.split("&");
		for (var i=0;i<vars.length;i++) {
			var pair = vars[i].split("=");
			if(pair[0] == variable){return pair[1];}
		}
		return(false);
	}

	function showConfirmModel(that, confirm, title, callback) {
		$('#dataId').val($(that).attr('lang'));
		$('#confirmLabel').html(title);
		$('#btnConfirm').on('click', function() {
			$.post('/sys/wechat/unbind', {}, function (ret) {
				window.location.href = window.location.href;
			}, 'json');
		});
		$('#confirmModel').modal('show');
	}

	function login(){
		$.post('/sys/wechat/login',{},function(ret){
			if(ret.succeed){
				if(ret.async){
					loginAsync();
					return;
				}
				if(ret.data.qrCode === null){
					alert("二维码获取失败，请重新获取");
				}else{
					$('#modal-body').html('');
					$('#modal-body').append($('<img class="img-responsive  center-block"/>').attr('src', ret.data.qrCode.indexOf('weixin.qq.com')!=-1?'/qr?url='+ret.data.qrCode:ret.data.qrCode));
					$('#modal-default').modal('show');
					$('#tip').html('扫描并确认登录后，点击确定');
					$('#modal-ok').unbind('click');
					checkQr();
				}
			}else{
				alert(ret.message);
			}
		},'json');
	}

	function loginAsync(){
  		$.post("/sys/wechat/login-async",{},function(ret){
  			if(ret.succeed){
				$('#modal-body').html('');
				$('#modal-body').append($('<img class="img-responsive  center-block"/>').attr('src', ret.data));
				$('#modal-default').modal('show');
				$('#tip').html('扫描并确认登录后，点击确定');
				$('#modal-ok').unbind('click');
				checkQrAsync();
			}else{
  				setTimeout(loginAsync, 1000);
			}
		},'json')
	}

  	function userAction(action){
  		if(action == 'login'){
	  		login();
  		}else if(action == 'bindGroup'){
  			$.post('/sys/wechat/getGroupList',{},function(ret){
  				if(ret.code == '1000'){
  					var content = '<select id="groupList">';
  					$.each(ret.data.group, function(index,ele){
  						content += '<option value="'+ele.userName+'">'+(ele.nickName?ele.nickName:ele.userName)+'</option>';
  					});
  					content += '</select>';
  					$('#modal-body').html('');
  					$('#modal-body').append(content);
  					$('#modal-default').modal('show');
  					$('#tip').html('微信群需保存到通讯录');
  					$('#modal-ok').unbind('click');
	  				$('#modal-ok').bind('click', function(){
	  					var text = $('#groupList').find("option:selected").text();
	  					var val = $('#groupList').find("option:selected").val();
	  					$.post('/sys/wechat/bindGroup',{groupId:val,groupName:text},function(ret){
	  						window.location.href = window.location.href;
	  					}, 'json');
	  				});
  				}else{
  					alert(ret.message);
  				}
  			}, 'json');
  		}else if(action == 'secondlogin'){
  			$.post('/sys/wechat/'+action,{},function(ret){
  				if(ret.succeed || ret.code == 0 || ret.code == 1000){
  					if(ret.code == 1000){
  						location.reload();
					}else{
						checkQr();
					}
  				}else{
  					//alert(ret.message);
					login();
  				}
  			}, 'json');
  		}else if(action == 'unbind'){
			showConfirmModel();
		}else{
  			$.post('/sys/wechat/'+action,{},function(ret){
  				/*if(ret.succeed || ret.code == 0){
  					window.location.href = window.location.href;
  				}else{
  					alert(ret.message);
  				}*/
				window.location.href = window.location.href;
  			}, 'json');
  		}
  	}
  </script>
  
		
  <!-- Control Sidebar -->
  <aside class="control-sidebar control-sidebar-dark">
    <!-- Create the tabs -->
    <ul class="nav nav-tabs nav-justified control-sidebar-tabs">
      <li class="active"><a href="http://249017.pl8.cc/?v=1#control-sidebar-theme-demo-options-tab" data-toggle="tab"><i class="fa fa-wrench"></i></a></li><li><a href="http://249017.pl8.cc/?v=1#control-sidebar-home-tab" data-toggle="tab"><i class="fa fa-home"></i></a></li>
      <li><a href="http://249017.pl8.cc/?v=1#control-sidebar-settings-tab" data-toggle="tab"><i class="fa fa-gears"></i></a></li>
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
	        
            <script type="text/javascript" src="./index/adminlte.min.js"></script>
            <script type="text/javascript" src="./index/fastclick.js"></script>
            <script type="text/javascript" src="./index/jquery.slimscroll.min.js"></script>
            <script type="text/javascript" src="./index/demo.js"></script>
            <script type="text/javascript" src="./index/jquery.sparkline.min.js"></script>
            <script type="text/javascript" src="./index/jquery-jvectormap-1.2.2.min.js"></script>
            <script type="text/javascript" src="./index/jquery-jvectormap-world-mill-en.js"></script>
            <script type="text/javascript" src="./index/Chart.js"></script>
            <script type="text/javascript" src="./index/dashboard2.js"></script>
            <script type="text/javascript" src="./index/icheck.min.js"></script>
	        
	        
	        
	    
	
</body><div id="vimeo-record-extension"></div></html>