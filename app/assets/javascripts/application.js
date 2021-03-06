// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require rails-ujs
//= require activestorage
//= jquery
//= require turbolinks
//= require_tree .


document.addEventListener("turbolinks:load", function() {
  $('#dropdown-admin').css("display", "none");
  $('#dropdown-moderator').css("display", "none");
  if($('.notice').text() == ""){
    $('.notice').css("display", "none");
  };

  $("#dropdownclose").click(function(event) {
         event.preventDefault();
      $('#dropdown-admin').fadeOut("slow");
      $('#dropdown-moderator').fadeOut("slow");
});

  $(".verifybutton-moderator").click(function(event) {
         event.preventDefault();
      $('#dropdown-moderator').fadeIn("slow");
});

$(".verifybutton-admin").click(function(event) {
       event.preventDefault();
    $('#dropdown-admin').fadeIn("slow");
});

  $(".notice").delay(5000).fadeOut('slow');
});
