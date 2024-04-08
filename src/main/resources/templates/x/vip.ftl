<!DOCTYPE html>
<html lang="zh-CN" xmlns:th="http://www.thymeleaf.org" xmlns="http://www.w3.org/1999/html">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>X</title>
    <link rel="icon" href="${ctx!}/assets/images/ico.png" type="image/x-icon">
    <link href="${ctx!}/assets/css/bootstrap.min.css?v=3.3.6" rel="stylesheet">
    <!-- 引入Lightbox样式 -->
    <link href="${ctx!}/assets/css/lightbox.css" rel="stylesheet">
    <!-- 自定义样式 -->
    <style>
        body {
            font-family: 'Arial', sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f4f4f4;
            color: #333;
        }

        .container {
            width: 100%;
            max-width: 800px;
            margin: 0 auto;
            padding: 20px;
            background-color: #FFFFFF;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }
        .title-container {
            width: 100%;
            max-width: 800px;
            margin: 0 auto;
            padding: 20px;
            background-image: url('${ctx!}/assets/images/img.png');
            /* 设置背景图片 */
            background-size: cover;
            /* 确保背景图片覆盖整个容器 */
            background-repeat: no-repeat;
            /* 背景图片不重复 */
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            position: relative;
            /* 为圆圈图片设置相对定位 */
        }
        /* 添加一个新的类来创建圆圈图片 */
        .title-container::before {
            content: '';
            /* 必须设置，否则伪元素不会显示 */
            display: block;
            position: absolute;
            /* 绝对定位 */
            left: 20px;
            /* 距离左边的距离 */
            top: 20px;
            /* 距离顶部的距离 */
            width: 50px;
            /* 圆圈的宽度 */
            height: 50px;
            /* 圆圈的高度 */
            background-image: url('${ctx!}/assets/images/ico.png');
            /* 使用同样的背景图片 */
            background-size: cover; /* 确保图片覆盖整个圆圈 */
            border-radius: 50%; /* 圆圈的边框圆角 */
        }

        .user-info {
            display: flex;
            align-items: center;
            margin-bottom: 20px;
        }

        .username {
            font-weight: bold;
            color: #333;
            flex-grow: 1;
            margin: 0;
        }

        .user-stats {
            font-size: 0.9em;
            color: #888;
            margin-left: auto;
        }

        .post {
            /*margin-bottom: 20px;*/
            /*background-color: #f9f9f9;*/
            /*padding: 15px;*/
            /*border-radius: 4px;*/
            /*border-top: 1px solid #eaeaea;*/
            width: 100%;
            border-bottom: 1px solid #eaeaea;
            position: relative;
        }

        .post .title {
            font-size: 1.5em;
            margin-bottom: 10px;
            color: #111111;
        }

        .post .content {
            margin-bottom: 15px;
        }

        .post .image {
            /*margin-top: 15px;*/
            text-align: center;
        }

        .post img {
            max-width: 100%;
            height: auto;
            border-radius: 4px;
        }

        .post .content-warning {
            color: #f00;
            margin-top: 10px;
            font-weight: bold;
        }

        .post .stats {
            margin-top: 10px;
            font-size: 0.9em;
            color: #888;
            position: absolute;
            bottom: 15px;
            left: 15px;
        }

        /* Responsive design */
        @media (max-width: 767px) {
            .container {
                padding: 15px;
            }

            .post {
                padding: 10px;
            }
            .video {
                /* 在小屏幕上的视频样式，例如可以设置一个固定的最大宽度 */
                max-width: 100%;
            }
        }

        /* Lightbox样式 */
        /*.lightbox-img {*/
        /*    max-width: 100%;*/
        /*    height: auto;*/
        /*}*/

        /* 缩略图样式 */
        .thumbnail {
            border-radius: 10px;
            overflow: hidden;
            position: relative;
            padding:0px;
        }

        .thumbnail img {
            transition: transform 0.3s ease-in-out;
        }

        .thumbnail:hover img {
            transform: scale(1.1);
        }

        .thumbnail:before {
            content: "";
            display: block;
            position: absolute;
            top: 0;
            left: 0;
            right: 0;
            bottom: 0;
            background: rgba(0, 0, 0, 0.5);
            z-index: 1;
            opacity: 0;
            transition: opacity 0.3s ease-in-out;
        }

        .thumbnail:hover:before {
            opacity: 1;
        }

        .thumbnail-text {
            position: absolute;
            bottom: 10px;
            left: 10px;
            color: #fff;
            z-index: 2;
        }
        .video {
            width: 100%; /* 视频宽度设置为100%，填满容器 */
            height: auto; /* 高度自动，保持视频的宽高比 */
            border-radius: 10px; /* 视频边框圆角 */
        }
        .no-more-posts {
            display: flex; /* 使用Flexbox布局 */
            justify-content: center; /* 水平居中 */
            align-items: center; /* 垂直居中 */
            height: 100%; /* 容器高度占满可用空间 */
        }
        /* 设置 post.userName 和 post.tweetDate 的样式 */
        .post .meta {
            font-size: 14px; /* 设置为小五号字体大小 */
            color: #888; /* 设置字体颜色为灰色 */
            font-weight: normal; /* 可选：设置字体为正常粗细 */
        }

        /* 头部图标样式，假设图标元素的类名为 "header-icon" */
        .header-icon {
            text-transform: uppercase; /* 将文本转换为大写 */
            font-size: 20px; /* 可选：设置图标大小 */
        }

        /* 弹窗样式 */
        .modal {
            display: none; /* 默认不显示 */
            position: fixed; /* 固定定位 */
            left: 0;
            top: 0;
            width: 100%;
            height: 100%;
            background-color: rgba(0, 0, 0, 0.5); /* 半透明背景 */
            z-index: 100; /* 确保弹窗在最上层 */
            justify-content: center; /* 水平居中 */
            align-items: center; /* 垂直居中 */
            display: flex; /* 使用Flexbox布局 */
        }
        /*.modal-content {*/
        /*    background-color: #fff;*/
        /*    padding: 20px;*/
        /*    border-radius: 4px;*/
        /*    z-index: 101; !* 确保内容显示在背景之上 *!*/
        /*    max-width: 300px; !* 最大宽度 *!*/
        /*    text-align: center; !* 文本居中 *!*/
        /*}*/
        .qrCode {
            background-color: #fff;
            padding: 0px;
            border-radius: 4px;
            z-index: 101; /* 确保内容显示在背景之上 */
            max-width: 300px; /* 最大宽度 */
            text-align: center; /* 文本居中 */
        }
        /* 遮罩层样式，防止点击穿透 */
        .overlay {
            position: fixed;
            left: 0;
            top: 0;
            width: 100%;
            height: 100%;
            background-color: rgba(0, 0, 0, 0.5);
            z-index: 99;
        }

        /* 下拉菜单样式 */
        .dropdown {
            position: relative;
            display: inline-block;
        }

        .dropdown-content {
            display: none;
            position: absolute;
            background-color: rgba(249, 249, 249, 0.91);
            min-width: 20px;
            box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
            z-index: 1;
        }

        .dropdown-content a {
            color: rgba(86, 73, 73, 0.84);
            padding: 12px 16px;
            text-decoration: none;
            display: block;
            font-size: 0.9em;
        }

        .dropdown-content a:hover {
            background-color: #f1f1f1;
        }

        .dropdown:hover .dropdown-content {
            display: block;
        }

        #posts-container {
            margin-top: 20px;
            padding: 15px;
            background-color: #fff;
            border-radius: 4px;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
            font-size: 1.1rem; /* 增大字体大小 */
            line-height: 1.6;
            text-align: left; /* 字体左对齐 */
        }

        #posts-container p {
            margin: 10px 0; /* 增加段落间距 */
        }

        #posts-container .note {
            color: #888; /* 注部分字体为灰色 */
            font-size: 0.9rem; /* 可以适当调整注释字体大小 */
        }

        /* 为响应式设计添加媒体查询 */
        @media (max-width: 767px) {
            #posts-container {
                font-size: 1rem;
            }
            #posts-container .note {
                font-size: 0.9rem;
            }
        }
        /* 按钮样式 */
        .donate-btn {
            display: inline-block;
            padding: 3px 8px;
            margin: 0 5px;
            background-color: #73e077;
            color: white;
            font-size: 1rem;
            border: none;
            cursor: pointer;
            border-radius: 4px;
        }

        /* 弹出窗口样式 */
        .modal {
            display: none; /* 默认不显示 */
            position: fixed;
            left: 0;
            top: 0;
            width: 100%;
            height: 100%;
            background-color: rgba(0, 0, 0, 0.5); /* 半透明背景 */
            z-index: 100; /* 确保弹窗在最上层 */
            justify-content: center; /* 水平居中 */
            align-items: center; /* 垂直居中 */
            display: flex;
        }


        .close {
            position: absolute;
            right: 20px;
            font-size: 30px;
            font-weight: bold;
            cursor: pointer;
        }

    </style>
