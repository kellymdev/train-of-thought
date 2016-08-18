$(document).ready(function() {
  var timer;

  $('.start-button').on('click', function(e) {
    e.preventDefault();
    timer = setTimeout(function() { alert("Time is up"); }, 3000);
  });

  $('.stop-button').on('click', function(e) {
    e.preventDefault();
    clearTimeout(timer);
  });
});