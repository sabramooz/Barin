{load_presentation_object filename='main' assign='obj'}
<h2 dir="rtl" class="text-right border-bottom"><i class="fa fa-check-square-o" style="color:#66afe9"></i> پیشنهادهای امروز</h2>
<hr>
		{section name=i loop=$obj->result}
        <div class="col-md-4">
            <div class="content">
            	
            <img class="content-tag" src="{$obj->site_address}view/front/images/tag.png" style="min-height:0">
            <img class="off-tag" src="{$obj->site_address}view/front/images/off.png" style="min-height:0">
                {if $obj->result[i].name}
                			<div class="content-img" style="position:relative;">
                            <div class="content-hover" style=" position:absolute;">
                                <div class="caption text-center"><p>{$obj->result[i].center_name}</p>
                                    <div class="text-center"><a class="btn btn-primary btn-lg" href="{$obj->site_address}{$obj->latin_name}/{$obj->result[i].type_id}/{$obj->result[i].item_id}/">مشاهده</a></div>
                                    
                                </div>
                            </div>
                			<img width="400" height="200" src="{$obj->site_address}view/front/images/centers/{$obj->city}/{$obj->result[i].name}" class="img-responsive ">
                            </div>
                {else}
                            <img src="{$obj->site_address}view/front/images/no_image.jpg" class="img-responsive">
                 {/if}
                <h4 class="text-right">{$obj->result[i].center_name}</h4>
                <p class="price" dir="rtl">{$obj->result[i].discount} % </p>
                
            </div>
        </div>
		{/section} 
        <div class="clearfix"></div> 
        <div class="container" style="padding-right:45px"><img src="{$obj->site_address}view/front/images/mobile.jpg" class="img-responsive" alt="mobile" style="border:1px solid #ccc;"></div>
        <div class="clearfix"></div>
        <h2 dir="rtl" class="text-right"><i class="fa fa-cutlery" style="color:#66afe9"></i> خدمات رفاهی</h2>
        <hr>
        {section name=i loop=$obj->refahi}
        <div class="col-md-4">
            <div class="content">
            <img class="content-tag" src="{$obj->site_address}view/front/images/tag.png" style="min-height:0">
            <img class="off-tag" src="{$obj->site_address}view/front/images/off.png" style="min-height:0">
                {if $obj->refahi[i].name}
                			<img src="{$obj->site_address}view/front/images/centers/{$obj->city}/{$obj->refahi[i].name}" class="img-responsive">
                {else}
                            <img src="{$obj->site_address}view/front/images/no_image.jpg" class="img-responsive">
                 {/if}
                <h4 class="text-right">{$obj->refahi[i].center_name}</h4>
                <p class="price" dir="rtl">{$obj->refahi[i].discount} % </p>
                <a href="{$obj->site_address}{$obj->latin_name}/{$obj->refahi[i].type_id}/{$obj->refahi[i].item_id}/"> مشاهده </a>
            </div>
        </div>
		{/section}
        <div class="clearfix"></div>
        
        
        <h2 dir="rtl" class="text-right border-bottom"><i class="fa fa-plus-square" style="color:#66afe9"></i> خدمات پزشکی</h2>
        <hr>
        {section name=i loop=$obj->pezeshki}
        <div class="col-md-4">
            <div class="content">
            <img class="content-tag" src="{$obj->site_address}view/front/images/tag.png" style="min-height:0">
            <img class="off-tag" src="{$obj->site_address}view/front/images/off.png" style="min-height:0">
                {if $obj->pezeshki[i].name}
                			<img src="{$obj->site_address}view/front/images/centers/{$obj->city}/{$obj->pezeshki[i].name}" class="img-responsive">
                {else}
                            <img src="{$obj->site_address}view/front/images/no_image.jpg" class="img-responsive">
                 {/if}
                <h4 class="text-right">{$obj->pezeshki[i].center_name}</h4>
                <p class="price" dir="rtl">{$obj->pezeshki[i].discount} % </p>
                <a href="{$obj->site_address}{$obj->latin_name}/{$obj->pezeshki[i].type_id}/{$obj->pezeshki[i].item_id}/"> مشاهده </a>
            </div>
        </div>
		{/section}
        <div class="clearfix"></div>
        
        
        <h2 dir="rtl" class="text-right border-bottom"><i class="fa fa-shopping-cart" style="color:#66afe9"></i> خدمات خرید کالا</h2>
        <hr>
        {section name=j loop=$obj->kharidkala}
        <div class="col-md-4">
            <div class="content">
            <img class="content-tag" src="{$obj->site_address}view/front/images/tag.png" style="min-height:0">
            <img class="off-tag" src="{$obj->site_address}view/front/images/off.png" style="min-height:0">
                {if $obj->kharidkala[j].name}
                			<img src="{$obj->site_address}view/front/images/centers/{$obj->city}/{$obj->kharidkala[j].name}" class="img-responsive">
                {else}
                            <img src="{$obj->site_address}view/front/images/no_image.jpg" class="img-responsive">
                {/if}
                <h4 class="text-right">{$obj->kharidkala[j].center_name}</h4>
                <p class="price" dir="rtl">{$obj->kharidkala[j].discount} % </p>
                <a href="{$obj->site_address}{$obj->latin_name}/{$obj->kharidkala[j].type_id}/{$obj->kharidkala[j].item_id}/"> مشاهده </a>
            </div>
        </div>
		{/section}
        <div class="clearfix"></div>
        <hr>
        
        
        <!-- MODAL -->
<div class="modal fade " id="{$obj->modal}" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
  <div class="modal-dialog ">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h2 class="modal-title text-center" id="myModalLabel" dir="rtl">تا <span style="color:#fff;font-size:33px;">80٪ </span>تخفیف بگیرید!</h2>
      </div>
      <div class="modal-body" dir="rtl">
        <p>barincard.ir  تنها پرتال استثنایی در ایران می باشد که به شما اجازه دسترسی به بهترین پیشنهادات در سطح شهر را می دهد. مواردی از قبیل سلامتی، ورزش رستوران ها و بسیار بیشتر... </p>
        <p>برای اطلاع از برین کارت ‌های روزانه ایمیل و تلفن همراه خود را وارد کنید</p>
        <div>
        	<form class="form-inline">
            	<input type="email" class="form-control" placeholder="ایمیل خود را وارد کنید">
                <input type="text" class="form-control" placeholder="تلفن همراه خود را وارد کنید">
                <input type="submit" class="btn btn-success" value="مرا مطلع کن">
            </form>
        </div>
        <br>
        <hr>
        
        <div class="text-center">
        	<img src="{$obj->site_address}view/front/images/featured.png">
        </div>
      </div>
      <div class="clearfix"></div>
      <div class="modal-footer">
        <button type="button" class="btn btn-danger" data-dismiss="modal">بستن</button>
      </div>
    </div>
  </div>
</div>