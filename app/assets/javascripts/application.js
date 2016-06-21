// This is a manifest file that'll be compiled into application.js, which will
// include all the files listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts,
// vendor/assets/javascripts, or vendor/assets/javascripts of plugins, if any,
// can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at
// the bottom of the compiled file.
//
// Read Sprockets README
// (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require lightbox
//= require turbolinks
//= require_tree .

$(document).ready(function() {
  $("img").error(function() {
  $(this).hide();
  });
});

// CODE FOR ORIGINAL CARD FLIP FUNCTIONALITY

// $(document).ready(function() {
//   flip();
//   // update();
//   // $('#updates').append($('.new-update');
// });

// var flip = function() {
//     var card = $('#card');
//     card.on ('click', function() {
//       card.toggleClass('flipped');
//   });
// };






