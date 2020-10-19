<#include "./layout/common/navbar.ftl">
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
    <#include "layout/plugin/style.theme.ftl">


    <link rel="stylesheet"
          href="//cdn.jsdelivr.net/npm/outdatedbrowser@1.1.5/outdatedbrowser/outdatedbrowser.min.css">

    <link rel="stylesheet" href="${theme_base!}/source/css/style.css">
    <link rel="stylesheet" href="${theme_base!}/source/css/bundle.css">
    <link rel="stylesheet" href="${theme_base!}/source/css/back-to-top.css">
    <link rel="stylesheet" href="${theme_base!}/source/lib/lg/css/lightgallery.css">
</head>
<body class="is-3-column">
<@navbar 'page' />
<section class="section photos">
    <@photoTag method="listTeams">
        <#list teams as item>
            <h3 class="level title is-3">${item.team}</h3>
            <div class="columns is-multiline"  id="view_${item.team}">
                <#list item.photos as photo>
                    <div class="column is-one-quarter-desktop is-half-tablet">
                        <div class="card" style="height: 100%">
                            <div class="card-image">
                                <figure class="image">
                                    <a href="${photo.url}" class="show" >
                                        <img src="${photo.thumbnail}" alt="" >
                                    </a>
                                </figure>
<#--                                <div class="card-content is-overlay is-clipped">-->
<#--                                    <span class="tag is-info">-->
<#--                                    ${photo.name}-->
<#--                                    </span>-->
<#--                                </div>-->
                            </div>
<#--                            <footer class="card-footer">-->
<#--                                <a class="card-footer-item">-->
<#--                                    ${photo.name}-->
<#--                                </a>-->
<#--                            </footer>-->
                        </div>
                    </div>
                </#list>
            </div>
        </#list>

    </@photoTag>
</section>
<#include "./layout/common/footer.ftl">
<#include "./layout/plugin/back-to-top.ftl">

</body>
<script src="${theme_base!}/source/lib/lg/js/lightgallery.min.js"></script>
<script src="${theme_base!}/source/lib/lg/js/lg-thumbnail.min.js"></script>
<script src="${theme_base!}/source/lib/lg/js/lg-fullscreen.min.js"></script>
<script>
    var views = []
    <@photoTag method="listTeams">
    <#list teams as item>
        views.push('view_${item.team}')
    </#list>
    </@photoTag>
    views.forEach(function (value) {
        var lg = document.getElementById((value));
        lightGallery(document.getElementById((value)), {
            mode: 'lg-slide',
            cssEasing: 'ease',
            speed: 500,
            thumbnail: true,
            animateThumb: true,
            showThumbByDefault: true,
            autoplay: true,
            progressBar: true,
            selector: '.show'
        });
    })

</script>
<style>
    .card {
        height: 100%;
    }
    .card-image {
        height: 100%;
    }

    .image {
        height: 100%;
        padding: 5px;
    }
    .image img{
        height: 100%;
    }
    #animated-thumbnail a {
        display: block;
        padding: 5px;
        border-radius: 2px;
    }

    #animated-thumbnail a {
        height: 100%;
    }

    #animated-thumbnail a:hover img {
        transform: scale(1.01);
    }

    #animated-thumbnail a img {
        width: 100%;
        height: 100%;
        object-fit: cover;
        border-radius: 2px;
    }
</style>
</html>
