<#macro navbar layout>
    <nav class="navbar navbar-main">
        <div class="container">
            <div class="navbar-brand is-flex-center">
                <a class="navbar-item navbar-logo" href="${context!}">
                    <#if options.blog_logo?? && options.blog_logo!=''>
                        <img src="${options.blog_logo!}" alt="${options.blog_title!}" height="28">
                    <#else>
                        ${options.blog_title!}
                    </#if>
                </a>
            </div>
            <div class="navbar-menu">
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
                                        <a class="navbar-item" href="${menu.url}" target="${menu.target!}">${menu.name}</a>
                                    </#list>
                                </div>
                            </#if>                        </#if>
                    </#if>
                </@menuTag>
                <div class="navbar-end">
                    <#--                ${settings.links_top!}-->
                    <a class="navbar-item search" title="夜间模式" href="javascript:alert('开发中，敬请期待');">
                        <i class="fas fa-adjust"></i>
                    </a>
                    <a class="navbar-item search" title="文章搜索" onclick="openSearchPanel()" href="javascript:;">
                        <i class="fas fa-search"></i>
                    </a>
                </div>
            </div>
        </div>
    </nav>
    <style>
        .navbar-dropdown {
            /*background-color: #fff;*/
            /*border-bottom-left-radius: 6px;*/
            /*border-bottom-right-radius: 6px;*/
            /*border-top: 2px solid #dbdbdb;*/
            /*box-shadow: 0 1px 2px 0 rgba(0,0,0,0.05);*/
            /*font-size: .875rem;*/
            /*min-width: 100%;*/
            /*position: absolute;*/
            /*top: 100%;*/
            /*z-index: 20;*/
            /*width: 120px;*/
        }
    </style>
</#macro>
