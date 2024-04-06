<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0">

    <title> - LOGIN</title>
    <meta name="keywords" content="">
    <meta name="description" content="">
    <link rel="icon" href="${ctx!}/assets/images/ico.png" type="image/x-icon">
    <link href="${ctx!}/assets/css/bootstrap.min.css" rel="stylesheet">
    <link href="${ctx!}/assets/css/font-awesome.css?v=4.4.0" rel="stylesheet">
    <link href="${ctx!}/assets/css/animate.css" rel="stylesheet">
    <link href="${ctx!}/assets/css/style.css" rel="stylesheet">
    <link href="${ctx!}/assets/css/login.css" rel="stylesheet">
    <!--[if lt IE 9]>
    <meta http-equiv="refresh" content="0;ie.html" />
    <![endif]-->
    <script>
        if (window.top !== window.self) {
            window.top.location = window.location;
        }
    </script>

</head>

<body class="signin">
    <div class="signinpanel">
        <div class="row">
            <div class="col-sm-12">
            	<#if message?exists >
	            	<div class="alert alert-danger">
	                    ${message!}
	                </div>
                </#if>
                <form method="post" action="${ctx!}/admin/login" id="frm">
<#--                    <h4 class="no-margins">LOGIN：</h4>-->
<#--                    <p class="m-t-md">登录到H+后台主题UI框架</p>-->
                    <input type="text" class="form-control uname" name="username" id="username" placeholder="Email/Phone" />
                    <input type="password" class="form-control pword m-b" name="oldpassword" id="oldpassword"  placeholder="Oldpassword" />
                    <input type="password" class="form-control pword m-b" name="password" id="password"  placeholder="Password" />
                    <input type="hidden" name="submitType" id="submitType"  />
                    <br>
                    <span style="color: #0d8ddb" id="forgetpassword">Forget password ？    </span>
                    <span style="color: #0d8ddb" id="createanaccount" >Create an account    </span>
                    <span style="color: #0d8ddb" id="existingaccount" >Existing account</span>
                    <button id="loginin" class="btn btn-success btn-block">Login in</button>
                    <button id="creat" class="btn btn-success btn-block">Creat</button>
                    <button id="reset" class="btn btn-success btn-block">Reset</button>
                </form>
            </div>
        </div>
        <div class="signup-footer">
            <div class="pull-left">
                &copy; X
            </div>
        </div>
    </div>







     <!-- 全局js -->
    <script src="${ctx!}/assets/js/jquery.min.js?v=2.1.4"></script>
    <script src="${ctx!}/assets/js/bootstrap.min.js?v=3.3.6"></script>

    <!-- 自定义js -->
    <script src="${ctx!}/assets/js/content.js?v=1.0.0"></script>

    <!-- jQuery Validation plugin javascript-->
    <script src="${ctx!}/assets/js/plugins/validate/jquery.validate.min.js"></script>
    <script src="${ctx!}/assets/js/plugins/validate/messages_zh.min.js"></script>
	<script type="text/javascript">
    // 登陆类型:1登陆 2创建 3重置密码
    $("#loginin").click(function() {
        $("#submitType").val(1);
    });
    $("#creat").click(function() {
        $("#submitType").val(2);
    });
    $("#reset").click(function() {
        $("#submitType").val(3);
    });
    $().ready(function() {
    	// 在键盘按下并释放及提交后验证提交表单
    	  $("#frm").validate({
    	    rules: {
    	      username: {
    	        required: true,
    	        minlength: 2
    	      },
    	      password: {
    	        required: true,
    	        minlength: 5
    	      }
    	    },
    	    messages: {
    	      username: {
    	        required: "Please enter your username",
    	        minlength: "The user name must consist of two letters"
    	      },
    	      password: {
    	        required: "Please enter password",
    	        minlength: "The password cannot be less than 6 characters"
    	      }
    	    },
    	    submitHandler:function(form){
                form.submit();
            } 
    	});

        //登陆界面
        $("#oldpassword").hide();

        $("#creat").hide();
        $("#reset").hide();
        $("#createanaccount").show();
        $("#existingaccount").hide();
    });



    // 切换重置密码表单
    $("#forgetpassword").click(function() {

        $("#oldpassword").show();

        $("#creat").hide();
        $("#reset").show();
        $("#loginin").hide();

        $("#createanaccount").hide();
        $("#forgetpassword").hide();
        $("#existingaccount").show();
    });
    // 切换登陆表单
    $("#existingaccount").click(function() {

        $("#oldpassword").hide();

        $("#creat").hide();
        $("#reset").hide();
        $("#loginin").show();

        $("#createanaccount").show();
        $("#forgetpassword").show();
        $("#existingaccount").hide();
    });

    // 切换到创建表单
    $("#createanaccount").click(function() {

        $("#oldpassword").hide();

        $("#creat").show();
        $("#reset").hide();
        $("#loginin").hide();

        $("#createanaccount").hide();
        $("#forgetpassword").show();
        $("#existingaccount").show();
    });


    </script>
</body>

</html>
