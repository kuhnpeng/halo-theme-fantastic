<#macro layout title,canonical>
    <#include "common/navbar.ftl">
    <#include "common/widget.ftl">
    <#include "common/module.ftl">
    <!DOCTYPE html>
    <html lang="zh">
    <head>
        <meta charset="utf-8"/>
        <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1"/>
        <title>${title!}</title>

        <meta name="keywords" content="${meta_keywords!}"/>
        <meta name="description" content="${meta_description!}">
        <meta property="og:type" content="website">
        <meta property="og:title" content="${title!}">
        <meta property="og:url" content="${canonical}">
        <meta property="og:site_name" content="${title!}">
        <meta property="og:description" content="${meta_description!}">
        <meta property="og:locale" content="zh">
        <meta property="og:image" content="${user.avatar!}">
        <meta name="twitter:card" content="summary">
        <meta name="twitter:title" content="${title!}">
        <meta name="twitter:description" content="${meta_description!}">
        <meta name="twitter:image" content="${user.avatar!}">

        <link rel="canonical" href="${canonical!}"/>

        <link rel="alternative" href="${atom_url!}" title="${blog_title!}" type="application/atom+xml">

        <@global.head />

        <link rel="stylesheet" href="//cdn.jsdelivr.net/npm/bulma@0.7.5/css/bulma.min.css">
        <link rel="stylesheet" href="//cdn.bootcss.com/font-awesome/5.4.1/css/all.css">
        <link href="https://fonts.googleapis.com/css?family=Fira+Sans&display=swap" rel="stylesheet">
        <#--        <link rel="stylesheet" href="//cdn.jsdelivr.net/npm/highlight.js@9.12.0/styles/atom-one-light.css">-->
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

        <#if is_post?? || is_sheet??>
            <link rel="stylesheet" href="//cdn.jsdelivr.net/npm/lightgallery@1.6.8/dist/css/lightgallery.min.css">
            <link rel="stylesheet"
                  href="//cdn.jsdelivr.net/npm/justifiedGallery@3.7.0/dist/css/justifiedGallery.min.css">
        </#if>
        <link rel="stylesheet"
              href="//cdn.jsdelivr.net/npm/outdatedbrowser@1.1.5/outdatedbrowser/outdatedbrowser.min.css">
        <script src="//cdn.jsdelivr.net/npm/pace-js@1.0.2/pace.min.js"></script>

        <link rel="stylesheet" href="${theme_base!}/source/css/style.css">
        <link rel="stylesheet" href="${theme_base!}/source/css/bundle.css">
        <link rel="stylesheet" href="${theme_base!}/source/css/back-to-top.css">
        <#--        <link rel="stylesheet" href="${theme_base!}/source/css/style.theme.css">-->
        <#include "./plugin/style.theme.ftl">
        <#if post??>
        <#--            <link rel="stylesheet" type="text/css"-->
        <#--                  href="${theme_base!}/source/lib/prism/css/prism-${settings.code_pretty!'Default'}.css"/>-->
            <link rel="stylesheet" type="text/css"
                  href="${theme_base!}/source/lib/prism/css/prism.css"/>
            <link rel="stylesheet" type="text/css"
                  href="${theme_base!}/source/lib/prism/css/prism-line-numbers.css"/>
            <script type="text/javascript" src="${theme_base!}/source/lib/prism/js/prism.js"></script>
            <script type="text/javascript" src="${theme_base!}/source/lib/prism/js/prism-line-numbers.js"></script>
        </#if>
        <#if is_index??>
            <link rel="stylesheet" href="${theme_base!}/source/css/widget_pin.css">
            <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/Swiper/4.3.5/css/swiper.min.css">
        </#if>
    </head>
    <body class="is-3-column">
    <@navbar 'page' />
    <div class="card-normal">
        <section class="section">
            <div class="container">
                <div class="columns">
                    <#if post?? >
                        <#if is_post??>
                            <#if settings.share_type !=''>
                                <@module 'share' />
                            </#if>
                            <div class="column is-12-tablet is-8-desktop is-8-widescreen is-8-fullhd has-order-2 column-main">
                                <#nested />
                            </div>
                            <@widget 'right' />
                        <#elseif is_sheet??>
                            <div class="column is-12-tablet is-12-desktop is-12-widescreen is-12-fullhd has-order-2 column-main">
                                <#nested />
                            </div>
                        </#if>
                    <#else >
                        <#if is_index??>
                            <div class="column is-8-tablet is-8-desktop is-9-widescreen is-9-fullhd has-order-2 column-main"
                                 style="margin-left: 10px">
                                <div class="columns">
                                    <div class="column is-12-tablet is-12-desktop is-12-widescreen has-order-2 column-main">
                                        <#--         判断是否已经有置顶文章-->
                                        <#list posts.content as post>
                                            <#if post.topPriority == 1>
                                                <#assign isTop = 'yes'>
                                                <#break>
                                            </#if>
                                        </#list>
                                        <#if isTop??>
                                            <div class="level">
                                                <#--                                        <#include "./common/widget_pin.ftl">-->
                                                <@module 'slider' />
                                            </div>
                                        </#if>
                                        <div class="level is-medium">
                                            <div class="ceta">
                                                <div class="tabs" style="overflow: hidden">
                                                    <ul style="overflow: hidden;border-bottom-style: none">
                                                        <li class="is-active"><a>全部</a></li>
                                                        <@categoryTag method="list">
                                                            <#list categories as category>
                                                                <#if category_index <= 4>
                                                                    <li><a href="${category.fullPath!}" style="text-transform:capitalize">${category.name}</a></li>
                                                                </#if>
                                                            </#list>
                                                        </@categoryTag>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="level">
                                            <div class="columns">
                                                <div class="column is-12-tablet is-12-desktop is-8-widescreen is-8-fullhd has-order-2 column-main">
                                                    <#nested />
                                                </div>
                                                <@widget 'right' />
                                            </div>
                                        </div>

                                    </div>
                                </div>
                            </div>
                            <@widget 'left' />
                        <#else>
                            <div class="column is-12-tablet is-8-desktop is-6-widescreen is-6-fullhd has-order-2  column-main">
                                <#nested />
                            </div>
                            <@widget 'left' />
                            <@widget 'right' />
                        </#if>
                    </#if>
                </div>
            </div>
        </section>
    </div>
    <#include "common/footer.ftl">
    <#include "common/scripts.ftl">
    <#include "search/local.ftl">
    </body>
    </html>
</#macro>
