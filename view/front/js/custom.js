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
        var austDay = new Date();
        austDay = new Date(2014, 12, 5);
        $('#defaultCountdown').countdown({until: austDay});
        $('#year').text(austDay.getFullYear());
    });
	
$('#myModal').modal('toggle')


