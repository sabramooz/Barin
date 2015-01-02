{load_presentation_object filename='productShow' assign='obj'}
<h2 class="text-center"> {$obj->type_name} در {$obj->persian_name}</h2>
		{section name=i loop=$obj->result}
        <div class="col-md-4">
            <div class="content">
                <img src="{if $obj->result[i].image}
                			{$obj->site_address}view/front/images/{$obj->result[i].image}
                           {else}
                            {$obj->site_address}view/front/images/logo.jpg
                           {/if}" class="img-responsive">
                <h4 class="text-right">{$obj->result[i].center_name}</h4>
                <p class="price" dir="rtl">{$obj->result[i].discount} درصد تخفیف</p>
                <a href="{$obj->site_address}{$obj->latin_name}/{$obj->result[i].type_id}/{$obj->result[i].id}/"> مشاهده </a>
            </div>
        </div>
		{/section} 
        <div class="clearfix"></div> 
</div>
<div class="text-center">
{if !empty($obj->output)}
	{$obj->output}
{/if}
</div>