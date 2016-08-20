$(document).ready(function() {
  var timer;

  $('.start-button').on('click', function(e) {
    e.preventDefault();

    var durationInMinutes = $(this).attr('data');

    // Convert duration to milliseconds
    var durationInMilliseconds = durationInMinutes * 60 * 1000;

    timer = setTimeout(function() { alert("Mindfulness finished"); }, durationInMilliseconds);
  });

  $('.stop-button').on('click', function(e) {
    e.preventDefault();
    clearTimeout(timer);
  });
});