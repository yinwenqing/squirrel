<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>个人中心</title>
    <link rel="stylesheet" href="../css/font-awesome.min.css" />
    <link rel="stylesheet" href="../css/emoji.css" />
    <link rel="stylesheet" href="../css/userhome.css" />
    <link rel="stylesheet" href="../css/user.css" />

</head>
<body>
<div class="pre-2" id="big_img">
    <img src="http://findfun.oss-cn-shanghai.aliyuncs.com/images/head_loading.gif" class="jcrop-preview jcrop_preview_s">
</div>
<div id="cover" style="min-height: 639px;">
    <div id="user_area">
        <div id="home_header">
            <a href="/goods/homeGoods">
                <h1 class="logo"></h1>
            </a>
            <a href="/user/home">
                <div class="home"></div>
            </a>
        </div>
        <div id="user_nav">
            <div class="user_info">
                <div class="head_img">
                    <img src="<%=basePath%>img/photo.jpg">
                </div>
                <div class="big_headimg">
                    <img src="">
                </div>
                <span class="name">${cur_urser.username}</span>
                <span class="school">黑龙江科技大学</span>
                <span class="name">闲置数量：${cur_user.goodsNum}</span>

            </div>
            <div class="home_nav">
                <ul>
                    <a href="/user/basic">
                        <li class="set">
                            <div></div>
                            <span>个人设置</span>
                            <strong></strong>
                        </li>
                    </a>
                    <a href="/goods/publishGoods">
                        <li class="store">
                            <div></div>
                            <span>发布物品</span>
                            <strong></strong>
                        </li>
                    </a>
                    <a href="/user/allGoods">
                        <li class="second">
                            <div></div>
                            <span>我的闲置</span>
                            <strong></strong>
                        </li>
                    </a>
                </ul>
            </div>
        </div>
        <div id="user_content">
            <div class="share">
                <div class="publish">
                    <div class="pub_content">
                        <div class="text_pub lead emoji-picker-container">
                            <input type="text" name="text" data-emojiable="converted" class="form-control" data-type="original-input" style="display: none;"/>
                            <div class="emoji-wysiwyg-editor form-control" data-type="input" contenteditable="true"></div>
                            <i class="emoji-picker-icon emoji-picker face" data-type="picker"></i>
                            <div class="tag"></div>
                        </div>
                        <div class="img_pub">
                            <ul></ul>
                        </div>
                    </div>
                    <div class="button">
                        <span class="fa fa-image">
                            ::before
                            <input type="file" accept="image/gif,image/jpeg,image/jpg,image/png" multiple/>
                        </span>
                        <div class="checkbox">
                            <button>发 布</button>
                        </div>
                    </div>
                </div>
                <div class="share_content">
                    <div class="no_share">
                        <span>没有任何内容，去逛逛其它的吧！</span>
                    </div>
                </div>
            </div>

        </div>
    </div>
</div>
</body>
</html>