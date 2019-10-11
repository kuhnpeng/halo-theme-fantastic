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
    <link rel="stylesheet" href="//cdn.jsdelivr.net/npm/highlight.js@9.12.0/styles/atom-one-light.css">
    <link rel="stylesheet" href="${static!}/source/css/style.dark.css">


    <link rel="stylesheet"
          href="//cdn.jsdelivr.net/npm/outdatedbrowser@1.1.5/outdatedbrowser/outdatedbrowser.min.css">

    <#--    <script src="//cdn.jsdelivr.net/npm/pace-js@1.0.2/pace.min.js"></script>-->

    <link rel="stylesheet" href="${static!}/source/css/style.css">
    <link rel="stylesheet" href="${static!}/source/css/bundle.css">
    <link rel="stylesheet" href="${static!}/source/css/back-to-top.css">
    <link rel="stylesheet" href="${static!}/source/lib/lg/css/lightgallery.css">
</head>
<body class="is-3-column">
<@navbar 'page' />
<section class="section photos">
    <div class="container" id="aniimated-thumbnials">
        <@photoTag method="listTeams">
            <#list teams as item>
                <h3 class="level title is-3">${item.team}</h3>
                <div class="columns
        is-mobile is-4-tablet is-1-desktop is-1-widescreen is-6-fullhd
         columns is-mobile is-multiline " >
                    <#list item.photos as photo>
                        <div class="column is-one-quarter aniimated-thumbnials">
                            <a href="${photo.url}" class="show">
                                <img src="${photo.thumbnail}" alt="">
                            </a>
                        </div>
                    </#list>
                </div>
            </#list>
        </@photoTag>
    </div>
</section>
<#include "./layout/common/footer.ftl">
<#include "./layout/plugin/back-to-top.ftl">

</body>
<script src="${static!}/source/lib/lg/js/lightgallery.min.js"></script>
<script src="${static!}/source/lib/lg/js/lg-thumbnail.min.js"></script>
<script src="${static!}/source/lib/lg/js/lg-fullscreen.min.js"></script>
<script>
    var lg = document.getElementById('aniimated-thumbnials');
    lightGallery(lg, {
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
</script>
<style>
    #aniimated-thumbnials a {
        display: block;
        padding: 1rem;
        border-radius: 2px;
    }

    #aniimated-thumbnials a {
        height: 100%;
    }

    #aniimated-thumbnials a:hover img {
        transform: scale(1.01);
    }

    #aniimated-thumbnials a img {
        width: 100%;
        height: 100%;
        object-fit: cover;
        border-radius: 2px;
    }
    .photos .container  {
        padding: 1rem;
    }
</style>
</html>