</head>

<body>

<div class="title-container">
    <div class="user-info">
<#--        <div class="username">X</div>-->
        <div class="user-stats"></div>
        <!-- 下拉菜单 -->
        <div class="dropdown" id="userDropdown">
            <button class="dropbtn user-stats">
            <span id="xusername">X-LOGIN</span>
            </button>
            <div class="dropdown-content">
                <a href="${ctx!}/index" id="Home">Home</a>
                <a href="${ctx!}/admin/login" id="Login">Login</a>
                <a href="${ctx!}/admin/logout" id="Quit">Quit</a>
                <a href="${ctx!}/x/vip" id="vip">Vip</a>
            </div>
        </div>
    </div>

    </div>
    <!-- 滚动到此处时，加载更多帖子 -->
    <div id="load-more-marker"></div>
</div>

<!-- 用于存放新加载的帖子 -->
<div class="container" id="posts-container">
    <p>Please leave if you are under 18 years old.</p>
    <p>Weekly membership: $9.9</p>
    <p>Quarterly membership: $19.9</p>
    <p>Semi-annual membership: $29.9</p>
    <p>Annual membership: $59.9</p>

    <p>Donate:
        <button class="donate-btn" data-qr-src="${ctx!}/assets/images/ailipay2.jpg">PayPal</button>
        <button class="donate-btn" data-qr-src="${ctx!}/assets/images/ailipay1.jpg">Alipay</button>
