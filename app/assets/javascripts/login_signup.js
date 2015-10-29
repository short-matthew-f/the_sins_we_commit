$(function () {
  $('img').hover(function () {
    $(this).addClass('dancing');
  }, function () {
    $(this).removeClass('dancing');
  });
});
