<div class="social-share column is-one-third" style="margin-left: 1.5em;" data-disabled="tencent,linkedin,douban,diandian,google">
    <#if is_post??>
        <a href="#" class="social-share-icon views">
            <svg aria-hidden="true" focusable="false" data-prefix="fab" data-icon="readme" class="svg-inline--fa fa-readme fa-w-18" role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 576 512"><path fill="currentColor" d="M528.3 46.5H388.5c-48.1 0-89.9 33.3-100.4 80.3-10.6-47-52.3-80.3-100.4-80.3H48c-26.5 0-48 21.5-48 48v245.8c0 26.5 21.5 48 48 48h89.7c102.2 0 132.7 24.4 147.3 75 .7 2.8 5.2 2.8 6 0 14.7-50.6 45.2-75 147.3-75H528c26.5 0 48-21.5 48-48V94.6c0-26.4-21.3-47.9-47.7-48.1zM242 311.9c0 1.9-1.5 3.5-3.5 3.5H78.2c-1.9 0-3.5-1.5-3.5-3.5V289c0-1.9 1.5-3.5 3.5-3.5h160.4c1.9 0 3.5 1.5 3.5 3.5v22.9zm0-60.9c0 1.9-1.5 3.5-3.5 3.5H78.2c-1.9 0-3.5-1.5-3.5-3.5v-22.9c0-1.9 1.5-3.5 3.5-3.5h160.4c1.9 0 3.5 1.5 3.5 3.5V251zm0-60.9c0 1.9-1.5 3.5-3.5 3.5H78.2c-1.9 0-3.5-1.5-3.5-3.5v-22.9c0-1.9 1.5-3.5 3.5-3.5h160.4c1.9 0 3.5 1.5 3.5 3.5v22.9zm259.3 121.7c0 1.9-1.5 3.5-3.5 3.5H337.5c-1.9 0-3.5-1.5-3.5-3.5v-22.9c0-1.9 1.5-3.5 3.5-3.5h160.4c1.9 0 3.5 1.5 3.5 3.5v22.9zm0-60.9c0 1.9-1.5 3.5-3.5 3.5H337.5c-1.9 0-3.5-1.5-3.5-3.5V228c0-1.9 1.5-3.5 3.5-3.5h160.4c1.9 0 3.5 1.5 3.5 3.5v22.9zm0-60.9c0 1.9-1.5 3.5-3.5 3.5H337.5c-1.9 0-3.5-1.5-3.5-3.5v-22.8c0-1.9 1.5-3.5 3.5-3.5h160.4c1.9 0 3.5 1.5 3.5 3.5V190z"></path></svg>
        </a>
    </#if>
</div>
<link rel="stylesheet" href="//cdn.jsdelivr.net/npm/social-share.js@1.0.16/dist/css/share.min.css">
<script src="//cdn.jsdelivr.net/npm/social-share.js@1.0.16/dist/js/social-share.min.js"></script>
<style>
    <#if is_post??>
    .social-share a {
        border: none !important;
        font-size: 1.4em !important;
    }
    .social-share a svg{
        width: 23px;
    }
    .social-share .views svg {
        color: #7b68ee;
        padding-top: 3px;
        margin-top: 5px;
    }
    .social-share .views:after{
        content: '${post.visits}';
        position: absolute;
        top: -11px;
        left: -15px;
        font-size: 0.3em;
        background-color: #cfc8f9;
        height: 20px;
        border-radius: 3px;
        padding: 0;
        line-height: 20px !important;
        padding-left: 5px;
        padding-right: 5px;
    }
    .social-share .views:hover,
    .social-share .views:hover{
        background-color: #7b68ee;
    }
    .social-share .views:hover:after  {
        background-color: #947bc0;
    }
    .social-share .views:hover svg {
        color: white;
    }
    </#if>

</style>