<#--        <button class="donate-btn" data-qr-src="path/to/wechat-qr.png">WeChat</button>-->
    </p>

    <p>After making a donation, please send an edited content [username + screenshot] to the email: asianmalestyle@outlook.com, and it will be processed within 24 hours.</p>
    <p>If you have any questions, please send an email to asianmalestyle@outlook.com. We will handle it within 24 hours.</p>
    <p class="note">⚠️Note: Donations are used for the operation of the website. Please confirm clearly before donating.</p>
</div>

<!-- 弹出二维码的HTML，初始时隐藏 -->
<div id="qrModal" class="modal">
    <div class="modal-content">
        <span class="close">&times;</span>
        <img class="qrCode" id="qrCode" src="" alt="QR Code">
<#--        <p id="qrDesc">Scan the QR code to donate.</p>-->
    </div>
</div>


<!-- 全局js -->
<script src="${ctx!}/assets/js/jquery.min.js?v=2.1.4"></script>
<script src="${ctx!}/assets/js/bootstrap.min.js?v=3.3.6"></script>

<!-- Lightbox -->
<script src="${ctx!}/assets/js/lightbox.js"></script>

<script>

    //------------------右上角登陆------------------
    var userName = '<@shiro.principal property="userName"/>';
    if(userName === ''){
        $("#xusername").text('X-LOGIN')
    }else {
        $("#xusername").text(userName)
    }

    $("#xusername").click(function() {

        if(userName === ''){
            $("#xusername").show();
            $("#Login").show();
            $("#Quit").hide();
            $("#vip").hide();
        }else {
            $("#xusername").show();
            $("#Login").hide();
            $("#Quit").show();
            $("#vip").show();
        }

    });
//------------pay page----------------
    // 隐藏弹出窗口
    var modal = document.getElementById('qrModal');
    modal.style.display = 'none';
    // 获取所有捐献按钮
    var donateBtns = document.querySelectorAll('.donate-btn');

    // 为每个捐献按钮添加点击事件监听器
    donateBtns.forEach(function(btn) {
        btn.addEventListener('click', function() {
            // 显示弹出窗口
            var modal = document.getElementById('qrModal');
            modal.style.display = 'flex';

            // 设置二维码图片源
            var qrCode = document.getElementById('qrCode');
            qrCode.src = btn.getAttribute('data-qr-src');

            // 添加关闭按钮的点击事件监听器
            var closeBtn = document.querySelector('.close');
            closeBtn.addEventListener('click', function() {
                modal.style.display = 'none'; // 隐藏弹出窗口
            });

            // 添加点击背景关闭弹出窗口的功能
            var overlay = document.querySelector('.modal');
            overlay.addEventListener('click', function(event) {
                if (event.target === overlay) {
                    modal.style.display = 'none'; // 隐藏弹出窗口
                }
            });
        });
    });
</script>
</body>

</html>
