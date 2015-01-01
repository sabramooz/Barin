{load_presentation_object filename='main' assign='obj'}
<h2 class="text-center">پیشنهادهای امروز</h2>
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
        <hr>
        
        <h2 class="text-right">خدمات رفاهی</h2>
        {section name=i loop=$obj->refahi}
        <div class="col-md-4">
            <div class="content">
                <img src="{$obj->site_address}view/front/images/logo.jpg" class="img-responsive">
                <h4 class="text-right">{$obj->refahi[i].center_name}</h4>
                <p class="price" dir="rtl">{$obj->refahi[i].discount} درصد تخفیف</p>
            </div>
        </div>
		{/section}
        <div class="clearfix"></div>
        <hr>
        
        <h2 class="text-right">خدمات پزشکی</h2>
        {section name=i loop=$obj->pezeshki}
        <div class="col-md-4">
            <div class="content">
                <img src="{$obj->site_address}view/front/images/logo.jpg" class="img-responsive">
                <h4 class="text-right">{$obj->pezeshki[i].center_name}</h4>
                <p class="price" dir="rtl">{$obj->pezeshki[i].discount} درصد تخفیف</p>
            </div>
        </div>
		{/section}
        <div class="clearfix"></div>
        <hr>
        
        <h2 class="text-right">خدمات خرید کالا</h2>
        {section name=i loop=$obj->kharidkala}
        <div class="col-md-4">
            <div class="content">
                <img src="{$obj->site_address}view/front/images/logo.jpg" class="img-responsive">
                <h4 class="text-right">{$obj->kharidkala[i].center_name}</h4>
                <p class="price" dir="rtl">{$obj->kharidkala[i].discount} درصد تخفیف</p>
            </div>
        </div>
		{/section}
        <div class="clearfix"></div>
        <hr>
        
        
        <!-- MODAL -->
<div class="modal fade bs-example-modal-lg" id="{$obj->modal}" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
  <div class="modal-dialog modal-lg">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h2 class="modal-title text-center" id="myModalLabel" dir="rtl">تا ۹۰٪ تخفیف بگیرید!</h2>
      </div>
      <div class="modal-body" dir="rtl">
        <p>barincard.ir  تنها پرتال استثنایی در ایران می باشد که به شما اجازه دسترسی به بهترین پیشنهادات در سطح شهر را می دهد. مواردی از قبیل سلامتی، ورزش رستوران ها و بسیار بیشتر... </p>
        <p>برای اطلاع از برین کارت ‌های روزانه ایمیل خود را وارد کنید</p>
        <div>
        	<form class="form-inline">
            	<input type="email" class="form-control" placeholder="ایمیل خود را وارد کنید"><input type="submit" class="btn btn-success" value="ثبت">
            </form>
        </div>
        <hr>
        <div>
        	<div class="col-md-3">
                <div class="content">
                    <img src="{$obj->site_address}view/front/images/logo.jpg" class="img-responsive">
                    <h4 class="text-right">عنوان</h4>
                    <p class="price" dir="rtl"><del>5000 تومان</del> / 1000 تومان</p>
                </div>
            </div>
            <div class="col-md-3">
                <div class="content">
                    <img src="{$obj->site_address}view/front/images/logo.jpg" class="img-responsive">
                    <h4 class="text-right">عنوان</h4>
                    <p class="price" dir="rtl"><del>5000 تومان</del> / 1000 تومان</p>
                </div>
            </div>
            <div class="col-md-3">
                <div class="content">
                    <img src="{$obj->site_address}view/front/images/logo.jpg" class="img-responsive">
                    <h4 class="text-right">عنوان</h4>
                    <p class="price" dir="rtl"><del>5000 تومان</del> / 1000 تومان</p>
                </div>
            </div>
            <div class="col-md-3">
                <div class="content">
                    <img src="{$obj->site_address}view/front/images/logo.jpg" class="img-responsive">
                    <h4 class="text-right">عنوان</h4>
                    <p class="price" dir="rtl"><del>5000 تومان</del> / 1000 تومان</p>
                </div>
            </div>
        </div>
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