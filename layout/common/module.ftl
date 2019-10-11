<#macro module name>
    <#if name == 'share'>
        <div class="column is-4-tablet is-1-desktop <#if is_sheet??>is-hidden-desktop</#if> is-1-widescreen is-1-fullhd  has-order-1 column-left is-hidden-touch <%= sticky_class(left) %>">
            <div class="level">
<#--                <a href="#" style="display: block;background: #fff6;width: 30px;height: 30px;border-radius:50px;line-height: 30px;text-align: center;box-shadow: 0 2px 4px 0 rgba(0,0,0,.04);color: #333">-->
<#--                    <i class="fas fa-eye"></i>-->
<#--                </a>-->
            </div>
            <div class="level"></div>
            <div class="level"></div>
            <div class="level">
                <#if settings.share_type?? && settings.share_type!=''>
                    <#include "../share/${settings.share_type}.ftl">
                </#if>
            </div>
        </div>
    </#if>
    <#if name == 'slider'>
        <div class="blog-slider card">
            <div class="blog-slider__wrp swiper-wrapper">
                <#list posts.content as post>
                    <#if post.topPriority == 1>
                        <div class="blog-slider__item swiper-slide">
                            <div class="blog-slider__img">
                                <a href="${context!}/archives/${post.url!}">
                                    <img src="${post.thumbnail!}"
                                         alt="${post.title!}">
                                </a>
                            </div>
                            <div class="blog-slider__content">
                                <span class="blog-slider__code">${post.createTime?string["EEE MMM d"]}</span>
                                <div class="blog-slider__title title is-5">${post.title!}</div>
                                <div class="blog-slider__text" content="">${post.summary!}</div>
                                <a href="${context!}/archives/${post.url!}" class="blog-slider__button">阅读更多</a>
                            </div>
                        </div>
                    </#if>
                </#list>
            </div>
            <div class="blog-slider__pagination"></div>
        </div>

        <!-- partial -->
        <script src='https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js'></script>
        <script src='https://cdnjs.cloudflare.com/ajax/libs/Swiper/4.3.5/js/swiper.min.js'></script>
    </#if>
</#macro>
