!function(t){var e={};function n(i){if(e[i])return e[i].exports;var r=e[i]={i:i,l:!1,exports:{}};return t[i].call(r.exports,r,r.exports,n),r.l=!0,r.exports}n.m=t,n.c=e,n.d=function(t,e,i){n.o(t,e)||Object.defineProperty(t,e,{enumerable:!0,get:i})},n.r=function(t){"undefined"!=typeof Symbol&&Symbol.toStringTag&&Object.defineProperty(t,Symbol.toStringTag,{value:"Module"}),Object.defineProperty(t,"__esModule",{value:!0})},n.t=function(t,e){if(1&e&&(t=n(t)),8&e)return t;if(4&e&&"object"==typeof t&&t&&t.__esModule)return t;var i=Object.create(null);if(n.r(i),Object.defineProperty(i,"default",{enumerable:!0,value:t}),2&e&&"string"!=typeof t)for(var r in t)n.d(i,r,function(e){return t[e]}.bind(null,r));return i},n.n=function(t){var e=t&&t.__esModule?function(){return t.default}:function(){return t};return n.d(e,"a",e),e},n.o=function(t,e){return Object.prototype.hasOwnProperty.call(t,e)},n.p="/",n(n.s=0)}([function(t,e,n){n(1),t.exports=n(2)},function(t,e,n){"use strict";function i(t,e){for(var n=0;n<e.length;n++){var i=e[n];i.enumerable=i.enumerable||!1,i.configurable=!0,"value"in i&&(i.writable=!0),Object.defineProperty(t,i.key,i)}}n.r(e);var r=function(){function t(){!function(t,e){if(!(t instanceof e))throw new TypeError("Cannot call a class as a function")}(this,t),this.setVars()&&this.setEvents()}var e,n,r;return e=t,(n=[{key:"setVars",value:function(){if(this.notice=document.querySelector(".notice[data-notice=acf-better-search]"),this.notice)return this.settings={isHidden:!1,ajaxUrl:this.notice.getAttribute("data-url")},!0}},{key:"setEvents",value:function(){window.addEventListener("load",this.getButtons.bind(this))}},{key:"getButtons",value:function(){this.buttonClose=this.notice.querySelector(".notice-dismiss"),this.buttonPermanently=this.notice.querySelector("[data-permanently]"),this.setButtonsEvents()}},{key:"setButtonsEvents",value:function(){var t=this;this.buttonClose.addEventListener("click",function(){t.hideNotice(!1)}),this.buttonPermanently.addEventListener("click",function(e){e.preventDefault(),t.hideNotice(!0)})}},{key:"hideNotice",value:function(t){this.settings.isHidden||(this.settings.isHidden=!0,jQuery.ajax(this.settings.ajaxUrl,{type:"POST",data:{is_permanently:t?1:0}}),this.buttonClose.click())}}])&&i(e.prototype,n),r&&i(e,r),t}();new function t(){!function(t,e){if(!(t instanceof e))throw new TypeError("Cannot call a class as a function")}(this,t),new r}},function(t,e){}]);