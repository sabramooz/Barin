{load_presentation_object filename='main' assign='obj'}
<h2 class="text-center">پیشنهادهای امروز</h2>
		{section name=i loop=$obj->result}
        <div class="col-md-4">
            <div class="content">
                <img src="http://localhost/barin/view/front/images/logo.jpg" class="img-responsive">
                <h4 class="text-right">{$obj->result[i].center_name}</h4>
                <p class="price" dir="rtl">{$obj->result[i].discount} درصد تخفیف</p>
            </div>
        </div>
		{/section}
        
        <div class="clearfix"></div>
        
        <hr>
        <h2 class="text-right">رفاهی</h2>
        <div class="col-md-4">
            <div class="content">
                <img src="http://localhost/barin/view/front/images/logo.jpg" class="img-responsive">
                <h4 class="text-right">عنوان</h4>
                <p class="price" dir="rtl"><del>5000 تومان</del> / 1000 تومان</p>
            </div>
        </div>
        <div class="col-md-4">
            <div class="content">
                <img src="http://localhost/barin/view/front/images/logo.jpg" class="img-responsive">
                <h4 class="text-right">عنوان</h4>
                <p class="price" dir="rtl"><del>5000 تومان</del> / 1000 تومان</p>
            </div>
        </div>
        <div class="col-md-4">
            <div class="content">
                <img src="http://localhost/barin/view/front/images/logo.jpg" class="img-responsive">
                <h4 class="text-right">عنوان</h4>
                <p class="price" dir="rtl"><del>5000 تومان</del> / 1000 تومان</p>
            </div>
        </div>
        
        <div class="clearfix"></div>
        <hr><!-- MODAL -->
<div class="modal fade bs-example-modal-lg" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
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
                    <img src="http://localhost/barin/view/front/images/logo.jpg" class="img-responsive">
                    <h4 class="text-right">عنوان</h4>
                    <p class="price" dir="rtl"><del>5000 تومان</del> / 1000 تومان</p>
                </div>
            </div>
            <div class="col-md-3">
                <div class="content">
                    <img src="http://localhost/barin/view/front/images/logo.jpg" class="img-responsive">
                    <h4 class="text-right">عنوان</h4>
                    <p class="price" dir="rtl"><del>5000 تومان</del> / 1000 تومان</p>
                </div>
            </div>
            <div class="col-md-3">
                <div class="content">
                    <img src="http://localhost/barin/view/front/images/logo.jpg" class="img-responsive">
                    <h4 class="text-right">عنوان</h4>
                    <p class="price" dir="rtl"><del>5000 تومان</del> / 1000 تومان</p>
                </div>
            </div>
            <div class="col-md-3">
                <div class="content">
                    <img src="http://localhost/barin/view/front/images/logo.jpg" class="img-responsive">
                    <h4 class="text-right">عنوان</h4>
                    <p class="price" dir="rtl"><del>5000 تومان</del> / 1000 تومان</p>
                </div>
            </div>
        </div>
        <div class="text-center">
        	<img src="http://localhost/barin/view/front/images/featured.png">
        </div>
      </div>
      <div class="clearfix"></div>
      <div class="modal-footer">
        <button type="button" class="btn btn-danger" data-dismiss="modal">بستن</button>
      </div>
    </div>
  </div>
</div>