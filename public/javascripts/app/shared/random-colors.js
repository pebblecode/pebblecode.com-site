/*
 * Show random colours on the website
 *
 * @return {Object} obj.init() initialises random colours
 */
define([
  "jquery",
  "underscore"
], function($, _) {
  "use strict";

  var COLORS = [ 'pink', 'green', 'blue', 'orange', 'aqua', 'purple' ];
  var LAST_COLOR = COLORS[0];

  // Find random colors, without having the same colors after another
  function randColors(elem, funct) {
    $(elem).each(function() {
      funct(this, LAST_COLOR);
      LAST_COLOR = randArrayItemExcept(COLORS, LAST_COLOR);
    });
  }

  function randArrayItem(array) {
    var randIndex = Math.floor(Math.random() * array.length);
    return array[randIndex];
  }

  function randArrayItemExcept(array, exceptItem) {
    return randArrayItem(_.without(array, exceptItem));
  }

  function init() {
    randColors('.background-random', function(obj, randColor) {
      $(obj).addClass(randColor + "-background");
    });

    randColors('.case-study', function(obj, randColor) {
      $("h2, h3", obj).addClass(randColor);
      $("hr, .img", obj).addClass(randColor + "-background");
    });

    randColors('.blog-post', function(obj, randColor) {
      $("h2, h3, h4, a", obj).addClass(randColor);
      $(".img, .comments a", obj).addClass(randColor + "-background");
      $(".blog-content", obj).addClass(randColor + "-border");
    });

    randColors('.person', function(obj, randColor) {
      $("h4", obj).addClass(randColor);
      $("h4", obj).attr("data-color", randColor);

      $(".img", obj).addClass(randColor + "-background");
      $(".img", obj).attr("data-color", randColor);
    });

    // Color spotlight person row the same as listing.
    // Only needed in initialisation.
    var spotlightPersonColor = $(".people-list .active h4").attr("data-color"),
      spotlightPerson = $("#spotlight .person-row");
    $(spotlightPerson).find(".name, h3").addClass(spotlightPersonColor);
    $(spotlightPerson).find(".img").addClass(spotlightPersonColor + "-background");
  }

  return {
    init: init
  };
});