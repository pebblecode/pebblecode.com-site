(function(e,t,n){var r,i;e.uaMatch=function(e){e=e.toLowerCase();var t=/(chrome)[ \/]([\w.]+)/.exec(e)||/(opera)(?:.*version|)[ \/]([\w.]+)/.exec(e)||/(webkit)[ \/]([\w.]+)/.exec(e)||/(msie) ([\w.]+)/.exec(e)||e.indexOf("compatible")<0&&/(mozilla)(?:.*? rv:([\w.]+)|)/.exec(e)||[];return{browser:t[1]||"",version:t[2]||"0"}},r=e.uaMatch(t.navigator.userAgent),i={},r.browser&&(i[r.browser]=!0,i.version=r.version),i.chrome||i.opera&&parseFloat(i.version)>12.14?i.webkit=!0:i.webkit&&(i.safari=!0),e.browser=i})(jQuery,window);