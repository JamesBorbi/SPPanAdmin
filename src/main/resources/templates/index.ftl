<!DOCTYPE html>
<html lang="zh-CN" xmlns:th="http://www.thymeleaf.org">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>菊花🌸殿堂🌈接推广</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f4f4f4;
            color: #333;
        }
        .container {
            width: 100%;
            max-width: 600px;
            margin: 0 auto;
            padding: 15px;
            background-color: #fff;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
        }
        .user-info {
            padding-bottom: 15px;
            border-bottom: 1px solid #eaeaea;
        }
        .user-info .username {
            font-weight: bold;
            color: #333;
        }
        .user-stats {
            margin-top: 10px;
            font-size: 0.9em;
        }
        .post-list {
            margin-top: 20px;
        }
        .post {
            margin-bottom: 15px;
            padding-bottom: 15px;
            border-bottom: 1px solid #eaeaea;
        }
        .post .content {
            margin-top: 10px;
        }
        .post .content-warning {
            color: #f00;
            margin-top: 10px;
            font-weight: bold;
        }
        .post .stats {
            margin-top: 10px;
            font-size: 0.9em;
        }
        /* Responsive design */
        @media (max-width: 767px) {
            .container {
                padding: 10px;
            }
            .user-info .username {
                font-size: 1.2em;
            }
            .user-stats {
                font-size: 0.8em;
            }
            .post .stats {
                font-size: 0.8em;
            }
        }
    </style>
</head>
<body>
<div class="container">
    <div class="user-info">
        <span class="username" th:text="${user.username}">菊花🌸殿堂🌈接推广</span>            <div class="user-stats">                <span>Joined <span th:text="${user.joinedDate}">September 2019</span></span>
            <span> | Following: <span th:text="${user.followingCount}">94</span></span>                <span> | Followers: <span th:text="${user.followersCount}">80.5K</span></span>
        </div>
    </div>
    <div class="post-list">
        <div class="post" th:each="post : ${posts}">                <div class="content" th:utext="${post.content}">这里是帖子内容</div>
            <div class="content-warning" th:if="${post.contentWarning}">Content warning: Nudity</div>                <div class="stats">                    <span th:text="${post.likesCount}">347</span> likes -
                <span th:text="${post.repliesCount}">2K</span> replies -                     <span th:text="${post.mediaCount}">17K</span> media
            </div>
        </div>
    </div>
</div>
</body>
</html>