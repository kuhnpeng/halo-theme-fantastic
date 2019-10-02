<#include "./layout/common/navbar.ftl">
<!DOCTYPE html>
<html lang="zh">
<head>
    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1"/>
    <title>${title!}</title>

    <meta name="keywords" content="${keywords!}"/>
    <meta name="description" content="${description!}">
    <meta property="og:type" content="website">
    <meta property="og:title" content="${title!}">
    <meta property="og:site_name" content="${title!}">
    <meta property="og:description" content="${description!}">
    <meta property="og:locale" content="zh">
    <meta property="og:image" content="${user.avatar!}">
    <meta name="twitter:card" content="summary">
    <meta name="twitter:title" content="${title!}">
    <meta name="twitter:description" content="${description!}">
    <meta name="twitter:image" content="${user.avatar!}">

    <link rel="canonical" href="${canonical!}"/>

    <link rel="alternative" href="${context!}/atom.xml" title="${options.blog_title!}" type="application/atom+xml">

    <@global.head />

    <link rel="stylesheet" href="//cdn.jsdelivr.net/npm/bulma@0.7.5/css/bulma.min.css">
    <link rel="stylesheet" href="//use.fontawesome.com/releases/v5.4.1/css/all.css">
    <#--        <link rel="stylesheet" href="//fonts.proxy.ustclug.org/css?family=Ubuntu:400,600|Source+Code+Pro">-->
    <link rel="stylesheet" href="//cdn.jsdelivr.net/npm/highlight.js@9.12.0/styles/atom-one-light.css">

    <style>
        body > .footer,
        body > .navbar,
        body > .section {
            opacity: 0
        }
    </style>

    <#if is_post?? || is_sheet??>
        <style>
            .content code .number {
                background-color: transparent;
                border-radius: 0;
                display: unset;
                font-size: .85em;
                margin-right: 0;
                padding: 0;
                vertical-align: unset;
            }
        </style>
    </#if>
    <link rel="stylesheet"
          href="//cdn.jsdelivr.net/npm/outdatedbrowser@1.1.5/outdatedbrowser/outdatedbrowser.min.css">

    <script src="//cdn.jsdelivr.net/npm/pace-js@1.0.2/pace.min.js"></script>

    <link rel="stylesheet" href="${static!}/source/css/style.css">
    <link rel="stylesheet" href="${static!}/source/css/bundle.css">
    <link rel="stylesheet" href="${static!}/source/css/back-to-top.css">

    <#if post??>
        <link rel="stylesheet" type="text/css"
              href="${static!}/source/lib/prism/css/prism-${settings.code_pretty!'Default'}.css"/>
        <script type="text/javascript" src="${static!}/source/lib/prism/js/prism.js"></script>
    </#if>
    <#if is_index??>
        <link rel="stylesheet" href="${static!}/source/css/widget_pin.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/Swiper/4.3.5/css/swiper.min.css">
    </#if>
</head>
<body class="is-3-column">
<@navbar 'page' />
<section class="section">
    <div class="container">
        <div class="columns is-mobile is-4-tablet is-1-desktop is-1-widescreen is-6-fullhd is-centered">
            <@photoTag method="list">
                <div class="column is-2-column " style="padding: 30px">
                    <a href="">
                        <#list photos as photo>
                            <img src="${photo.thumbnail}" alt="">
                        </#list>
                    </a>
                </div>
            </@photoTag>

        </div>
    </div>
</section>
<#include "./layout/common/footer.ftl">
<#include "./layout/common/scripts.ftl">
<#include "./layout/search/local.ftl">
</body>
</html>
