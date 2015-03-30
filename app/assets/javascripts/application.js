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
//= require jquery_ujs
//= require bootstrap-sprockets
//= require masonry/jquery.masonry
//= require isotope/jquery.isotope
//= require_tree .

 $(document).ready(function() {
    $('#carousel-example-generic .carousel-inner > .item:first').addClass('active');

 });

  $(document).ready(function() {
       // init Isotope
    var $container = $('#container').isotope({
      // options
      
    });

    // filter items on button click
    $('#filters').on( 'click', 'button', function() {
      var filterValue = $(this).attr('data-filter');
      console.log(filterValue);
      console.log(this);
      $container.isotope({ filter: filterValue });
    });

   $('#test').click(function() {
      console.log("test");
    });

});






 