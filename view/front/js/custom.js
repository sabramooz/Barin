/**
 * Created by Amir on 12/23/2014.
 */
/* http://keith-wood.name/countdown.html
 Persian (فارسی) initialisation for the jQuery countdown extension
 Written by Alireza Ziaie (ziai@magfa.com) Oct 2008.
 Digits corrected by Hamed Ramezanian Feb 2013. */
(function($) {
    $.countdown.regionalOptions['fa'] = {
        labels: ['‌سال', 'ماه', 'هفته', 'روز', 'ساعت', 'دقیقه', 'ثانیه'],
        labels1: ['سال', 'ماه', 'هفته', 'روز', 'ساعت', 'دقیقه', 'ثانیه'],
        compactLabels: ['س', 'م', 'ه', 'ر'],
        whichLabels: null,

        timeSeparator: ':', isRTL: true};
    $.countdown.setDefaults($.countdown.regionalOptions['fa']);
})(jQuery);





$(function () {
        var newYear = new Date(); 
		newYear = new Date(2015, 2, 21, 2, 15); 
		$('#defaultCountdown').countdown({until: newYear});
        $('#year').text(austDay.getFullYear());
    });
	
$('#myModal').modal('toggle')


