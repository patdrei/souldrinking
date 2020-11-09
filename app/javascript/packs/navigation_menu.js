 const toggleButton = $('.menu-toggle'),
   nav = $('.main-navigation');

 // toggle button
 toggleButton.on('click', function(e) {

  e.preventDefault();
  toggleButton.toggleClass('is-clicked');
  nav.slideToggle();

});

 // nav items
  nav.find('li a').on("click", function() {

  // update the toggle button
  toggleButton.toggleClass('is-clicked');
  // fadeout the navigation panel
  nav.fadeOut();

  });

export { toggleButton };
