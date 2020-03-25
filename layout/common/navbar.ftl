<#macro navbar layout>
    <nav class="navbar navbar-main  is-paddingless " >
        <div class="container ">
            <div class="navbar-brand transparent">
                <a class="navbar-item navbar-logo" href="${context!}">
                    <#if blog_logo?? && blog_logo!=''>
                        <img src="${blog_logo!}" alt="${blog_title!}" height="28">
                    <#else>
                        ${blog_title!}
                    </#if>
                </a>
                <span class="navbar-burger burger" data-target="navMenu">
                                <span></span>
                                <span></span>
                                <span></span>
                            </span>
            </div>
            <div id="navMenu" class="navbar-menu transparent">
                <div class="navbar-start transparent">

                    <@menuTag method="tree">
                        <#if menus?? && menus?size gt 0>
                            <#if settings.tree_menu_enable!false>
                                <div class="navbar-start">
                                    <#list menus?sort_by('priority') as menu>
                                        <#if menu.children?? && menu.children?size gt 0>
                                            <div class="navbar-item has-dropdown is-hoverable">
                                                <a class="sub-menu">
                                                    ${menu.name!}
                                                </a>
                                                <div class="navbar-dropdown is-boxed">
                                                    <#list menu.children as child>
                                                        <a class="navbar-item"
                                                           href="${child.url!}">
                                                            ${child.name!}
                                                        </a>
                                                    </#list>

                                                </div>
                                            </div>
                                        <#else>
                                            <a class="navbar-item" href="${menu.url}"
                                               target="${menu.target!}">${menu.name}</a>
                                        </#if>
                                    </#list>

                                </div>
                            <#else>
                                <#if menus?? && menus?size gt 0>
                                    <div class="navbar-start">
                                        <#list menus?sort_by('priority') as menu>
                                            <a class="navbar-item" href="${menu.url}"
                                               target="${menu.target!}">${menu.name}</a>
                                        </#list>
                                    </div>
                                </#if>                        </#if>
                        </#if>
                    </@menuTag>

                </div>
                <div class="navbar-end">
                    <#--                ${settings.links_top!}-->
<#--                    <a class="navbar-item search" title="夜间模式" href="javascript:alert('开发中，敬请期待');">-->
<#--                        <i class="fas fa-adjust"></i>-->
<#--                    </a>-->
                    <a class="navbar-item search" title="文章搜索" onclick="openSearchPanel()" href="javascript:;">
                        <i class="fas fa-search"></i>
                    </a>
                </div>
            </div>
    </nav>
    <style>
    </style>
    <script>
        (function () {
            var burger = document.querySelector('.burger');
            var menu = document.querySelector('#' + burger.dataset.target);
            burger.addEventListener('click', function () {
                burger.classList.toggle('is-active');
                menu.classList.toggle('is-active');
            });

        })();

    </script>
</#macro>
