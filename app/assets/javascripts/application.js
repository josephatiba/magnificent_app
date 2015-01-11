// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require bootstrap-sprockets
//= require masonry.js
//= require jquery_ujs
//= require turbolinks
//= require_tree .

 $(document).ready(function() {
    $('#carousel-example-generic .carousel-inner > .item:first').addClass('active');
 });

var $container = $('#container');
var msnry = $container.data('masonry');
//imagesLoaded is

// initialize
$container.masonry({
  columnWidth: 240,
  itemSelector: '.item'
});

var $container = $('#container').masonry();
// layout Masonry again after all images have loaded
$container.imagesLoaded( function() {
  $container.masonry();
});

$container.masonry('bindResize')

