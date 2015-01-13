{load_presentation_object filename='productShow' assign='obj'}
<h2 dir="rtl" class="text-right border-bottom"> {$obj->type_name} در {$obj->persian_name}</h2>
		{section name=i loop=$obj->result}
        <div class="col-md-4">
            <div class="content">
            	<img class="content-tag" src="{$obj->site_address}view/front/images/tag.png" style="min-height:0">
                <img class="off-tag" src="http://barincard.com/view/front/images/off.png" style="min-height:0">
                {if $obj->result[i].name}
                			<div class="content-img" style="position:relative;">
                            <div class="content-hover" style=" position:absolute;">
                                <div class="caption text-center"><p>{$obj->result[i].center_name}</p>
                                    <div class="text-center"><a class="btn btn-primary btn-lg" href="{$obj->site_address}{$obj->latin_name}/{$obj->result[i].type_id}/{$obj->result[i].item_id}/">مشاهده</a></div>
                                    
                                </div>
                            </div>
                			<img width="400" height="200" src="{$obj->site_address}view/front/images/centers/{$obj->city}/{$obj->result[i].name}" class="img-responsive"></div>
                {else}
                            <img src="{$obj->site_address}view/front/images/no_image.jpg" class="img-responsive">
                 {/if}
                <h4 class="text-right">{$obj->result[i].center_name}</h4>
                <p class="price" dir="rtl">{$obj->result[i].discount} %</p>
                <a href="{$obj->site_address}{$obj->latin_name}/{$obj->result[i].type_id}/{$obj->result[i].item_id}/"> مشاهده </a>
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