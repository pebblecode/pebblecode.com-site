window._mapsLoaded=$.Deferred(),window.gmapsLoaded=function(){delete window.gmapsLoaded,_mapsLoaded.resolve()},define(["http://maps.google.com/maps/api/js?v=3&sensor=false&callback=gmapsLoaded"],function(e){return window._mapsLoaded.done});