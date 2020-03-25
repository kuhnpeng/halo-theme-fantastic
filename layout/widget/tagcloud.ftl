<@tagTag method="list">
    <#if tags?? && tags?size gt 0>
        <div class="card widget">
            <div class="card-content">
                <h3 class="menu-label">
                    标签云
                </h3>
                <#list tags as tag>
                    <a href="${tag.fullPath!}" style="font-size:<#if tag.name?length gt 7> ${tag.postCount+(tag.name?length)}<#else>${tag.postCount+(tag.name?length)*2}</#if>px">${tag.name!}</a>
                </#list>
            </div>
        </div>
    </#if>
</@tagTag>
