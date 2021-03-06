define([
  "jquery"
], function(jquery) {
  "use strict";

  // From http://dev.billysbilling.com/blog/The-retina-trifecta-CSS-sprites-IMG-tags-and-SVGs-oh-my
  //
  // JS usage:
  //
  //    retina.init();
  //
  // HTML usage:
  //
  //    <img src=”images/logo.png” data-src2x=”images/logo-2x.png” width=”200” height=”80” />
  //
  return {
    init: function() {
      //Get pixel ratio and perform retina replacement
      //Optionally, you may also check a cookie to see if the user has opted out of (or in to) retina support
      var pixelRatio = !!window.devicePixelRatio ? window.devicePixelRatio : 1;
      if (pixelRatio > 1) {
        $("img").each(function(idx, el){
          el = $(el);
          if (el.attr("data-src2x")) {
            el.attr("data-src-orig", el.attr("src"));
            el.attr("src", el.attr("data-src2x"));
          }
        });
      }
    }
  };
});