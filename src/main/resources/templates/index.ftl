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
        .modal-content {
            background-color: #fff;
            padding: 20px;
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

        .dropdown-btn {
            background-color: #4CAF50;
            color: white;
            padding: 16px 20px;
            font-size: 16px;
            border: none;
            cursor: pointer;
        }

        /* 登录表单样式 */
        .modal {
            /* 其他样式... */
        }

        .modal-content {
            /* 其他样式... */
        }

        .close {
            position: absolute;
            right: 25px;
            font-size: 35px;
            font-weight: bold;
            cursor: pointer;
        }


    </style>
</head>

<body>
<!-- 弹窗 -->
<div class="modal" id="ageCheckModal" style="display: none;">
    <div class="overlay"></div> <!-- 遮罩层 -->
    <div class="modal-content">
        <p>18禁，此网站包含成人内容，请确认你已经满18岁！</p>
        <button id="confirmAge">确定</button>
        <button id="cancelAge">取消</button>
    </div>
</div>

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
                <a href="${ctx!}/admin/login" id="Login">Login</a>
                <a href="${ctx!}/admin/logout" id="Quit">Quit</a>
                <a href="${ctx!}/admin/logout" id="vip">Vip</a>
            </div>
        </div>
    </div>

    </div>
    <!-- 滚动到此处时，加载更多帖子 -->
    <div id="load-more-marker"></div>
</div>

<!-- 用于存放新加载的帖子 -->
<div class="container" id="posts-container"></div>

<!-- 全局js -->
<script src="${ctx!}/assets/js/jquery.min.js?v=2.1.4"></script>
<script src="${ctx!}/assets/js/bootstrap.min.js?v=3.3.6"></script>

<!-- Lightbox -->
<script src="${ctx!}/assets/js/lightbox.js"></script>

<script>
    // 初始化变量
    var pageIndex = 1;
    var pageSize = 5;
    var isLoading = false; // 添加一个标志来检查是否正在加载数据

    $(document).ready(function () {
        // 初始加载帖子
        loadPosts(pageIndex, pageSize);
        // 监听页面滚动
        $(window).on('scroll', handleScroll);
    });

    function handleScroll() {
        // 检查是否滚动到页面底部且没有正在进行的加载操作
        var scrollPosition = $(window).scrollTop();
        var docHeight = $(document).height();
        var windowHeight = $(window).height();
        if (scrollPosition + windowHeight >= docHeight - 100 && !isLoading) {
            isLoading = true;
            // 标记开始加载数据
            pageIndex++;
            loadPosts(pageIndex, pageSize);
        }
    }

    function loadPosts(pageIndex, pageSize) {
        $.ajax({
            url: '${ctx!}/x/tbx/selectPage',
            type: 'POST',
            contentType: 'application/json',
            dataType: 'json',
            data: JSON.stringify({
                pageIndex: pageIndex,
                pageSize: pageSize
            }),
            beforeSend: function () {
                // 可以在请求前显示加载提示
            }
        }).done(function (response) {
            if (response.records && response.records.length > 0) {
                // 将新加载的帖子添加到页面中
                var $postsContainer = $('#posts-container');
                $.each(response.records, function (index, post) {
                    // var newPost = $('<div>').addClass('post');
                    // newPost.append($('<div>').addClass('title').text(post.displayName));
                    // newPost.append($('<div>').addClass('meta').text(' ' + post.userName + ' . ' + post.tweetDate ));
                    // newPost.append($('<div>').addClass('content').text(post.tweetContent));

                    var newPost = $('<div>').addClass('post');
                    var titleDiv = $('<div>').addClass('title');
                    titleDiv.append(post.displayName); // 添加主标题文本
                    titleDiv.append($('<div>').addClass('meta').text(' ' + post.userName + ' . ' + post.tweetDate));
                    // 嵌套 meta 元素
                    newPost.append(titleDiv);
                    // 添加标题及其子元素到新帖子容器
                    newPost.append($('<div>').addClass('content').text(post.tweetContent));

                    if (post.mediaType === 'Image') {
                        // 添加图片缩略图元素，并设置点击事件
                        // var thumbnailElement = $('<a>').addClass('thumbnail').attr('href', post.mediaUrl).attr('data-lightbox', 'image-' + index);
                        // thumbnailElement.append('<img>').addClass('image').attr('src', post.mediaUrl);
                        // thumbnailElement.append('<div>').addClass('thumbnail-text').text('点击查看大图');
                        // newPost.append(thumbnailElement);

                        var aElement = $('<a>').addClass('thumbnail').attr('href', post.localMediaUrl).attr('data-lightbox', 'image-' + index);
                        var imageElement  = $('<img>').addClass('image');
                        imageElement.attr('src', post.localMediaUrl);
                        aElement.append(imageElement);
                        newPost.append(aElement);
                    } else if (post.mediaType === 'Video') {
                        // 添加视频缩略图元素，并设置点击事件
                        // var thumbnailElement = $('<div>').addClass('video-thumbnail');
                        // thumbnailElement.append('<img>').addClass('image').attr('src', post.mediaUrl).attr('data-lightbox', 'video-' + index);
                        // thumbnailElement.append('<div>').addClass('play-button').html('<i class="fas fa-play"></i>');

                        var videoElement = $('<video>').addClass('video').attr('controls', '');
                        videoElement.append($('<source>').attr('src', post.localMediaUrl).attr('type', 'video/mp4'));
                        videoElement.append('Your browser does not support the video tag.');
                        newPost.append(videoElement);


                        newPost.append(videoElement);
                    }
                    $postsContainer.append(newPost);
                });
                // 检查是否还有更多帖子可以加载
                if (pageIndex * pageSize >= response.total) {
                    // 没有更多帖子时，显示提示信息
                    var noMorePosts = $('<p>').addClass('no-more-posts').text('.END.');
                    $('#posts-container').append(noMorePosts);
                }
            } else {
                // 没有更多帖子时，显示提示信息
                // $('#posts-container').append('<p>No more posts to load.</p>');
            }
            // 完成加载后重置标志
            isLoading = false;
        }).fail(function () {
            console.log('Error loading posts');
            // 如果请求失败，重置加载标志
            isLoading = false;
        });
    }



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







//----------------------------------------------18禁弹窗----------------------------------------------
    // 检查用户是否已经做出选择
    function checkAge() {
        var ageConfirmed = localStorage.getItem('ageConfirmed');
        if (ageConfirmed === null) {
            // 如果没有做出选择，显示弹窗
            showAgeCheckModal();
        } else if (ageConfirmed === 'true') {
            // 如果用户已确认年龄，不显示弹窗
            return true;
        } else {
            // 如果用户取消，不显示弹窗
            return false;
        }
    }

    // 显示年龄确认弹窗
    function showAgeCheckModal() {
        document.getElementById('ageCheckModal').style.display = 'flex';
        document.body.style.overflow = 'hidden'; // 禁止页面滚动
    }

    // 隐藏年龄确认弹窗
    function hideAgeCheckModal() {
        document.getElementById('ageCheckModal').style.display = 'none';
        document.body.style.overflow = ''; // 恢复页面滚动
    }

    // 用户确认年龄
    function confirmAge() {
        localStorage.setItem('ageConfirmed', true);
        hideAgeCheckModal();
    }

    // 用户取消浏览
    function cancelAge() {
        localStorage.setItem('ageConfirmed', false);
        window.close(); // 关闭窗口
    }

    // 监听页面加载
    window.onload = function() {
        if (!checkAge()) {
            // 如果需要显示弹窗
            document.getElementById('confirmAge').addEventListener('click', confirmAge);
            document.getElementById('cancelAge').addEventListener('click', cancelAge);
        }
    };



</script>
</body>

</html>
