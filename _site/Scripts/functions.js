// To make images retina, add a class "2x" to the img element
// and add a <image-name>@2x.png image. Assumes jquery is loaded.

function isRetina() {
	var mediaQuery = "(-webkit-min-device-pixel-ratio: 1.5),\
 (min--moz-device-pixel-ratio: 1.5),\
 (-o-min-device-pixel-ratio: 3/2),\
 (min-resolution: 1.5dppx)";

 if (window.devicePixelRatio > 1)
  return true;

if (window.matchMedia && window.matchMedia(mediaQuery).matches)
  return true;

return false;
};


function retina() {

	if (!isRetina())
		return;

	$("img.2x").map(function(i, image) {

		var path = $(image).attr("src");

		path = path.replace(".png", "@2x.png");
		path = path.replace(".jpg", "@2x.jpg");

		$(image).attr("src", path);
	});
};

$(document).ready(retina);

// Nav
$(document).ready(function(){
  console.log('Window Height is: ' + $(window).height());
  console.log('Document Height is: ' + $(document).height());
  var previousScroll = 0;
  function hideNav() {
    $("[data-nav-status='toggle']").removeClass("show").addClass("hide");
  }
  function showNav() {
    $("[data-nav-status='toggle']").removeClass("hide").addClass("show");
  }
  function top() {
    $("[data-nav-status='toggle']").removeClass("hide").removeClass("show");
  }
  $(window).scroll(function(){
    var currentScroll = $(this).scrollTop();
         /*
          If the current scroll position is greater than 0 (the top) AND the current scroll position is less than the document height minus the window height (the bottom) run the navigation if/else statement.
          */
          if (currentScroll > 10 && currentScroll < $(document).height() - $(window).height()){
          /*
            If the current scroll is greater than the previous scroll (i.e we're scrolling down the page), hide the nav.
            */
            if (currentScroll > previousScroll){
              window.setTimeout(hideNav, 50);
          /*
            Else we are scrolling up (i.e the previous scroll is greater than the current scroll), so show the nav.
            */
          } if (currentScroll < (previousScroll - 40)) {
            window.setTimeout(showNav, 50);
          }
          /*
            Set the previous scroll value equal to the current scroll.
            */
            previousScroll = currentScroll;
          }
          if (currentScroll < 1) {
            window.setTimeout(top, 50);
          }
        });
});
