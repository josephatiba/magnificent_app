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


  $(window).load(function() {
    
    $('#carousel-example-generic .carousel-inner > .item:first').addClass('active');

       // init Isotope
    var $container = $('#container').isotope({
      // options
      
    });

    var buttonFilters = document.getElementsByClassName("filter-button");

  

    $(document).ready(function(){
      var filterValue = $(buttonFilters[0]).attr('data-filter');
      console.log(filterValue);
      console.log(this);
      console.log(buttonFilters.length);
      $container.isotope({ filter: filterValue });
      for(i = 0; i < buttonFilters.length; i++) {
        
            $(buttonFilters[i]).removeClass('btn-success');
          
          }
          $(buttonFilters[0]).addClass('btn-success');

    });

    // filter items on button click
    $('#filters').on( 'click', 'button', function() {
      var filterValue = $(this).attr('data-filter');
      console.log(filterValue);
      console.log(this);
      console.log(buttonFilters.length);
      $container.isotope({ filter: filterValue });
      
      // adds greed color to color selected button
      for(i = 0; i < buttonFilters.length; i++) {
        
            $(buttonFilters[i]).removeClass('btn-success');
          
          }
          $(this).addClass('btn-success');

    });


});






 