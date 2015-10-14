// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require ckeditor/init
//= require_tree .
//= require semantic-ui
//= require jquery-fileupload
//= require mlblog/jquery.datetimepicker/jquery.datetimepicker
	
jQuery(function($){
	
	$('.attached.button').sidebar('setting', 'transition', 'overlay').on('click', function(){
		$('.left.sidebar').sidebar('toggle');
	});
	
});
