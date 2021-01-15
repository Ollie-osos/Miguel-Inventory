
// fade in #back-top
$(window).scroll(function () {
  if ($(window).scrollTop() > 300) {
    $('#back-top').fadeIn();
  }
  else {
    $('#back-top').fadeOut();
  }
});

$(function() {
    // back to top button
  // hide #back-top first
  $("#back-top").hide();

  // scroll body to 0px on click
  $('#back-top a').click(function () {
    $('body,html').animate({
      scrollTop: 0
    }, 800);
    return false;
  });
  $('body').fadeTo(300, 1);  

  $('#menu-icon').click(function (){
    $('#menu-icon').toggleClass('open');
    $('#main-menu').toggleClass('is-open');
  })
  
});

