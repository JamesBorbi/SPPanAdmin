<!DOCTYPE html>
<html lang="zh-CN" xmlns:th="http://www.thymeleaf.org">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>X</title>
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
            max-width: 600px;
            margin: 0 auto;
            padding: 20px;
            background-color: #fff;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
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
            margin-bottom: 20px;
            background-color: #f9f9f9;
            padding: 15px;
            border-radius: 4px;
            border: 1px solid #eaeaea;
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
            margin-top: 15px;
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
        }
    </style>
</head>

<body>
<div class="container">
    <div class="user-info">
        <div class="username">隔壁老黄@laohuang1069</div>
        <div class="user-stats">22h | 63K 粉丝</div>
    </div>
    <!-- 滚动到此处时，加载更多帖子 -->
    <div id="load-more-marker"></div>
</div>

<!-- 用于存放新加载的帖子 -->
<div class="container" id="posts-container"></div>


<!-- 全局js -->
<script src="${ctx!}/assets/js/jquery.min.js?v=2.1.4"></script>
<script src="${ctx!}/assets/js/bootstrap.min.js?v=3.3.6"></script>

<!-- Bootstrap table -->
<script src="${ctx!}/assets/js/plugins/bootstrap-table/bootstrap-table.min.js"></script>
<script src="${ctx!}/assets/js/plugins/bootstrap-table/bootstrap-table-mobile.min.js"></script>
<script src="${ctx!}/assets/js/plugins/bootstrap-table/locale/bootstrap-table-zh-CN.min.js"></script>


<!-- Peity -->
<script src="${ctx!}/assets/js/plugins/peity/jquery.peity.min.js"></script>

<script src="${ctx!}/assets/js/plugins/layer/layer.min.js"></script>

<!-- 自定义js -->
<script src="${ctx!}/assets/js/content.js?v=1.0.0"></script>

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
        // 检查是否滚动到顶部且没有正在进行的加载操作
        if ($(window).scrollTop() <= 100 && !isLoading) {
            isLoading = true; // 标记开始加载数据
            pageIndex++;
            loadPosts(pageIndex, pageSize).always(function() {
                isLoading = false; // 完成加载后重置标志
            });
        }
    }
    function loadPosts(pageIndex, pageSize) {
        $.ajax({
            url: 'http://localhost:80/x/tbx/selectPage',
                type: 'POST',
                contentType: 'application/json',
                dataType: 'json',
                data: JSON.stringify({
                pageIndex: pageIndex,
                pageSize: pageSize,
            }),
                success: function(response) {
                if (response.records.length > 0) {
                    // 清空旧的加载标记
                    $('#load-more-marker').remove();
                    // 创建新的加载标记
                    var newMarker = $('<div>').attr('id', 'load-more-marker');
                    $('#posts-container').append(newMarker);
                    // 将新加载的帖子添加到页面中
                    $.each(response.records, function(index, post) {
                    var newPost = $('<div>').addClass('post');
                    newPost.append($('<div>').addClass('title').text('@ '+post.title));
                    newPost.append($('<div>').addClass('content').text(post.comment));
                    // 创建一个img元素并设置src属性
                    var imageElement = $('<img>').addClass('image').attr('src', post.mediaUrl);
                    // 将图片元素添加到新创建的帖子div中
                    newPost.append(imageElement);
                    // 根据需要添加其他帖子信息
                    $('#posts-container').append(newPost);
                    });
                } else {
                    // 没有更多帖子时，显示提示信息
                    $('#posts-container').append('<p>No more posts to load.</p>');
            }
        },
        error: function() {
            console.log('Error loading posts');
            isLoading = false; // 如果请求失败，重置加载标志
        }
    });
    }
</script>

</body>

</html>