require.config({
  shim: {
    jquery: {
      exports: "$"
    },
    underscore: {
      exports: "_"
    },
    "underscore.string": {
      exports: "_s",
      deps: ["underscore"]
    },
    backbone: {
      exports: "Backbone",
      deps: ["underscore"]
    },
    "jquery.isotope": {
      deps: ["jquery"],
      exports: "jQuery.fn.isotope"
    },
    "jquery.slides": {
      deps: ["jquery"],
      exports: "jQuery.fn.slides"
    },
    "jquery.qtip": {
      deps: ["jquery"],
      exports: "jQuery.fn.qtip"
    }
  },
  paths: {
    shared: "app/shared",

    jquery: "vendor/jquery",
    underscore: "vendor/underscore",
    "underscore.string": "vendor/underscore.string",
    backbone: "vendor/backbone",

    urlHandler: "app/lib/url-handler",
    gmaps: "app/lib/gmaps",

    "jquery.isotope": "vendor/isotope",
    "jquery.isotope.center": "vendor/isotope.center",
    "jquery.scrollTo": "vendor/jquery.scrollTo",
    "jquery.slides": "vendor/jquery.slides"
  }
});

require([
  "shared/random-colors"
  //"shared/footer" // Not showing map on all pages right now
], function(randomColors) {
  "use strict";

  randomColors.init();
});